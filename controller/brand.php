<?php
class Controller_Brand extends Controller_Base {
    
    
    public function gobrandlist() {

        $appid=WEIXIN_APPID;
        $redirect_uri = urlEncode ('http://test.mobile.bestdaming.cn/weixin/user/checkCode');
        // 	    print_r($redirect_uri);exit;
        $url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid=$appid&redirect_uri=$redirect_uri&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect";
        
        $data = WeiXin_Http::get($url);
        
        print_r($_SESSION);exit;
        
        
        
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