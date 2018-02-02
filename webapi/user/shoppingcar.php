<?php
class WebApi_User_Shoppingcar extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getShopingcarByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_User_Shoppingcar::instance()->getShopingcarByParams($params, $page, $pageSize);
    }
    
}