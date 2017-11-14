<?php
class WebApi_Image_Hairstyle extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getHairStylesByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Image_Hairstyle::instance()->getHairStylesByParams($params, $page, $pageSize);
    }
    
    
    public function getHairStylesCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Image_Hairstyle::instance()->getHairStylesCountByParams($params);
    }
}