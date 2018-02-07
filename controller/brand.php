<?php
class Controller_Brand extends Controller_Base {
    
    
    public function aList() {
        
        
//         $params['appid'] = WEIXIN_APPID;
//         $params['secret'] = WEIXIN_APPSECRET;
//         $params['grant_type'] = 'client_credential';
//         $http = new WeiXin_Http('https://api.weixin.qq.com/cgi-bin/');
//         $token = $http->get('token', $params);  
// //         https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN
//         $data['access_token'] = $token;
//         $http = new WeiXin_Http(' https://api.weixin.qq.com/cgi-bin/menu/');
//         $res = $http->post('create', $params);
//         print_r($res);exit;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        print_r($_REQUEST);exit;
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