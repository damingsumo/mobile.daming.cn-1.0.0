<?php
/**
 * 首页
 * @author zss
 * @version 1.0.0 
 * 
 */
class Controller_Index extends Controller_Base {
	/**
	 * 首页
	 */
    public function Index() {
//         $params = array();
//         $total = WebApi_Brand::instance()->getBrandsCountByParams($params);
//         $brands = array();
//         if($total > 0 ) {
//             $brands = WebApi_Brand::instance()->getBrandsByParams($params);
//         }
//         $params['brands'] = $brands;
//         foreach ($brands as &$brand) {
//             $brand['picture_url'] = MGR_DOMIAN.$brand['picture_url'];
//         }
//         $params['total'] = $total;
//         return $this->display('index', $params);
        return $this->display('user/add');
    }
    
    
    public function goCollection() {
        return $this->display('collection');
    }
    
    public function goAboutUs() {
        return $this->display('aboutus');
    }
    
    
}

?>