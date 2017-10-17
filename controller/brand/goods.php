<?php
class Controller_Brand_Goods extends Controller_Base {
    /**
     * 首页
     */
    public function actionList() {
        
        $brandId = isset($_GET['brand_id']) ? $_GET['brand_id'] : 0;
        $genreId = isset($_GET['genre_id']) ? $_GET['genre_id'] : 0;
        $params = array();
        $params['brand_id'] = $brandId;
        if($genreId > 0 ) {
            $params['genre_id'] = $genreId;
        }
        $total = WebApi_Brand_Goods::instance()->getGoodsCountByParams($params);
        $goods = array();
        if($total > 0 ) {
            $goods = WebApi_Brand_Goods::instance()->getGoodsByParams($params);
        }
        
        foreach($goods as &$good) {
            $good['picture_url'] =  'http://'.MGR_DOMIAN.$good['picture_url'];
            $good['genre'] = WebApi_Genre::instance()->row('*',$good['genre_id']);
            $good['genre']['picture_url'] = 'http://'.MGR_DOMIAN.$good['genre']['picture_url'];
        }
            
        $params['goods'] = $goods;
        $params['total'] = $total;
        return $this->display('list', $params);
    }
    
    public function detail() {
        $uid =44;
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
        
        
        $userHw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
        if(empty($userHw)) {
            return $this->error('未找到用户身高体重数据');
        }
        $userHw = current($userHw);
        $brandsize = WebApi_Brand_Size::instance()->getSizesByParams(array('height'=>$userHw['height'], 'weight'=>$userHw['weight']));
        $params = array();
        if(!empty($brandsize)) {
            $brandsize = current($brandsize);
            $params['suit_brand_size'] = $brandsize;
        }
        $sizes = WebApi_Brand_Goods_Size::instance()->getSizesByParams(array('gid'=>$gid));
        $modelSize = WebApi_Model_Size::instance()->getSizesByParams(array('gid'=>$gid));
        if(empty($modelSize)) {
            $params['body'] = $body;
            $params['good'] = $good;
            $params['genre'] = $genre;
            return $this->display('detail',$params);
        }
        $modelSize = current($modelSize);
        foreach ($sizes as &$size) {
            $size['kummerbund_status'] = 0;
            if($genre['kummerbund_status'] != 0) {
                $kummerbund = $size['kummerbund'] - $modelSize['kummerbund'];
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
                $hipline = $size['hipline'] - $modelSize['hipline'];
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
                $longLegs = $size['outseam'] - $modelSize['long_legs'];
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
                $thighGirth = $size['thigh_girth'] - $modelSize['thigh_girth'];
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
                $bust = $size['bust'] - $modelSize['upper_chest_circumference'];
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
                $kummerbund = $size['length'] - $modelSize['body_length'];
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
                $kummerbund = $size['s_width'] - $modelSize['s_width'];
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
        $params['body'] = $body;
        $params['good'] = $good;
        $params['sizes'] = $sizes;
        $params['genre'] = $genre;
        return $this->display('detail',$params);
    }
    
}