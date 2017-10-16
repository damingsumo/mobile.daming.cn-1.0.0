<?php
class WebApi_Model_Size extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getSizesByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Model_Size::instance()->getSizesByParams($params, $page, $pageSize);
    }
    
    
    public function getSizesCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Model_Size::instance()->getSizesCountByParams($params);
    }
}