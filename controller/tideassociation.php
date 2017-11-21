<?php
class Tideassociation extends Controller_Base {
    
    
    /***
     * 跳转潮搭社
     * 
     */
    public function actionList() {
        $uid = account::getUid();
        $brandId = isset($_POST['brand_id']) ? $_POST['brand_id'] : 0;
        $page = isset($_POST['page']) ? $_POST['page'] : 1;
        $pagesize = isset($_POST['pagesize']) ? $_POST['pagesize'] : -1;
        $total = WebApi_Brand_Goods::instance()->getGoodsCountByParams(array('brand_id'=>$brandId), $page, $pagesize);
        if($total > 0) {
            $goods = WebApi_Brand_Goods::instance()->getGoodsByParams(array('brand_id'=>$brandId));
        }
        
        $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(!empty($image)) {
            $image = current($image);
        }
        $userHairStyle = array();
        $userHairStyle = WebApi_Image_Hairstyle::instance()->row('*', $image['hair_style_id']);
        if(empty($userHairStyle)) {
            $userHairStyle = WebApi_Image_HairStyle::instance()->getHairStylesByParams(array());
            $userHairStyle = current($userHairStyle);
        }
        $userFace = array();
        $userFace = WebApi_Image_Face::instance()->row('*',  $image['face_id']);
        if(empty($userFace)) {
            $userFace = WebApi_Image_Face::instance()->getFacesByParams(array());
            $userFace = current($userFace);
        }
        
        $params = array();
        $params['userHairStyle'] = $userHairStyle;
        $params['userFace'] = $userFace;
        $params['goods'] = $goods;
        return $this->display('list', $params);
    }
   
    
}