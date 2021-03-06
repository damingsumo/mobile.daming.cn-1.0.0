<?php
class Controller_Brand extends Controller_Base {
    
    
    public function gobrandlist() {
        $code = isset($_REQUEST['code']) ? $_REQUEST['code'] : '';
        $state = isset($_REQUEST['state']) ? urldecode($_REQUEST['state']) : '';
        if($code == "") {
            $appid=WEIXIN_APPID;
    	    $redirect_uri = urlEncode ('http://test.mobile.bestdaming.cn/brand/gobrandlist');
            $url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid=$appid&redirect_uri=$redirect_uri&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect";
    	    header("location:".$url);
        }
        $userInfoArr = WeiXin_Http::checkCode($code,$state);
        $res = WebApi_User::instance()->addUser($userInfoArr, $userInfoArr['openid']);
        
        $total = WebApi_Image::instance()->getImagesCountByParams(array('uid'=>$_SESSION['uid']));
        if($total == 0) {
            http::go('/user/goadd');
        }
        $params = array();
        $total = WebApi_Brand::instance()->getBrandsCountByParams($params);
        $brands = array();
        if($total > 0 ) {
            $brands = WebApi_Brand::instance()->getBrandsByParams($params);
        }
        $params['brands'] = $brands;
        $params['total'] = $total;
        return $this->display('index/index', $params);
    }
    
    
    
    
    public function actionList() {
        
        
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
        print_r($params);exit;
        return $this->display('index/index', $params);
    }
}