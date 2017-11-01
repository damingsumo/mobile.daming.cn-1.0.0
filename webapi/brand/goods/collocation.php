<?php
class WebApi_Brand_Goods_Collocation extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getCollocationsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Brand_Goods_Collocation::instance()->getSizesByParams($params, $page, $pageSize);
    }
    
    
    public function getCollocationsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Brand_Goods_Collocation::instance()->getSizesCountByParams($params);
    }
}