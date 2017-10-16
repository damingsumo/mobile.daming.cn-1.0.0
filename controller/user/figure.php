<?php
class Controller_User_Figure extends Controller_Base {
    
    public function edit() {
        if(empty($_POST)) {
            $uid = account::getUid();
            $figure = WebApi_User_Figure::instance()->getFiguresByParams(array('uid'=>$uid));
            if(!empty($figure)) {
                $figure = current($figure);
            }
            $params = array();
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
        return $this->success('修改成功','/user/index');
        
        
        
        
    }
    
    public function detail() {
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
        return $this->success('修改成功','/user/figure/edit');
        
        
    }
    
}