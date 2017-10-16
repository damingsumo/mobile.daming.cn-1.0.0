<?php
class Controller_User_Hw extends Controller_Base {
    
    
    public function edit() {
        if(empty($_POST)) {
            $uid = account::getUid();
            $hw = WebApi_User_Hw::instance()->getHwsByParams(array('uid'=>$uid));
            if(!empty($hw)) {
                $hw = current($hw);
            }
            $params = array();
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
        return $this->success('修改成功','/user/index');
    }
    
    
}