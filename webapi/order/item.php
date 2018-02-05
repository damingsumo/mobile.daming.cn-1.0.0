<?php
class WebApi_Order_Item extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getOrderItemsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Order_Item::instance()->getOrderItemsByParams($params, $page, $pageSize);
    }
    
    
    public function getOrderItemsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Order_Item::instance()->getOrderItemsCountByParams($params);
    }
}