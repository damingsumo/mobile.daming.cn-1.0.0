<?php
class Controller_User_Face extends Controller_Base {
    
    
    
    public function add() {
        $uid = account::getUid();
        $faceId = isset($_POST['face_id']) ? $_POST['face_id'] : 0;
        $complexion = isset($_POST['complexion_id']) ? $_POST['complexion_id'] : 0;
        $_POST['uid'] = $uid;
        if($faceId <= 0) {
            return $this->error('请选择脸型');
        }
        if($complexion <= 0) {
            return $this->error('请选择肤色');
        }
        $imageId = WebApi_Image::instance()->add($_POST);
        if(!$imageId) {
            return $this->error('添加失败');
        }
        
        $hairStyles = WebApi_Image_HairStyle::instance()->getHairStylesByParams(array());
        if(empty($hairStyles)) {
            return $this->error('未找到发型信息');
        }
        foreach ($hairStyles as &$hairStyle) {
            $hairStyle['show_url'] = 'http://'.MGR_DOMIAN.$hairStyle['show_url'];
        }
        $hairColors = WebApi_Image_HairColor::instance()->getHairColorsByParams(array());
        if(empty($hairColors)) {
            return $this->error('未找到肤色信息');
        }
        foreach ($hairColors as &$hairColor) {
            $hairColor['picture_url'] = 'http://'.MGR_DOMIAN.$hairColor['picture_url'];
        }
        $parmas = array();
        $params['hairStyles'] = $hairStyles;
        $params['hairColors'] = $hairColors;
        $params['image_id'] = $imageId;
        return $this->display('image/hairstyle/add', $params);
    }
    
    public function edit() {
        $uid = account::getUid();
        if(empty($_POST)) {
            $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
            if(empty($image)) {
                return $this->error('未找到用户脸型');
            }
            $image = current($image);
            
            $faces = WebApi_Image_Face::instance()->getFacesByParams(array(), $page=1, $pageSzie=-1);
            if(empty($faces)) {
                return $this->error('未找到脸型信息');
            }
            foreach ($faces as &$face) {
                $face['show_url'] = 'http://'.MGR_DOMIAN.$face['show_url'];
            }
            $complexions = WebApi_Image_Complexion::instance()->getComplexionsByParams(array(), $page=1, $pageSzie=-1);
            if(empty($complexions)) {
                return $this->error('未找到肤色信息');
            }
            foreach ($complexions as &$complexion) {
                $complexion['picture_url'] = 'http://'.MGR_DOMIAN.$complexion['picture_url'];
            }
            $params['faces'] = $faces;
            $params['complexions'] = $complexions;
            $params['image'] = $image;
            return $this->display('image/face/edit', $params);
            
            
        }
        $faceId = isset($_POST['face_id']) ? $_POST['face_id'] : 0;
        $complexion = isset($_POST['complexion_id']) ? $_POST['complexion_id'] : 0;
        if($faceId <= 0) {
            return $this->error('请选择脸型');
        }
        if($complexion <= 0) {
            return $this->error('请选择肤色');
        }
        $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(empty($image)) {
            return $this->error('未找到用户信息');
        }
        $image = current($image);
        $params['face_id'] = $faceId;
        $params['complexion_id'] = $complexion;
        $res = WebApi_Image::instance()->update($params, $image['user_image_id']);
        if(!$res) {
            return $this->error('编辑失败');
        }
        http::go('/user/index');
    }
    
    
    /***
     * 获取脸型信息
     */
    public function ajaxGetFace() {
        $faceId = isset($_POST['face_id']) ? $_POST['face_id'] : 0;
        $uid = Account::getUid();
        if($faceId <= 0 ) {
            return $this->ajaxError('脸型ID错误');
        }
        $face = array();
        $face = WebApi_Image_Face::instance()->row('*', $faceId);
        if(empty($face)) {
            return $this->ajaxError('未找到脸型数据');
        }
        $user = array();
        $user = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        $hairstyle = array();
        $hairstyle = WebApi_Image_HairStyle::instance()->row('*', $user['hair_style_id']);
        if(empty($facestyle)) {
            return $this->ajaxError('未找到发型数据');
        }
        $params = array();
        $params['hairstyle'] = $hairstyle;
        $params['face'] = $face;
        return $this->ajaxSuccess($params);
    }
}