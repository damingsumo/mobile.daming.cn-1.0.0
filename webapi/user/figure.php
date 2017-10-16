<?php
class WebApi_User_Figure extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getFiguresByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_User_Figure::instance()->getFiguresByParams($params, $page, $pageSize);
    }
    
    
    public function getFiguresCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_User_Figure::instance()->getFiguresCountByParams($params);
    }
    
    public function add($params) {
        if(empty($params)) {
            return array();
        }
        $data =array();
        $data['uid'] = isset($params['uid']) ? $params['uid'] : 0;
        $data['waist'] = isset($params['waist']) ? $params['waist'] : 3;
        $data['belly'] = isset($params['belly']) ? $params['belly'] : 3;
        $data['stern_type'] = isset($params['stern_type']) ? $params['stern_type'] : 3;
        $data['hip_type'] = isset($params['hip_type']) ? $params['hip_type'] : 3;
        $data['shoulder'] = isset($params['shoulder']) ? $params['shoulder'] : 3;
        $data['arm'] = isset($params['arm']) ? $params['arm'] : 3;
        $data['arm_circumference'] = isset($params['arm_circumference']) ? $params['arm_circumference'] : 3;
        $data['hip'] = isset($params['hip']) ? $params['hip'] : 3;
        $data['thigh'] = isset($params['thigh']) ? $params['thigh'] : 3;
        $data['leg'] = isset($params['leg']) ? $params['leg'] : 3;
        $data['body_thick'] = isset($params['body_thick']) ? $params['body_thick'] : 3;
        $data['body_length'] = isset($params['body_length']) ? $params['body_length'] : 3;
        $data['create_time'] = date('Y-m-d H:i:s');
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Figure::instance()->insert($data);
    }
    
    public function update($params, $userFigureId) {
        if(empty($params)) {
            return array();
        }
        $data =array();
        $data['waist'] = isset($params['waist']) ? $params['waist'] : 3;
        $data['belly'] = isset($params['belly']) ? $params['belly'] : 3;
        $data['stern_type'] = isset($params['stern_type']) ? $params['stern_type'] : 3;
        $data['hip_type'] = isset($params['hip_type']) ? $params['hip_type'] : 3;
        $data['shoulder'] = isset($params['shoulder']) ? $params['shoulder'] : 3;
        $data['arm'] = isset($params['arm']) ? $params['arm'] : 3;
        $data['arm_circumference'] = isset($params['arm_circumference']) ? $params['arm_circumference'] : 3;
        $data['hip'] = isset($params['hip']) ? $params['hip'] : 3;
        $data['thigh'] = isset($params['thigh']) ? $params['thigh'] : 3;
        $data['leg'] = isset($params['leg']) ? $params['leg'] : 3;
        $data['body_thick'] = isset($params['body_thick']) ? $params['body_thick'] : 3;
        $data['body_length'] = isset($params['body_length']) ? $params['body_length'] : 3;
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Figure::instance()->update($data, $userFigureId);
    }
}