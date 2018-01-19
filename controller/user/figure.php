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
            if($figure['waist'] < 5) {
                $localfigure['waist'] = 1;
            }
//             if($figure['belly'] < 5) {
//                 $localfigure['belly'] = 1;
//             }
//             if($figure['stern_type'] < 5) {
//                 $localfigure['stern_type'] = 1;
//             }
            if($figure['hip_type'] < 5) {
                $localfigure['hip_type'] = 1;
            }
//             if($figure['shoulder'] < 5) {
//                 $localfigure['shoulder'] = 1;
//             }
            if($figure['arm'] < 5) {
                $localfigure['arm'] = 1;
            }
//             if($figure['arm_circumference'] < 5) {
//                 $localfigure['arm_circumference'] = 1;
//             }
//             if($figure['hip'] < 5) {
//                 $localfigure['hip'] = 1;
//             }
//             if($figure['thigh'] < 5) {
//                 $localfigure['thigh'] = 1;
//             }
//             if($figure['leg'] < 5) {
//                 $localfigure['leg'] = 1;
//             }
//             if($figure['body_thick'] < 5) {
//                 $localfigure['body_thick'] = 1;
//             }
//             if($figure['body_length'] < 5) {
//                 $localfigure['body_length'] = 1;
//             }
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
    
    
    function AjaxChangeFigure() {
        $uid = account::getUid();
        $key = isset($_POST['key']) ? isset($_POST['key'])  : '';
        $localFigure = isset($_POST['localFigure']) ? isset($_POST['localFigure']) : 1;
        $figure = WebApi_User_Figure::instance()->getFiguresByParams(array('uid'=>$uid));
        if(empty($figure)) {
            return $this->ajaxError('未找到数据');
        }
        $figure = current($figure);
        if($figure['waist'] < 5) {
            $figure['waist'] = 1;
        }
//         if($figure['belly'] < 5) {
//             $figure['belly'] = 1;
//         }
//         if($figure['stern_type'] < 5) {
//             $figure['stern_type'] = 1;
//         }
        if($figure['hip_type'] < 5) {
            $figure['hip_type'] = 1;
        }
//         if($figure['shoulder'] < 5) {
//             $figure['shoulder'] = 1;
//         }
        if($figure['arm'] < 5) {
            $figure['arm'] = 1;
        }
//         if($figure['arm_circumference'] < 5) {
//             $figure['arm_circumference'] = 1;
//         }
//         if($figure['hip'] < 5) {
//             $figure['hip'] = 1;
//         }
//         if($figure['thigh'] < 5) {
//             $figure['thigh'] = 1;
//         }
//         if($figure['leg'] < 5) {
//             $figure['leg'] = 1;
//         }
//         if($figure['body_thick'] < 5) {
//             $figure['body_thick'] = 1;
//         }
//         if($figure['body_length'] < 5) {
//             $figure['body_length'] = 1;
//         }
        $userHw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
        if(empty($userHw)) {
            return $this->error('未找到用户身高体重');
        }
        $userHw = current($userHw);
        $figure[$key] = $localFigure;
        $figure['height'] = $userHw['height'];
        $figure['weight'] = $userHw['weight'];
        $hwPhoto = WebApi_Hw::instance()->getHwphotosByParams($figure);
        if(empty($hwPhoto)) {
            return $this->error('未找到图片数据');
        }
        return $this->ajaxSuccess($hwPhoto);
        
    }
}