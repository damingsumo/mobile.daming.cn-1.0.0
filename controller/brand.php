<?php
class Controller_Brand extends Controller_Base {
    
    
    public function gobrandlist() {
        $code = isset($_REQUEST['code']) ? $_REQUEST['code'] : '';
        $state = isset($_REQUEST['state']) ? urldecode($_REQUEST['state']) : '';
        if($code == "") {
            $appid=WEIXIN_APPID;
    	    $redirect_uri = urlEncode ('http://test.mobile.bestdaming.cn/brand/gobrandlist');
    // 	    print_r($redirect_uri);exit;
            $url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid=$appid&redirect_uri=$redirect_uri&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect";
    	    header("location:".$url);
        }
        
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
        //第五步 用户信息写入session
        $weixinUser = WebApi_User::instance()->getUserByOpenId($openid);
        
        if(empty($weixinUser)) {
            //插入微信表和user表
            $userData['username'] = $nickName;
            $userData['password'] = '';
            $userData['nick'] = $nickName;
            $userData['mobile'] = isset($userInfoArr['mobile']) ? $userInfoArr['mobile'] : 0;
            $userData['sex'] = isset($userInfoArr['sex']) ? $userInfoArr['sex'] : 0;
            $userData['open_id'] = $openid;
            $userData['language'] = isset($userInfoArr['language']) ? $userInfoArr['language'] : '';
            $userData['city'] = isset($userInfoArr['city']) ? $userInfoArr['city'] : '';
            $userData['province'] = isset($userInfoArr['province']) ? $userInfoArr['province'] : '';
            $userData['country'] = isset($userInfoArr['country']) ? $userInfoArr['country'] : '';
            $userData['thumb'] = isset($userInfoArr['headimgurl']) ? $userInfoArr['headimgurl'] : '';
            $userData['unionid'] = isset($userInfoArr['unionid']) ? $userInfoArr['unionid'] : '';
            $userData['remark'] = isset($userInfoArr['remark']) ? $userInfoArr['remark'] : '';
            $userData['groupid'] = isset($userInfoArr['groupid']) ? $userInfoArr['groupid'] : '';
            $userData['subscribe_time'] = $userData['create_time'] = date('Y-m-d H:i:s');
            $userData['status'] = 1;
            $userData['create_time'] = date('Y-m-d H:i:s');
            $userData['update_time'] = date('Y-m-d H:i:s');
            $res = WebApi_User::instance()->add($userData);
            if($res === false) {
                return $this->error('授权失败，部分功能不能使用--4');
            }
            $uid = $res;
        }else {
            //更新微信信息
            $userData['nick'] = $nickName;
            $userData['sex'] = isset($userInfoArr['sex']) ? $userInfoArr['sex'] : 0;
            $userData['open_id'] = $openid;
            $userData['language'] = isset($userInfoArr['language']) ? $userInfoArr['language'] : '';
            $userData['city'] = isset($userInfoArr['city']) ? $userInfoArr['city'] : '';
            $userData['province'] = isset($userInfoArr['province']) ? $userInfoArr['province'] : '';
            $userData['country'] = isset($userInfoArr['country']) ? $userInfoArr['country'] : '';
            $userData['thumb'] = isset($userInfoArr['headimgurl']) ? $userInfoArr['headimgurl'] : '';
            $userData['update_time'] = date('Y-m-d H:i:s');
            $res = WebApi_User::instance()->edit($userData, $weixinUser['uid']);
            $uid = $weixinUser['uid'];
        }
        Http::setSession('uid', $uid);
        Http::setSession('openid', $openid);
        //在把用户的原始信息放进session中
        //为了延长授权时间把openid存储到cookie中
        $userToken = substr(SYSTEM_ACCESS_KEY, 1, 6).$openid.substr(SYSTEM_ACCESS_KEY, 0, -3);
        Http::setCookie('userToken', $userToken, time()+ 24*3600);
        //第六步：根据$state 去跳转到相应的页面
        //         header("Location:"."https://test.mobile.bestdaming.cn/brand/aList");//到微信网页授权页面
        $params = array();
        $total = WebApi_Brand::instance()->getBrandsCountByParams($params);
        $brands = array();
        if($total > 0 ) {
            $brands = WebApi_Brand::instance()->getBrandsByParams($params);
        }
        $params['brands'] = $brands;
        foreach ($brands as &$brand) {
            $brand['picture_url'] = $brand['picture_url'];
        }
        $params['total'] = $total;
        return $this->display('brand/list', $params);
    }
    
    
    
    
    public function aList() {
        
        
        
        
        
        
        
        
        
        
        
        $params = array();
        $total = WebApi_Brand::instance()->getBrandsCountByParams($params);
        $brands = array();
        if($total > 0 ) {
            $brands = WebApi_Brand::instance()->getBrandsByParams($params);
        }
        $params['brands'] = $brands;
        foreach ($brands as &$brand) {
            $brand['picture_url'] = $brand['picture_url'];
        }
        $params['total'] = $total;
        return $this->display('list', $params);
    }
}