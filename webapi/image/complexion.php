<?php
class WebApi_Image_Complexion extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getComplexionsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Image_Complexion::instance()->getComplexionsByParams($params, $page, $pageSize);
    }
    
    
    public function getComplexionsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Image_Complexion::instance()->getComplexionsCountByParams($params);
    }
}