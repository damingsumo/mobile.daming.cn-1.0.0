<?php
class Tideassociation extends Controller_Base {
    
    
    /***
     * 跳转潮搭社
     * 
     */
    public function actionList() {
        $brandId = isset($_POST['brand_id']) ? $_POST['brand_id'] : 0;
        $total = WebApi_Brand_Goods::instance()->getGoodsCountByParams(array('brand_id'=>$brandId));
        if($total > 0) {
            $goods = WebApi_Brand_Goods::instance()->getGoodsByParams(array('brand_id'=>$brandId));
        }
        $params = array();
        $params['goods'] = $goods;
        return $this->display('list', $params);
    }
   
    
}