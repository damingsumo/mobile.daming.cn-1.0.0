<?php
class Controller_User_Hairstyle extends Controller_Base {
    
    
    
    public function add() {
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
        $res = WebApi_Image::instance()->update($_POST, $imageId);
        if(!$res) {
            return $this->error('添加失败');
        }
        return http::go('/index/index');
    }
    
    
    public function edit() {
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
                $hairStyle['show_url'] = 'http://'.MGR_DOMIAN.$hairStyle['show_url'];
            }
            $hairColors = WebApi_Image_HairColor::instance()->getHairColorsByParams(array(), $page=1, $pageSzie=-1);
            if(empty($hairColors)) {
                return $this->error('未找到肤色信息');
            }
            foreach ($hairColors as &$hairColor) {
                $hairColor['picture_url'] = 'http://'.MGR_DOMIAN.$hairColor['picture_url'];
            }
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
        return $this->success('修改成功', '/user/index');
        
        
        
        
        
    }
    
}