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
        $color = isset($_POST['color']) ? $_POST['color']: 0;
        $number = isset($_POST['number']) ? $_POST['number']: 0;
        $brandId = isset($_POST['brand_id']) ? $_POST['brand_id']: 0;
        if($gid == 0) {
            return $this->error('商品ID错误');
        }
        if($size == 0) {
            return $this->error('尺码错误');
        }
        if($price == 0) {
            return $this->error('价格错误');
        }
//         if($color == 0) {
//             return $this->error('');
//         }
        if($number == 0) {
            return $this->error('数量错误');
        }
        $params = array();
        $params['uid']  = $uid;
        $params['price']  = $price;
        $params['brand_id']  = $brandId;
        $res = WebApi_Order::instance()->add($params);
        if(!$res) {
            return $this->error('订单添加失败');
        }
    }
    
    public function actionDetail() {
        $oid = isset($_POST['oid']) ? $_POST['oid'] : 0;
        $order = WebApi_Order::instance()->row('*',$oid);
        $orderitem = WebApi_Orderitem::instance()->getOrderitemByParams(array('oid'=>$oid));
    }
}