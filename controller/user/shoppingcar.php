<?php
class Controller_User_Shoppingcar extends Controller_Base {
    
    public function actionList() {
        $uid = account::getUid();
        $shoppingcars = array();
        $shoppingcars = WebApi_User_Shoppingcar::instance()->getShopingcarByParams(array('uid'=>$uid));
        $data = array();
        foreach ($shoppingcars as &$shoppingcar) {
            $goods = WebApi_Brand_Goods::instance()->row('*',$shoppingcar['gid']);
            $brand = WebApi_Brand::instance()->row('*',$goods['brand_id']);
            $shoppingcar['goods'] = $goods;
            $shoppingcar['brand'] = $brand;
            $data[$goods['brand_name']][] = $shoppingcar;
        }
        $params = array();
        $params['shoppingcars'] = $data;
        return $this->display('user/shoppingcar',$params);
    }
    
    
    public function ajaxAdd() {
        $uid = account::getUid();
        $gid = isset($_POST['gid']) ? $_POST['gid'] : 0;
        $params = array();
        $params['gid'] = $gid;
        $params['uid'] = $uid;
        $res = WebApi_User_Shoppingcar::instance()->add($params);
        if(!$res) {
            return $this->error('添加购物车失败');
        }
        return $this->ajaxSuccess('添加购物车成功');
    }
    
    public function delete() {
        $shoppingIds = isset($_POST['shoppingIds']) ? isset($_POST['shoppingIds']) : array();
        $uid = account::getUid();
        foreach ($shoppingIds as $shoppingId) {
            $res = WebApi_User_Shoppingcar::instance()->add($shoppingId);
            if(!res) {
                return $this->error('购物车删除失败');
            }
        }
    }
}