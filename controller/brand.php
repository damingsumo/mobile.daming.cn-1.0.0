<?php
class Controller_Brand extends Controller_Base {
    
    
    public function actionGobrandlist() {
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
        print_r($_SESSION);exit;
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
        return $this->display('index/index', $params);
    }
}