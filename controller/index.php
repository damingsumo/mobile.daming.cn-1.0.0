<?php
/**
 * 首页操作类 
 * @author zq
 * @version 1.0.0 
 * 
 */
class Controller_Index extends Controller_Base {
	/**
	 * @note 登录
	 * @author
	 */
	public function login() {
// 	    $code = isset($_REQUEST['code']) ? $_REQUEST['code'] : '';
// 	    $state = isset($_REQUEST['state']) ? urldecode($_REQUEST['state']) : '';
// 	    if($code == '') {
// 	        return $this->error('授权失败，部分功能不能使用--1');
// 	    }
	    
// 	    //第二步：根据code 获取accessToken
// 	    //根据code获取access_token
// 	    $params['appid'] = WEIXIN_APPID;
// 	    $params['secret'] = WEIXIN_APPSECRET;
// 	    $params['code'] = $code;
// 	    $params['grant_type'] = 'authorization_code';
	    
// 	    //$userAccessTokenUri = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.APPID.'&secret='.APPSECRET.'&code='.$code.'&grant_type=authorization_code';
// 	    $http = new WeiXin_Http('https://api.weixin.qq.com/sns/oauth2/');
// 	    $userAccessToken = $http->get('access_token', $params);
// 	    $userAccessTokenArr = json_decode($userAccessToken, true);
// 	    $access_token = isset($userAccessTokenArr['access_token']) ? $userAccessTokenArr['access_token'] : '';//网页授权接口调用凭证,注意：此access_token与基础支持的access_token不同
// 	    $expires_in = isset($userAccessTokenArr['expires_in']) ? $userAccessTokenArr['expires_in'] : '';//access_token接口调用凭证超时时间，单位（秒）
// 	    $refresh_token = isset($userAccessTokenArr['refresh_token']) ? $userAccessTokenArr['refresh_token'] : '';//用户刷新access_token
// 	    $openid = isset($userAccessTokenArr['openid']) ? $userAccessTokenArr['openid'] : '';//用户唯一标识，请注意，在未关注公众号时，用户访问公众号的网页，也会产生一个用户和公众号唯一的OpenID
// 	    $scope = isset($userAccessTokenArr['scope']) ? $userAccessTokenArr['scope'] : '';//用户授权的作用域，使用逗号（,）分隔
// 	    if($access_token == '') {
// 	        return $this->error('授权失败，部分功能不能使用--2');
// 	    }
	    
// 	    //第三步：刷新access_token 可以很长时间不做授权检验
// 	    //https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN
// 	    $refreshParams['appid'] = WEIXIN_APPID;
// 	    $refreshParams['grant_type'] = 'refresh_token ';
// 	    $refreshParams['refresh_token'] = $refresh_token;
// 	    $http = new WeiXin_Http('https://api.weixin.qq.com/sns/oauth2/');
// 	    $userAccessToken = $http->get('refresh_token', $refreshParams);
	    
// 	    //第四步：使用access_token获取用户信息
// 	    //        $access_token = 'OezXcEiiBSKSxW0eoylIeEJCmNVc4sB-tDsYtxnRZZgtKTfCtOuPNO58UFnCS_k6SGPwKUJ6q6mcudENUSCBRFtTnfNAjUXbenAX3ls6hcvjDk6tgbeZXD-FqfmZmfKL4zUK4MD-9RtfnCVDbdZZFg';
// 	    //        $openid = 'oKlK2t_KYiz3jx1luWYrWxv7XSog';
// 	    $userInfoParams['access_token'] = $access_token;
// 	    $userInfoParams['openid'] = $openid;
// 	    $userInfoParams['lang'] = 'zh_CN';
	    
// 	    //$userInfoUri = 'https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN';
	    
	    
// 	    $http = new WeiXin_Http('https://api.weixin.qq.com/sns/');
// 	    $userInfo = $http->get('userinfo', $userInfoParams);
	    
	    
// 	    $userInfoArr = json_decode($userInfo, true);
// 	    $thisOpenId = isset($userInfoArr['openid']) ? $userInfoArr['openid'] : '';
// 	    $nickName = isset($userInfoArr['nickname']) ? $userInfoArr['nickname'] : '';
// 	    if($thisOpenId == '') {
// 	        return $this->error('授权失败，部分功能不能使用--3');
// 	    }
	    
// 	    //emoji字符过滤
// 	    require_once(FW_PATH . '/plugins/emoji/emoji.php');
// 	    $tmpNick = emoji_unified_to_html($nickName);
// 	    if(strpos($tmpNick, 'emoji') !== false ){
// 	        $nickName = '';
// 	    }
		if(Account::checkLogin()) {
			http::go('/index/index');
		}
		return $this->display('login');
	}
	
	/**
	 * @note 首页index
	 */
	public function index() {
	    $appid=WEIXIN_APPID;
	    $redirect_uri=urlencode("https://test.mobile.bestdaming.cn");
	    $url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".$redirect_uri."&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect";
	    header("location:".$url);
	    
	    print_r($_REQUEST);exit;
	    $uid = Account::getUid();
	    $total = WebApi_Image::instance()->getImagesCountByParams(array('uid'=>$uid));
	    if($total == 0) {
	        return http::go('/user/goadd');
	    }
	    $brands = WebApi_Brand::instance()->getBrandsByParams(array());
	    $params['brands'] = $brands;
		return $this->display('index/index', $params);
	}
	
	/**
	 * 跳转注册页面
	 */
	public function goRegister() {
	    return $this->display('index/register');
	}
	
	/**
	 * 注册
	 */
	public function register() {
	    $username = isset($_POST['username']) ? $_POST['username'] : '';
	    $password = isset($_POST['password']) ? $_POST['password'] : '';
	    $total = WebApi_User::instance()->getUsersCountByParams(array('username'=>$username));
	    if($total != 0) {
	        return $this->ajaxError('该用户名已被注册');
	    }
	    $uid = WebApi_User::instance()->add(array('username'=>$username,'password'=>$password));
	     
	    $account = WebApi_User::instance()->login($username, $password);
	    if($account == false) {
	        return $this->ajaxError('登录失败,请重新登录');
	    }
	    return $this->ajaxSuccess('注册成功');
	     
	}
	
}
?>