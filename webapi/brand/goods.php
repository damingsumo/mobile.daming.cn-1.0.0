<?php
class WebApi_Brand_Goods extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getGoodsByParams($params, $page = 1, $pageSize = -1, $order) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Brand_Goods::instance()->getGoodsByParams($params, $page, $pageSize, $order);
    }
    
    
    public function getGoodsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Brand_Goods::instance()->getGoodsCountByParams($params);
    }
}