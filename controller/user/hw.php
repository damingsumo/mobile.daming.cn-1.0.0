<?php
class Controller_User_Hw extends Controller_Base {
    
    
    public function actionEdit() {
        if(empty($_POST)) {
            $uid = account::getUid();
            $hw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
            if(!empty($hw)) {
                $hw = current($hw);
            }
            $userHw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
            if(empty($userHw)) {
                return $this->error('未找到用户身高体重');
            }
            $userHw = current($userHw);
            $localfigure['height'] = $userHw['height'];
            $localfigure['weight'] = $userHw['weight'];
            $hwPhoto = WebApi_Hw::instance()->getHwphotosByParams($localfigure);
            if(empty($hwPhoto)) {
                return $this->error('未找到图片数据');
            }
            $image = WebApi_Image::instance()->row('*',$uid);
            $hairstyle = WebApi_Image_Hairstyle::instance()->row('*',$image['hair_style_id']);
            $complexion = WebApi_Image_Complexion::instance()->row('*',$image['complexion_id']);
            $haircolor = WebApi_Image_HairColor::instance()->row('*',$image['hair_color_id']);
            $face = WebApi_Image_Face::instance()->row('*',$image['face_id']);
            $params = array();
            $params['hairstyle'] = $hairstyle;
            $params['complexion'] = $complexion;
            $params['haircolor'] = $haircolor;
            $params['face'] = $face;
            $params['hwPhoto'] = $hwPhoto;
            $params['hw'] = $hw;
            return $this->display('image/hw/edit',$params);
        }
        $userHwId = isset($_POST['user_hw_id']) ? $_POST['user_hw_id'] : 0;
        if($userHwId < 0) {
           return $this->error('用户身材ID错误'); 
        }
        $res = WebApi_User_Hw::instance()->update($_POST, $userHwId);
        if(!$res) {
            return $this->error('身材修改失败');
        }
        http::go('/user/index');
    }
    
    public function ajaxGetHwPhoto() {
        $uid = account::getUid();
        $height= isset($_POST['height']) ? $_POST['height'] : 0;
        $weight = isset($_POST['weight']) ? $_POST['weight'] : 0;
        if(empty($height)) {
            return $this->error('身高错误');
        }
        if(empty($weight)) {
            return $this->error('体重错误');
        }
        $hwPhoto = WebApi_Hw::instance()->getHwphotosByParams(array('height'=>$height,'weight'=>$weight));
        $image = WebApi_Image::instance()->row('*',$uid);
        $hairstyle = WebApi_Image_Hairstyle::instance()->row('*',$image['hair_style_id']);
        $complexion = WebApi_Image_Complexion::instance()->row('*',$image['complexion_id']);
        $haircolor = WebApi_Image_HairColor::instance()->row('*',$image['hair_color_id']);
        $face = WebApi_Image_Face::instance()->row('*',$image['face_id']);
        $params = array();
        $params['hairstyle'] = $hairstyle;
        $params['complexion'] = $complexion;
        $params['haircolor'] = $haircolor;
        $params['face'] = $face;
        $params['hwPhoto'] = $hwPhoto;
        return $this->ajaxSuccess($params);
        
    }
}