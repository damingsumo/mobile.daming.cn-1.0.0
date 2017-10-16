<?php
class WebApi_User_Hw extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getHwsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_User_Hw::instance()->getHwsByParams($params, $page, $pageSize);
    }
    
    
    public function getHwsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_User_Hw::instance()->getHwsCountByParams($params);
    }
    
    public function add($params) {
        $data = array();
        $data['uid'] = isset($params['uid']) ? $params['uid'] : 0;
        $data['height'] = isset($params['height']) ? $params['height'] : 0;
        $data['weight'] = isset($params['weight']) ? $params['weight'] : 0;
        $data['age'] = isset($params['age']) ? $params['age'] : 0;
        $data['chest_circumference'] = isset($params['chest_circumference']) ? $params['chest_circumference'] : 0;
        $data['europe_chest_circumference'] = isset($params['europe_chest_circumference']) ? $params['europe_chest_circumference'] : 0;
        if($data['chest_circumference'] == 0 && $data['europe_chest_circumference'] != 0) {
            $data['chest_circumference_type'] = 2;
        }else if($data['chest_circumference'] != 0 && $data['europe_chest_circumference'] == 0) {
            $data['chest_circumference_type'] = 1;
        }else{
            $data['chest_circumference_type'] = 0;
        }
        $data['cup_size'] = isset($params['cup_size']) ? $params['cup_size'] : '';
        $data['create_time'] = date('Y-m-d H:i:s');
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Hw::instance()->insert($data);
    }
    
    public function update($params, $userHwId) {
        $data['height'] = isset($params['height']) ? $params['height'] : 0;
        $data['weight'] = isset($params['weight']) ? $params['weight'] : 0;
        $data['age'] = isset($params['age']) ? $params['age'] : 0;
        $data['chest_circumference'] = isset($params['chest_circumference']) ? $params['chest_circumference'] : 0;
        $data['europe_chest_circumference'] = isset($params['europe_chest_circumference']) ? $params['europe_chest_circumference'] : 0;
        if($data['chest_circumference'] == 0 && $data['europe_chest_circumference'] != 0) {
            $data['chest_circumference_type'] = 2;
        }else if($data['chest_circumference'] != 0 && $data['europe_chest_circumference'] == 0) {
            $data['chest_circumference_type'] = 1;
        }else{
            $data['chest_circumference_type'] = 0;
        }
        $data['cup_size'] = isset($params['cup_size']) ? $params['cup_size'] : '';
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Hw::instance()->update($data, $userHwId);
    }
}