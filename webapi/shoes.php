<?php
class WebApi_Shoes extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getShoesByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Shoes::instance()->getShoesByParams($params, $page, $pageSize);
    }
    
    
    public function getShoesCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Shoes::instance()->getShoesCountByParams($params);
    }
    
}