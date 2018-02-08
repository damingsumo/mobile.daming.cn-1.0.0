<?php
class Controller_User_Figure extends Controller_Base {
    
    
    /***
     * 
     * 身材特征修改
     */
    public function actionEdit() {
        if(empty($_POST)) {
            $uid = account::getUid();
            $figure = WebApi_User_Figure::instance()->getFiguresByParams(array('uid'=>$uid));
            if(empty($figure)) {
                return $this->error('未找到身材数据');
            }
            $localfigure = array();
            $figure = current($figure);
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
            $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
            if(empty($image)) {
                return $this->error('未找到用户图片数据');
            }
            $image = current($image);
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
            $params['figure'] = $figure;
            return $this->display('image/figure/edit',$params);
        }
        $userFigureId= isset($_POST['user_figure_id']) ? $_POST['user_figure_id'] : 0;
        if($userFigureId < 0) {
            return $this->error('用户身材ID错误');
        }
        $res = WebApi_User_Figure::instance()->update($_POST, $userFigureId);
        if(!$res) {
            return $this->error('身材修改失败');
        }
        http::go('/user/index');
    }
    
    /***
     * 
     * 身材数据修改
     * 
     */
    public function actionDetail() {
        if(empty($_POST)) {
            $uid = account::getUid();
            $body = WebApi_User_Body::instance()->getBodysByParams(array('uid'=>$uid));
            if(empty($body)) {
                return $this->error('未找到身体数据');
            }
            $body = current($body);
            $data = array();
            $figure = WebApi_User_Figure::instance()->getFiguresByParams(array('uid'=>$uid));
            if(empty($figure)) {
                return $this->error('未找到用户数据');
            }
            $figure = current($figure);
            $hw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
            if(empty($hw)) {
                return $this->error('未找到用户数据');
            }
            $hw = current($hw);
            $data = $hw;
            $data['waist'] = $figure['waist'];
            $data['belly'] = $figure['belly'];
            $data['stern_type'] = $figure['stern_type'];
            $data['hip_type'] = $figure['hip_type'];
            $data['shoulder'] = $figure['shoulder'];
            $data['arm'] = $figure['arm'];
            $data['arm_circumference'] = $figure['arm_circumference'];
            $data['hip'] = $figure['hip'];
            $data['thigh'] = $figure['thigh'];
            $data['leg'] = $figure['leg'];
            $data['body_thick'] = $figure['body_thick'];
            $data['body_length'] = $figure['body_length'];
            $bodyComputing = WebApi_Bodycomputing::instance()->computing($data);
            $params = array();
            $params['body'] = $body;
            $params['bodyComputing'] = $bodyComputing;
            return $this->display('image/figure/detail',$params);
        }
        $userBodyId = isset($_POST['user_body_id']) ? $_POST['user_body_id'] : 0;
        if($userBodyId <= 0) {
            return $this->error('用户身体数据ID错误');
        }
        $res = WebApi_User_Body::instance()->update($_POST, $userBodyId);
        if(!$res) {
            return $this->error('身材修改失败');
        }
        http::go('/user/figure/edit');
    }
    
    
    function ajaxChangeFigure() {
        $uid = account::getUid();
        $key = isset($_POST['key']) ? $_POST['key'] : '';
        $localFigure = isset($_POST['localfigure']) ? $_POST['localfigure'] : 1;
        $userHw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
        if(empty($userHw)) {
            return $this->error('未找到用户身高体重');
        }
        $userHw = current($userHw);
        $data = array();
        $data[$key] = $localFigure;
        $data['height'] = $userHw['height'];
        $data['weight'] = $userHw['weight'];
        $hwPhoto = WebApi_Hw::instance()->getHwphotosByParams($data);
        if(empty($hwPhoto)) {
            return $this->error('未找到图片数据');
        }
        $image = WebApi_Image::instance()->getImagesByParams(array('uid'=>$uid));
        if(empty($image)) {
            return $this->error('未找到用户图片数据');
        }
        $image = current($image);
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