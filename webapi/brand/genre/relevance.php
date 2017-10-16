<?php
class WebApi_Brand_Genre_Relevance extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getRelevancesByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Brand_Genre_Relevance::instance()->getRelevancesByParams($params, $page, $pageSize);
    }
    
    
    public function getRelevancesCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Brand_Genre_Relevance::instance()->getRelevancesCountByParams($params);
    }
}