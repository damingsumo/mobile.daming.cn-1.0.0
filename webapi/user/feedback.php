<?php
class WebApi_User_Feedback extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    public function add($params) {
        $data = array();
        $data['uid'] = isset($params['uid']) ? $params['uid'] : 0;
        $data['note'] = isset($params['note']) ? $params['note'] : '';
        $data['phone'] = isset($params['phone']) ? $params['phone'] : 0;
        $data['status'] = isset($params['status']) ? $params['status'] : 0;
        $data['create_time'] = date('Y-m-d H:i:s');
        $data['update_time'] = date('Y-m-d H:i:s');
        return CoreApi_User_Feedback::instance()->insert($data);
    }
    
    
}
