<?php
class WebApi_Image_Face extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getFacesByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Image_Face::instance()->getFacesByParams($params, $page, $pageSize);
    }
    
    
    public function getFacesCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Image_Face::instance()->getFacesCountByParams($params);
    }
}