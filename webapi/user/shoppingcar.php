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
    
    
    public function add($params) {
        if(!is_array($params)) {
            return false;
        }
        $data = array();
        $data['gid'] = isset($params['gid']) ? $params['gid'] : 0;
        $data['uid'] = isset($params['uid']) ? $params['uid'] : '';
        $data['size'] = isset($params['size']) ? $params['size']: '';
        $data['color'] = isset($params['color']) ? $params['color'] : '';
        $data['number'] = isset($params['number']) ? $params['number'] : 1;
        $data['create_time'] = date('Y-m-d H:i:s');
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Shoppingcar::instance()->insert($data);
    }
}