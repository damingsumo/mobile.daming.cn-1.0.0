<?php
class Controller_User_Hairstyle extends Controller_Base {
    
    
    
    public function actionAdd() {
        $uid = account::getUid();
        $imageId = isset($_POST['image_id']) ? $_POST['image_id'] : 0;
        $hairColorId = isset($_POST['hair_color_id']) ? $_POST['hair_color_id'] : 0;
        $hairStyleId = isset($_POST['hair_style_id']) ? $_POST['hair_style_id'] : 0;
        if($hairStyleId <= 0) {
            return $this->error('请选择发型');
        }
        if($hairColorId <= 0) {
            return $this->error('请选择发色');
        }
        unset($_POST['image_id']);
        $res = WebApi_Image::instance()->update($_POST, $imageId);
        if(!$res) {
            return $this->error('添加失败');
        }
        return http::go('/index/index');
    }
    
    
    public function actionEdit() {
        $uid = account::getUid();
        if(empty($_POST)) {
            $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
            if(empty($image)) {
                return $this->error('未找到用户脸型');
            }
            $image = current($image);
        
            $hairStyles = WebApi_Image_HairStyle::instance()->getHairStylesByParams(array(), $page=1, $pageSzie=-1);
            if(empty($hairStyles)) {
                return $this->error('未找到脸型信息');
            }
            foreach ($hairStyles as &$hairStyle) {
                $hairStyle['show_url'] = $hairStyle['show_url'];
            }
            $hairColors = WebApi_Image_HairColor::instance()->getHairColorsByParams(array(), $page=1, $pageSzie=-1);
            if(empty($hairColors)) {
                return $this->error('未找到肤色信息');
            }
            foreach ($hairColors as &$hairColor) {
                $hairColor['picture_url'] = 'http://'.MGR_DOMIAN.$hairColor['picture_url'];
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
            $params = array();
            $params['userHairStyle'] = $userHairStyle;
            $params['userFace'] = $userFace;
            $params['hairStyles'] = $hairStyles;
            $params['hairColors'] = $hairColors;
            $params['image'] = $image;
            return $this->display('image/hairstyle/edit', $params);
        
        
        }
        $hairColorId = isset($_POST['hair_color_id']) ? $_POST['hair_color_id'] : 0;
        $hairStyleId = isset($_POST['hair_style_id']) ? $_POST['hair_style_id'] : 0;
        if($hairColorId <= 0) {
            return $this->error('请选择发色');
        }
        if($hairStyleId <= 0) {
            return $this->error('请选择发型');
        }
        $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(empty($image)) {
            return $this->error('未找到用户信息');
        }
        $image = current($image);
        $params['hair_color_id'] = $hairColorId;
        $params['hair_style_id'] = $hairStyleId;
        $res = WebApi_Image::instance()->update($params, $image['user_image_id']);
        if(!$res) {
            return $this->error('编辑失败');
        }
        http::go('/user/index');
    }
    
    public function ajaxGetHairstyle() {
        $hairStyleId = isset($_POST['hair_style_id']) ? $_POST['hair_style_id'] : 0;
        $uid = Account::getUid();
        if($hairStyleId <= 0 ) {
            return $this->ajaxError('发型ID错误');
        }
        $hairStyle = array();
        $hairStyle = WebApi_Image_HairStyle::instance()->row('*', $hairStyleId);
        if(empty($hairStyle)) {
            return $this->ajaxError('未找到发型数据');
        }
        $user = array();
        $user = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(!empty($user)) {
            $user = current($user);
        }
        $face = array();
        $complexion = array();
        $haircolor = array();
        if(empty($user)||$user['face_id'] == "") {
            $face = WebApi_Image_Face::instance()->getFacesByParams(array());
            $face = current($face);
        }else {
            $face = WebApi_Image_Face::instance()->row('*', $user['face_id']);
            if(empty($face)) {
                return $this->ajaxError('未找到脸部数据');
            }
        }
        if(empty($user)||$user['complexion_id'] == "") {
            $complexion = WebApi_Image_Complexion::instance()->getComplexionsByParams(array());
            $complexion = current($complexion);
        }else {
            $complexion = WebApi_Image_Complexion::instance()->row('*', $user['complexion_id']);
            if(empty($complexion)) {
                return $this->ajaxError('未找到肤色数据');
            }
        }
        if(empty($user)||$user['hair_color_id'] == "") {
            $haircolor = WebApi_Image_HairColor::instance()->getHairColorsByParams(array());
            $haircolor = current($haircolor);
        }else {
            $haircolor = WebApi_Image_HairColor::instance()->row('*', $user['hair_color_id']);
            if(empty($haircolor)) {
                return $this->ajaxError('未找到发色数据');
            }
        }
        $params = array();
        $params['hairstyle'] = $hairStyle;
        $params['complexion'] = $complexion;
        $params['haircolor'] = $haircolor;
        $params['face'] = $face;
        return $this->ajaxSuccess($params);
    }
    
    
    public function ajaxGetHairColor() {
        $hairColorId = isset($_POST['hair_color_id']) ? $_POST['hair_color_id'] : 0;
        $uid = Account::getUid();
        if($hairColorId <= 0 ) {
            return $this->ajaxError('发色ID错误');
        }
        $hairColor = array();
        $hairColor = WebApi_Image_HairStyle::instance()->row('*', $hairColorId);
        if(empty($hairColor)) {
            return $this->ajaxError('未找到发色数据');
        }
        $user = array();
        $user = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(!empty($user)) {
            $user = current($user);
        }
        $face = array();
        $complexion = array();
        $hairStyle = array();
        if(empty($user)||$user['face_id'] == "") {
            $face = WebApi_Image_Face::instance()->getFacesByParams(array());
            $face = current($face);
        }else {
            $face = WebApi_Image_Face::instance()->row('*', $user['face_id']);
            if(empty($face)) {
                return $this->ajaxError('未找到脸部数据');
            }
        }
        if(empty($user)||$user['complexion_id'] == "") {
            $complexion = WebApi_Image_Complexion::instance()->getComplexionsByParams(array());
            $complexion = current($complexion);
        }else {
            $complexion = WebApi_Image_Complexion::instance()->row('*', $user['complexion_id']);
            if(empty($complexion)) {
                return $this->ajaxError('未找到肤色数据');
            }
        }
        if(empty($user)||$user['hair_style_id'] == "") {
            $hairStyle = WebApi_Image_HairStyle::instance()->getHairStylesByParams(array());
            $hairStyle = current($hairStyle);
        }else {
            $hairStyle = WebApi_Image_HairStyle::instance()->row('*', $user['hair_style_id']);
            if(empty($hairStyle)) {
                return $this->ajaxError('未找到发型数据');
            }
        }
        $params = array();
        $params['hairstyle'] = $hairStyle;
        $params['complexion'] = $complexion;
        $params['haircolor'] = $hairColor;
        $params['face'] = $face;
        return $this->ajaxSuccess($params);
    }
    
}