<?php
class Controller_User extends Controller_Base {
    /**
     * 首页
     */
    public function index() {
        $uid = account::getUid();
        $userHw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
        if(empty($userHw)) {
            return $this->error('未找到用户身高体重');
        }
        $userHw = current($userHw);
        $hwPhoto = WebApi_Hw::instance()->getHwphotosByParams(array('height'=>$userHw['height'],'weight'=>$userHw['weight']));
        $params['hwPhoto'] = $hwPhoto;
        $params['brandId'] = Account::getBrandId();
        return $this->display('index', $params);
    }
    
    public function actionGoAdd() {
        $hwPhoto = WebApi_Hw::instance()->getHwphotosByParams(array());
        if(empty($hwPhoto)) {
            return $this->error('未找到图片数据');
        }
        $hairstyle = WebApi_Image_Hairstyle::instance()->row('*',1);
        $complexion = WebApi_Image_Complexion::instance()->row('*',1);
        $haircolor = WebApi_Image_HairColor::instance()->row('*',1);
        $face = WebApi_Image_Face::instance()->row('*',1);
        $params = array();
        $params['hairstyle'] = $hairstyle;
        $params['complexion'] = $complexion;
        $params['haircolor'] = $haircolor;
        $params['face'] = $face;
        $params['hwPhoto'] = $hwPhoto;
        return $this->display('add',$params);
    }
    
    
    public function add() {
        $height = isset($_POST['height']) ? $_POST['height'] : 0;
        $weight = isset($_POST['weight']) ? $_POST['weight'] : 0;
        $age = isset($_POST['age']) ? $_POST['age'] : 0;
        $chest_circumference = isset($_POST['chest_circumference']) ? $_POST['chest_circumference'] : 0;
        $europe_chest_circumference = isset($_POST['europe_chest_circumference']) ? $_POST['europe_chest_circumference'] : 0;
        $cupSize = isset($_POST['cup_size']) ? $_POST['cup_size'] : 0;
        
        if($height == 0) {
            return $this->error('请选择身高');
        }
        if($weight == 0) {
            return $this->error('请选择体重');
        }
        if($age == 0) {
            return $this->error('请选择年龄');
        }
        if($chest_circumference == 0 && $europe_chest_circumference == 0) {
            return $this->error('请选择下胸围');
        }
        if($cupSize == 0) {
            return $this->error('请选择罩杯');
        }
        $params = array();
        $uid = Account::getUid();
        $_POST['uid'] = $uid;
        $res = WebApi_User_Hw::instance()->add($_POST);
        if(!$res) {
            return $this->error('添加失败');
        }
        $res = WebApi_User_Figure::instance()->add(array('uid'=>$uid));
        if(!$res) {
            return $this->error('添加失败');
        }
        $userBody = array();
        $userBody = WebApi_Bodycomputing::instance()->computing($_POST);
        if(empty($userBody)) {
            return $this->error('用户身体数据错误');
        }
        $userBody['uid'] = $uid; 
        $res = WebApi_User_Body::instance()->add($userBody);
        if(!$res) {
            return $this->error('添加用户身体数据错误');
        }
        
        $imageId = WebApi_Image::instance()->add(array('uid'=>$uid));
        if(!$imageId) {
            return $this->error('添加失败');
        }
        
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
        
        $userHairStyle = array();
        $userHairStyle = WebApi_Image_HairStyle::instance()->getHairStylesByParams(array());
        $userHairStyle = current($userHairStyle);
        $userFace = array();
        $userFace = WebApi_Image_Face::instance()->getFacesByParams(array());
        $userFace = current($userFace);
        $params['userHairStyle'] = $userHairStyle;
        $params['userFace'] = $userFace;
        $params['faces'] = $faces;
        $params['complexions'] = $complexions;
        $params['imageId'] = $imageId;
//         print_r($params);exit;
        return $this->display('image/face/add',$params);
         
    }
    
    /***
     * 转到意见反馈
     */
    public function actionGoFeedback() {
        return $this->display('feedback');
    }
    
    
    public function actionFeedback() {
        $params = array();
        $params['uid'] = Account::getUid();
        $params['note'] = isset($_POST['note']) ? $_POST['note'] : '';
        $params['phone'] = isset($_POST['phone']) ? $_POST['phone'] : 0;
        if($params['uid'] == 0) {
            return $this->error('用户名错误');
        }
        if($params['note'] == '') {
            return $this->error('请输入反馈内容');
        }
        
        $feedbackId = WebApi_User_Feedback::instance()->add();
        if(!$feedbackId) {
            return $this->error('意见反馈提交失败');
        }
        return $this->success('反馈成功','/index');
    }
    
}