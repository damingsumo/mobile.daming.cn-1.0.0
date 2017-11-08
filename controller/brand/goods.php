<?php
class Controller_Brand_Goods extends Controller_Base {
    /**
     * 首页
     */
    public function actionList() {
        $uid = account::getUid();
        $brandId = isset($_GET['brand_id']) ? $_GET['brand_id'] : 0;
        $genreId = isset($_GET['genre_id']) ? $_GET['genre_id'] : 0;
        $key = isset($_GET['key']) ? $_GET['key'] : 0;
        $page = isset($_SERVER['page']) ? $_SERVER['page'] : 1;
        $pageSize = isset($_SERVER['pageSize']) ? $_SERVER['pageSize'] : 20;
        Account::setBrandId($brandId);
        $params = array();
        $params['brand_id'] = $brandId;
        if($genreId > 0 ) {
            $params['genre_id'] = $genreId;
        }
        if($key == 1 || $key == 0) {
            $order = 'create_time';
        }elseif ($key == 2) {
            $order = 'price';
        }
        $brand = WebApi_Brand::instance()->row('*', $brandId);
        if(empty($brand)) {
            return $this->error('未找到品牌信息');
        }
        
        $total = WebApi_Brand_Goods::instance()->getGoodsCountByParams($params);
        $goods = array();
        if($total > 0 ) {
            $goods = WebApi_Brand_Goods::instance()->getGoodsByParams($params,$page, $pageSize, $order);
        }
        
        foreach($goods as &$good) {
            $good['show_url'] =  'http://'.MGR_DOMIAN.$good['show_url'];
            $good['genre'] = WebApi_Genre::instance()->row('*',$good['genre_id']);
            $good['genre']['picture_url'] = 'http://'.MGR_DOMIAN.$good['genre']['picture_url'];
            
            $goodsCollocation = array();
            $goodsCollocation = WebApi_Brand_Goods_Collocation::instance()->getCollocationsByParams(array('gid'=>$good['gid']));
            if(!empty($goodsCollocation)) {
                $goodsCollocation = current($goodsCollocation);

                $goodsCollocation['shoes'] = WebApi_Shoes::instance()->row('*', $goodsCollocation['shoes_id']);
                // if(isset($goodsCollocation['first_collocation_id'])) {
                //     $goodsCollocation['first_collocation_goods'] = WebApi_Brand_Goods::instance()->row('*', $goodsCollocation['first_collocation_id']);
                // }
                // if(isset($goodsCollocation['second_collocation_id'])) {
                //     $goodsCollocation['second_collocation_goods'] = WebApi_Brand_Goods::instance()->row('*', $goodsCollocation['second_collocation_id']);
                // }
            }
            $good['goodsCollocation'] = $goodsCollocation;
        }
        
        $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(!empty($image)) {
            $image = current($image);
        }
        
        $userHairStyle = array();
        $userHairStyle = WebApi_Image_HairStyle::instance()->row('*', $image['hair_style_id']);
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
        $params['userHairStyle'] = $userHairStyle;
        $params['userFace'] = $userFace;
        $params['brandId'] = $brandId;
        $params['goods'] = $goods;
        $params['total'] = $total;
        $params['brand'] = $brand;
        $params['key'] = $key;
        
        return $this->display('list', $params);
    }
    
