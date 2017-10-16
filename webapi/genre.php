<?php
class WebApi_Genre extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }


    public function getGenresByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Genre::instance()->getGenreByParams($params, $page, $pageSize);
    }


    public function getGenresCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Genre::instance()->getGenresCountByParams($params);
    }
}