<?php
class Controller_Brand_Goods extends Controller_Base {
    /**
     * 首页
     */
    public function actionList() {
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
        }
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
        foreach ($sizes as &$size) {
            $size['kummerbund_status'] = 0;
            if($genre['kummerbund_status'] != 0) {
                $kummerbund = $size['kummerbund'] - $body['kummerbund'];
                if($kummerbund <= 0.5 && $kummerbund >= -0.5) {
                    $size['kummerbund_status'] = 3;
                } elseif($kummerbund > 0.5 && $kummerbund <= 1.5) {
                    $size['kummerbund_status'] = 2;
                } elseif($kummerbund > 1.5) {
                    $size['kummerbund_status'] = 1;
                } elseif($kummerbund < -0.5 && $kummerbund >= -1.5) {
                    $size['kummerbund_status'] = 4;
                } elseif($kummerbund < -1.5) {
                    $size['kummerbund_status'] = 5;
                }
            }
            
            $size['hipline_status'] = 0;
            if($genre['hipline_status'] != 0) {
                $hipline = $size['hipline'] - $body['hipline'];
                if($hipline <= 0.5 && $hipline >= -0.5) {
                    $size['hipline_status'] = 3;
                } elseif($hipline > 0.5 && $hipline <= 1.5) {
                    $size['hipline_status'] = 2;
                } elseif($hipline > 1.5) {
                    $size['hipline_status'] = 1;
                } elseif($hipline < -0.5 && $hipline >= -1.5) {
                    $size['hipline_status'] = 4;
                } elseif($hipline < -1.5) {
                    $size['hipline_status'] = 5;
                }
            }
            $size['long_legs_status'] = 0;
            if($genre['outseam_status'] != 0) {
                $longLegs = $size['outseam'] - $body['long_legs'];
                if($longLegs <= 0.5 && $longLegs >= -0.5) {
                    $size['long_legs_status'] = 3;
                } elseif($longLegs > 0.5 && $longLegs <= 1.5) {
                    $size['long_legs_status'] = 2;
                } elseif($longLegs > 1.5) {
                    $size['long_legs_status'] = 1;
                } elseif($longLegs < -0.5 && $longLegs >= -1.5) {
                    $size['long_legs_status'] = 4;
                } elseif($longLegs < -1.5) {
                    $size['long_legs_status'] = 5;
                }
            }
            $size['thigh_girth_status'] = 0;
            if($genre['thigh_girth_status'] != 0) {
                $thighGirth = $size['thigh_girth'] - $body['thigh_girth'];
                if($thighGirth <= 0.5 && $thighGirth >= -0.5) {
                    $size['thigh_girth_status'] = 3;
                } elseif($thighGirth > 0.5 && $thighGirth <= 1.5) {
                    $size['thigh_girth_status'] = 2;
                } elseif($thighGirth > 1.5) {
                    $size['thigh_girth_status'] = 1;
                } elseif($thighGirth < -0.5 && $thighGirth >= -1.5) {
                    $size['thigh_girth_status'] = 4;
                } elseif($thighGirth < -1.5) {
                    $size['thigh_girth_status'] = 5;
                }
            }
            $size['upper_chest_circumference_status'] = 0;
            if($genre['bust_status'] != 0) {
                $bust = $size['bust'] - $body['upper_chest_circumference'];
                if($bust <= 0.5 && $kummerbund >= -0.5) {
                    $size['upper_chest_circumference_status'] = 3;
                } elseif($bust > 0.5 && $kummerbund <= 1.5) {
                    $size['upper_chest_circumference_status'] = 2;
                } elseif($bust > 1.5) {
                    $size['upper_chest_circumference_status'] = 1;
                } elseif($bust < -0.5 && $kummerbund >= -1.5) {
                    $size['upper_chest_circumference_status'] = 4;
                } elseif($bust < -1.5) {
                    $size['upper_chest_circumference_status'] = 5;
                }
            }
            $size['body_length_status'] = 0;
            if($genre['length_status'] != 0) {
                $kummerbund = $size['length'] - $body['body_length'];
                if($kummerbund <= 0.5 && $kummerbund >= -0.5) {
                    $size['body_length_status'] = 3;
                } elseif($kummerbund > 0.5 && $kummerbund <= 1.5) {
                    $size['body_length_status'] = 2;
                } elseif($kummerbund > 1.5) {
                    $size['body_length_status'] = 1;
                } elseif($kummerbund < -0.5 && $kummerbund >= -1.5) {
                    $size['body_length_status'] = 4;
                } elseif($kummerbund < -1.5) {
                    $size['body_length_status'] = 5;
                }
            }
            $size['s_width_status'] = 0;
            if($genre['s_width_status'] != 0) {
                $kummerbund = $size['s_width'] - $body['s_width'];
                if($kummerbund <= 0.5 && $kummerbund >= -0.5) {
                    $size['s_width_status'] = 3;
                } elseif($kummerbund > 0.5 && $kummerbund <= 1.5) {
                    $size['s_width_status'] = 2;
                } elseif($kummerbund > 1.5) {
                    $size['s_width_status'] = 1;
                } elseif($kummerbund < -0.5 && $kummerbund >= -1.5) {
                    $size['s_width_status'] = 4;
                } elseif($kummerbund < -1.5) {
                    $size['s_width_status'] = 5;
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
        
//         $goodsCollocation = WebApi_Brand_Goods_Collocation::
        $params['userHairStyle'] = $userHairStyle;
        $params['userFace'] = $userFace;
        $params['image'] = $image;
        $params['body'] = $body;
        $params['good'] = $good;
        $params['sizes'] = $sizes;
        $params['genre'] = $genre;
        $params['hairStyles'] = $hairstyles;
        return $this->display('detail',$params);
    }
    
}