    public function detail() {
        $uid = account::getUid();
        $gid = isset($_GET['gid']) ? $_GET['gid'] : 0;
        if($gid <= 0) {
            return $this->error('商品ID错误');
        }
        $good = WebApi_Brand_Goods::instance()->row('*', $gid);
        if(empty($good)) {
            return $this->error('未找到商品信息');
        }
        $genre = WebApi_Genre::instance()->row('*', $good['genre_id']);
        if(empty($genre)) {
            return $this->error('未找到分类');
        }
        $body = WebApi_User_Body::instance()->getBodysByParams(array('uid'=>$uid));
        if(empty($body)) {
            return $this->error('未找到用户身材数据');
        }
        $body = current($body);
        $sizes = WebApi_Brand_Goods_Size::instance()->getSizesByParams(array('gid'=>$gid));
        
        $userHW = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
        if(!empty($userHW)) {
            $userHW = current($userHW);
        }
        $brandSize = array();
        $brandSize = WebApi_Brand_Size::instance()->getSizesByParams(array('height_key'=>$userHW['height'], 'weight_key'=>$userHW['weight'], 'brand_id'=>$good['brand_id']));
        if(!empty($brandSize)) {
            $brandSize = current($brandSize);
        }
        $modelSize = array();
        $modelSize = WebApi_Model_Size::instance()->getSizesByParams(array('height'=>$userHW['height'], 'weight'=>$userHW['weight'], 'gid'=>$gid));
        if(!empty($modelSize)) {
            $modelSize = current($modelSize);
            $brandSize = $modelSize;
            foreach ($sizes as &$size) {
                $size['kummerbund_status'] = 0;
                if($genre['kummerbund_status'] != 0 ){
                    if($size['size'] == $modelSize['size']) {
                        $kummerbund = $modelSize['kummerbund'] - $body['kummerbund'];
                        if($kummerbund <0) {
                            $size['kummerbund_status'] = 4;
                        } elseif($kummerbund == 0) {
                            $size['kummerbund_status'] = 1;
                        } elseif($kummerbund > 0) {
                            $size['kummerbund_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['kummerbund_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['kummerbund_status'] = 1;
                    }
                }
                
                $size['hipline_status'] = 0;
                if($genre['hipline_status'] != 0) {
                    if($size['size'] == $modelSize['size']) {
                        $hipline = $modelSize['hipline'] - $body['hipline'];
                        if($hipline <0) {
                            $size['hipline_status'] = 4;
                        } elseif($hipline == 0) {
                            $size['hipline_status'] = 1;
                        } elseif($hipline > 0) {
                            $size['hipline_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['hipline_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['hipline_status'] = 1;
                    }
                }
                $size['long_legs_status'] = 0;
                if($genre['outseam_status'] != 0) {
                    if($size['size'] == $modelSize['size']) {
                        $longLegs = $modelSize['long_legs'] - $body['long_legs'];
                        if($longLegs < 0) {
                            $size['long_legs_status'] = 4;
                        } elseif($longLegs == 0) {
                            $size['long_legs_status'] = 1;
                        } elseif($longLegs >0) {
                            $size['long_legs_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['long_legs_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['long_legs_status'] = 1;
                    }
                }
                $size['thigh_girth_status'] = 0;
                if($genre['thigh_girth_status'] != 0) {
                    if($size['size'] == $modelSize['size']) {
                        $thighGirth = $modelSize['thigh_girth'] - $body['thigh_girth'];
                        if($thighGirth < 0) {
                            $size['thigh_girth_status'] = 4;
                        } elseif($thighGirth == 0) {
                            $size['thigh_girth_status'] = 1;
                        } elseif($thighGirth > 0) {
                            $size['thigh_girth_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['thigh_girth_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['thigh_girth_status'] = 1;
                    }
                }
                $size['upper_chest_circumference_status'] = 0;
                if($genre['bust_status'] != 0) {
                    if($size['size'] == $modelSize['size']) {
                        $bust = $modelSize['bust'] - $body['upper_chest_circumference'];
                        if($bust <0) {
                            $size['upper_chest_circumference_status'] = 4;
                        } elseif($bust == 0) {
                            $size['upper_chest_circumference_status'] = 1;
                        } elseif($bust > 0 ) {
                            $size['upper_chest_circumference_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['upper_chest_circumference_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['upper_chest_circumference_status'] = 1;
                    }
                }
                $size['body_length_status'] = 0;
                if($genre['length_status'] != 0) {
                    if($size['size'] == $modelSize['size']) {
                        $body_length = $modelSize['body_length'] - $body['body_length'];
                        if($body_length < 0) {
                            $size['body_length_status'] = 4;
                        } elseif($body_length == 0) {
                            $size['body_length_status'] = 1;
                        } elseif($body_length > 0) {
                            $size['body_length_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['body_length_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['body_length_status'] = 1;
                    }
                }
                $size['s_width_status'] = 0;
                if($genre['s_width_status'] != 0) {
                    if($size['size'] == $modelSize['size']) {
                        $s_width = $modelSize['s_width'] - $body['s_width'];
                        if($s_width < 0) {
                            $size['s_width_status'] = 4;
                        } elseif($s_width == 0) {
                            $size['s_width_status'] = 1;
                        } elseif($s_width > 0) {
                            $size['s_width_status'] = 2;
                        }
                    }elseif ($size['size'] < $modelSize['size']) {
                        $size['s_width_status'] = 4;
                    }elseif ($size['size'] > $modelSize['size']) {
                        $size['s_width_status'] = 1;
                    }
                }
            }
        }
        
        $hairstyles = WebApi_Image_HairStyle::instance()->getHairStylesByParams(array());
        $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(!empty($image)) {
            $image = current($image);
        }
        
        $userHairStyle = array();
        $userHairStyle = WebApi_Image_HairStyle::instance()->row('*', $image['hair_style_id']);
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
        $goodsCollocation = array();
        $goodsCollocation = WebApi_Brand_Goods_Collocation::instance()->getCollocationsByParams(array('gid'=>$gid));
        if(!empty($goodsCollocation)) {
            $goodsCollocation = current($goodsCollocation );
            $goodsCollocation['shoes'] = WebApi_Shoes::instance()->row('*', $goodsCollocation['shoes_id']);
            // if(isset($goodsCollocation['first_collocation_id'])) {
            //     $goodsCollocation['first_collocation_goods'] = WebApi_Brand_Goods::instance()->row('*', $goodsCollocation['first_collocation_id']);
            // }
            // if(isset($goodsCollocation['second_collocation_id'])) {
            //     $goodsCollocation['second_collocation_goods'] = WebApi_Brand_Goods::instance()->row('*', $goodsCollocation['second_collocation_id']);
            // }
        }
        $params['userHairStyle'] = $userHairStyle;
        $params['userFace'] = $userFace;
        $params['image'] = $image;
        $params['body'] = $body;
        $params['good'] = $good;
        $params['sizes'] = $sizes;
        $params['genre'] = $genre;
        $params['hairStyles'] = $hairstyles;
        $params['goodsCollocation'] = $goodsCollocation;
        $params['brandSize'] = $brandSize;
        $params['brandSize'] = $modelSize;
// print_r($params);exit;
        return $this->display('detail',$params);
    }
    
}