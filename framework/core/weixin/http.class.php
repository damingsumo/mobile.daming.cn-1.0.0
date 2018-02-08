<?php
/**
 * SDK通信HTTP类
 * 远程通信必须引入此类
 * @author liu 2014-03-05
 *
 */
class WeiXin_Http {
    public $access_token = 'not_have_access_key_yet';
    public $http_code = '';
    public $uri = '';
    public $host = 'https://api.weixin.qq.com/cgi-bin/';
    public $timeout = 30;
    public $connect_timeout = 30;
    public $ssl_verifypeer = FALSE;
    public $format = 'json';
    public $decode_json = TRUE;
    public $http_info;
    public $useragent = 'SERVICE.BESTDO.COM';
    public $debug = false;
    public static $boundary = '';

    public function __construct($host = 'https://api.weixin.qq.com/cgi-bin/', $access_token = '') {
        $this->access_token = $access_token;
        $this->host = $host;
    }

    /**
     * GET请求获得JSON数据.
     *
     * @return mixed
     */
    public function get($url, $parameters = array(), $ext = '') {
        return $this->execute($url, 'GET', $parameters, $ext);
    }

    /**
     * POST请求获得数据
     *
     * @return mixed
     */
    public function post($url, $parameters = array()) {
        return $this->execute($url, 'POST', $parameters );
    }

    /**
     * 执行通信方法, 返回远程通信结果
     *
     * @return string
     * @ignore
     */
    public function execute($url, $method, $parameters, $ext = '') {
        $url = $this->host.$url;

        if($method == 'GET') {
            $parameters = http_build_query($parameters);
            $url = $url . '?' . $parameters. $ext;
            return $this->http($url, 'GET');
        } else {
            return $this->http($url, $method, $parameters);
        }
    }
    /**
     * CURL回调执行的方法.
     *
     * @return int
     * @ignore
     */
    public function getHeader($ch, $header) {
        $i = strpos($header, ':');
        if (!empty($i)) {
            $key = str_replace('-', '_', strtolower(substr($header, 0, $i)));
            $value = trim(substr($header, $i + 2));
            $this->http_header[$key] = $value;
        }
        return strlen($header);
    }
    /**
     * 统一采用CURL方式进行远程操作
     *
     * @return string API results
     * @ignore
     */
    public function http($url, $method, $postfields = NULL, $headers = array()) {
        $this->http_info = array();
        $ci = curl_init();
        /* Curl settings */
        curl_setopt($ci, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);
        curl_setopt($ci, CURLOPT_USERAGENT, $this->useragent);
        curl_setopt($ci, CURLOPT_CONNECTTIMEOUT, $this->connect_timeout);
        curl_setopt($ci, CURLOPT_TIMEOUT, $this->timeout);
        curl_setopt($ci, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ci, CURLOPT_ENCODING, "");
        curl_setopt($ci, CURLOPT_SSL_VERIFYPEER, $this->ssl_verifypeer);
        curl_setopt($ci, CURLOPT_SSL_VERIFYHOST, FALSE);

        curl_setopt($ci, CURLOPT_HEADERFUNCTION, array($this, 'getHeader'));
        curl_setopt($ci, CURLOPT_HEADER, FALSE);

        switch ($method) {
            case 'POST':
                curl_setopt($ci, CURLOPT_POST, TRUE);
                if (!empty($postfields)) {
                    curl_setopt($ci, CURLOPT_POSTFIELDS, $postfields);
                    $this->postdata = $postfields;
                }
                break;
        }

        if(isset($this->access_token) && $this->access_token ) {
            $headers[] = "api_access_token : ".$this->access_token;
        }

        curl_setopt($ci, CURLOPT_URL, $url );
        curl_setopt($ci, CURLOPT_HTTPHEADER, $headers );
        curl_setopt($ci, CURLINFO_HEADER_OUT, TRUE );

        $response = curl_exec($ci);
        curl_close ($ci);
        return $response;
    }
    
