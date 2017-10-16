<?php
class WebApi_Image_HairColor extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getHairColorsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Image_HairColor::instance()->getHairColorsByParams($params, $page, $pageSize);
    }
    
    
    public function getHairColorsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Image_HairColor::instance()->getHairColorsCountByParams($params);
    }
}