<?php
/*
 * 订单
*/
class Controller_Order extends Controller_Base {

    
    public function aList () {
        $uid = account::getUid();
        $orders = array();
        $orders = WebApi_Order::instance()->getOrdersByParams(array('uid'=>$uid));
        $params['order'] = $orders;
        return $this->display('list',$params);
    }
        
    
    
    public function actionAdd(){
        
    }
    
    public function actionDetail() {
        $oid = isset($_POST['oid']) ? $_POST['oid'] : 0;
        $order = WebApi_Order::instance()->row('*',$oid);
        $orderitem = WebApi_Orderitem::instance()->getOrderitemByParams(array('oid'=>$oid));
    }
}