    public static function checkCode($code,$state) {
    
        $code = isset($_REQUEST['code']) ? $_REQUEST['code'] : '';
        $state = isset($_REQUEST['state']) ? urldecode($_REQUEST['state']) : '';
        if($code == '') {
            return $this->error('授权失败，部分功能不能使用--1');
        }
        $now_url ='http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];
        //第二步：根据code 获取accessToken
        //根据code获取access_token
        $params['appid'] = WEIXIN_APPID;
        $params['secret'] = WEIXIN_APPSECRET;
        $params['code'] = $code;
        $params['grant_type'] = 'authorization_code';
        //$userAccessTokenUri = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.APPID.'&secret='.APPSECRET.'&code='.$code.'&grant_type=authorization_code';
        $http = new WeiXin_Http('https://api.weixin.qq.com/sns/oauth2/');
        $userAccessToken = $http->get('access_token', $params);
        $userAccessTokenArr = json_decode($userAccessToken, true);
        $access_token = isset($userAccessTokenArr['access_token']) ? $userAccessTokenArr['access_token'] : '';//网页授权接口调用凭证,注意：此access_token与基础支持的access_token不同
        $expires_in = isset($userAccessTokenArr['expires_in']) ? $userAccessTokenArr['expires_in'] : '';//access_token接口调用凭证超时时间，单位（秒）
        $refresh_token = isset($userAccessTokenArr['refresh_token']) ? $userAccessTokenArr['refresh_token'] : '';//用户刷新access_token
        $openid = isset($userAccessTokenArr['openid']) ? $userAccessTokenArr['openid'] : '';//用户唯一标识，请注意，在未关注公众号时，用户访问公众号的网页，也会产生一个用户和公众号唯一的OpenID
        $scope = isset($userAccessTokenArr['scope']) ? $userAccessTokenArr['scope'] : '';//用户授权的作用域，使用逗号（,）分隔
        if($access_token == '') {
            return $this->error('授权失败，部分功能不能使用--2');
        }
        
        //第三步：刷新access_token 可以很长时间不做授权检验
        //https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN
        $refreshParams['appid'] = WEIXIN_APPID;
        $refreshParams['grant_type'] = 'refresh_token ';
        $refreshParams['refresh_token'] = $refresh_token;
        $http = new WeiXin_Http('https://api.weixin.qq.com/sns/oauth2/');
        $userAccessToken = $http->get('refresh_token', $refreshParams);
        
        //第四步：使用access_token获取用户信息
        //        $access_token = 'OezXcEiiBSKSxW0eoylIeEJCmNVc4sB-tDsYtxnRZZgtKTfCtOuPNO58UFnCS_k6SGPwKUJ6q6mcudENUSCBRFtTnfNAjUXbenAX3ls6hcvjDk6tgbeZXD-FqfmZmfKL4zUK4MD-9RtfnCVDbdZZFg';
        //        $openid = 'oKlK2t_KYiz3jx1luWYrWxv7XSog';
        $userInfoParams['access_token'] = $access_token;
        $userInfoParams['openid'] = $openid;
        $userInfoParams['lang'] = 'zh_CN';
        
        //$userInfoUri = 'https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN';
        
        
        $http = new WeiXin_Http('https://api.weixin.qq.com/sns/');
        $userInfo = $http->get('userinfo', $userInfoParams);
        
        
        $userInfoArr = json_decode($userInfo, true);
        $thisOpenId = isset($userInfoArr['openid']) ? $userInfoArr['openid'] : '';
        $nickName = isset($userInfoArr['nickname']) ? $userInfoArr['nickname'] : '';
        if($thisOpenId == '') {
            return $this->error('授权失败，部分功能不能使用--3');
        }
        
        //emoji字符过滤
        require_once(FW_PATH . '/plugins/emoji/emoji.php');
        $tmpNick = emoji_unified_to_html($nickName);
        if(strpos($tmpNick, 'emoji') !== false ){
            $nickName = '';
        }
        
        return $userInfoArr;
    }
}