<?php
class WebApi_User_Body extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getBodysByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_User_Body::instance()->getBodysByParams($params, $page, $pageSize);
    }
    
    
    public function getBodysCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_User_Body::instance()->getBodysCountByParams($params);
    }
    public function add($params) {
        $data = array();
        $data['uid'] = isset($params['uid']) ? $params['uid'] : 0;
        $data['hipline'] = isset($params['hipline']) ? $params['hipline'] : 0;
        $data['kummerbund'] = isset($params['kummerbund']) ? $params['kummerbund'] : 0;
        $data['upper_chest_circumference'] = isset($params['upper_chest_circumference']) ? $params['upper_chest_circumference'] : 0;
        $data['lower_chest_circumference'] = isset($params['lower_chest_circumference']) ? $params['lower_chest_circumference'] : 0;
        $data['arm_circumference'] = isset($params['arm_circumference']) ? $params['arm_circumference'] : 0;
        $data['arm_length'] = isset($params['arm_length']) ? $params['arm_length'] : 0;
        $data['s_width'] = isset($params['s_width']) ? $params['s_width'] : 0;
        $data['thigh_girth'] = isset($params['thigh_girth']) ? $params['thigh_girth'] : 0;
        $data['calf_girth'] = isset($params['calf_girth']) ? $params['calf_girth'] : 0;
        $data['long_legs'] = isset($params['long_legs']) ? $params['long_legs'] : 0;
        $data['body_length'] = isset($params['body_length']) ? $params['body_length'] : 0;
        $data['create_time'] = date('Y-m-d H:i:s');
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Body::instance()->insert($data);
    }
    
    public function update($params, $userBodyId) {
        $data = array();
        $data['hipline'] = isset($params['hipline']) ? $params['hipline'] : 0;
        $data['kummerbund'] = isset($params['kummerbund']) ? $params['kummerbund'] : 0;
        $data['upper_chest_circumference'] = isset($params['upper_chest_circumference']) ? $params['upper_chest_circumference'] : 0;
        $data['lower_chest_circumference'] = isset($params['lower_chest_circumference']) ? $params['lower_chest_circumference'] : 0;
        $data['arm_circumference'] = isset($params['arm_circumference']) ? $params['arm_circumference'] : 0;
        $data['arm_length'] = isset($params['arm_length']) ? $params['arm_length'] : 0;
        $data['s_width'] = isset($params['s_width']) ? $params['s_width'] : 0;
        $data['thigh_girth'] = isset($params['thigh_girth']) ? $params['thigh_girth'] : 0;
        $data['calf_girth'] = isset($params['calf_girth']) ? $params['calf_girth'] : 0;
        $data['long_legs'] = isset($params['long_legs']) ? $params['long_legs'] : 0;
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Body::instance()->update($data, $userBodyId);
    }
    
}