<?php
class WebApi_Order_Item extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getOrderItemsByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_Order_Item::instance()->getOrderItemsByParams($params, $page, $pageSize);
    }
    
    
    public function getOrderItemsCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_Order_Item::instance()->getOrderItemsCountByParams($params);
    }
    
    public function add($data) {
        $params = array();
        $params['oid'] = isset($data['oid']) ? $data['oid'] : 0;
        $params['gid'] = isset($data['gid']) ? $data['gid'] : 0;
        $params['size'] = isset($data['size']) ? $data['size'] : 0;
        $params['number'] = isset($data['number']) ? $data['number'] : 1;
        $params['price'] = isset($data['price']) ? $data['price'] : 1;
        $params['color'] = isset($data['color']) ? $data['color'] : '';
        $params['old_price'] = isset($data['old_price']) ? $data['old_price'] : 0;
        $params['status'] = isset($data['status']) ? $data['status'] : 1;
        $params['reduce_money'] = isset($data['reduce_money']) ? $data['reduce_money'] : 0;
        $params['pay_money'] = isset($data['pay_money']) ? $data['pay_money'] : 0;
        $params['pay_method'] = isset($data['pay_method']) ? $data['pay_method'] : 0;
        $params['pay_time'] = isset($data['pay_time']) ? $data['pay_time'] : '';
        $params['refund_money'] = isset($data['refund_money']) ? $data['refund_money'] : 0;
        $params['refund_method'] = isset($data['refund_method']) ? $data['refund_method'] : 0;
        $params['refund_time'] = isset($data['refund_time']) ? $data['refund_time'] : '';
        $params['create_time'] = date('Y-m-d H:i:s');
        $params['update_time'] = date('Y-m-d H:i:s');
        print_r($params);exit;
        return CoreApi_Order_Item::instance()->insert($params);
    }
}