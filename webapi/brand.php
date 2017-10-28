<?php
class WebApi_Brand extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getBrandsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Brand::instance()->getbrandsByParams($params, $page, $pageSize);
    }
    
    
    public function getBrandsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Brand::instance()->getbrandsCountByParams($params);
    }
}