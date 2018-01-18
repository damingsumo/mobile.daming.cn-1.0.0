<?php
class WebApi_Hw extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getHwphotosByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        $hwPhotos = CoreApi_Hw::instance()->getHwphotosByParams($params, $page, $pageSize);
        if(empty($hwPhotos)) {
            $hwPhotos = CoreApi_Hw::instance()->row('*',1);
        }else {
            $hwPhotos = current($hwPhotos);
        }
        return $hwPhotos;
    }
    
}