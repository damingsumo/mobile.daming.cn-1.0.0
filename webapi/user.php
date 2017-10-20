<?php
class WebApi_User extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getUsersByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_User::instance()->getUsersByParams($params, $page, $pageSize);
    }
    
    
    public function getUsersCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_User::instance()->getUsersCountByParams($params);
    }
    
    public function add($data) {
        $params = array();
        $params['user_name'] = isset($data['user_name']) ? $data['user_name'] : '';
        $params['name'] = isset($data['name']) ? $data['name'] : '';
        $params['mobile'] = isset($data['mobile']) ? $data['mobile'] : '';
        $params['email'] = isset($data['email']) ? $data['email'] : '';
        $params['sex'] = isset($data['sex']) ? $data['sex'] : 2;
        $params['address'] = isset($data['address']) ? $data['address'] : '';
        $params['create_time'] = date('Y-m-d H:i:s');
        $params['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User::instance()->insert($params);
    }
}