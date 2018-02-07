<?php
class Controller_Brand extends Controller_Base {
    
    
    public function gobrandlist() {

        $token = Weixin::getAccessToken();
        $refreshParams['appid'] = WEIXIN_APPID;
        $refreshParams['grant_type'] = 'refresh_token ';
        $refreshParams['refresh_token'] = $token;
        $http = new WeiXin_Http('https://api.weixin.qq.com/sns/oauth2/');
        $userAccessToken = $http->get('refresh_token', $refreshParams);
        print_r($userAccessToken);exit;
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