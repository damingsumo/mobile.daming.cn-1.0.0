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
        
    public function getOrder() {
        $gid = isset($_GET['gid']) ? $_GET['gid']: 0;
        $goods = WebApi_Brand_Goods::instance()->row('*', $gid);
        $params = array();
        $params['goods'] = $goods;
        return $this->display('add',$params);
    }
    
    public function actionAdd(){
        
        $uid = account::getUid();
        $gid = isset($_POST['gid']) ? $_POST['gid']: 0;
        $size = isset($_POST['size']) ? $_POST['size']: 0;
        $price = isset($_POST['price']) ? $_POST['price']: 0;
       
       
    }
    
    public function actionDetail() {
        $oid = isset($_POST['oid']) ? $_POST['oid'] : 0;
        $order = WebApi_Order::instance()->row('*',$oid);
        $orderitem = WebApi_Orderitem::instance()->getOrderitemByParams(array('oid'=>$oid));
    }
}