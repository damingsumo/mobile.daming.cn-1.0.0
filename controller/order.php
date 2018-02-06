<?php
/*
 * 订单
*/
class Controller_Order extends Controller_Base {

    
    public function actionList () {
        $uid = account::getUid();
        $orders = array();
        $orders = WebApi_Order::instance()->getOrdersByParams(array('uid'=>$uid));
        $data = array();
        foreach ($orders as &$order) {
            $orderItems = WebApi_Order_Item::instance()->getOrderItemsByParams(array('oid'=>$order['oid']));
            foreach ($orderItems as &$orderItem) {
                $orderItem['goods'] = WebApi_Brand_Goods::instance()->row('*',$orderItem['gid']);
            }
            $order['orderItems'] = $orderItems;
            $order['brand'] = WebApi_Brand::instance()->row('*',$order['brand_id']);
            
        }
        $params['orders'] = $orders;
        return $this->display('order/list',$params);
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
        $number = isset($_POST['number']) ? $_POST['number']: 0;
        if($gid == 0) {
            return $this->error('商品ID错误');
        }
        if($size == 0) {
            return $this->error('尺码错误');
        }
        if($number == 0) {
            return $this->error('数量错误');
        }
        $good = WebApi_Brand_Goods::instance()->row('*',$gid);
        if(empty($good)) {
            return $this->error('未找到商品信息');
        }
        
        $params = array();
        $params['uid']  = $uid;
        $params['brand_id'] = $good['brand_id'];
        $params['brand_name'] = $good['brand_name'];
        $params['size'] = $size;
        $params['price']  = $good['price']*$number;
        $res = WebApi_Order::instance()->add($params);
        if(!$res) {
            return $this->error('订单添加失败');
        }
        $data = array();
        $data['oid'] = $res;
        $data['size'] = $size;
        $data['gid'] = $gid;
        $data['number'] = $number;
        $data['price'] = $good['price'];
        $data['old_price'] = $good['old_price'];
        $res = WebApi_Order_Item::instance()->add($data);
        if(!$res) {
            return $this->error('添加明细失败');
        }
        return http::go('/order/list');
    }
    
    public function actionDetail() {
        $oid = isset($_POST['oid']) ? $_POST['oid'] : 0;
        $order = WebApi_Order::instance()->row('*',$oid);
        $orderitem = WebApi_Orderitem::instance()->getOrderitemByParams(array('oid'=>$oid));
    }
}