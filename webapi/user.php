<?php
class WebApi_User extends WebApi{

    private static $instance__;

    public static function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }
    
    
    public function getUsersByParams($params, $page = 1, $pageSize = -1) {
        if(!is_array($params)) {
            return array();
        }
        return CoreApi_User::instance()->getUsersByParams($params, $page, $pageSize);
    }
    
    
    public function getUsersCountByParams($params) {
        if(!is_array($params)) {
            return false;
        }
        return CoreApi_User::instance()->getUsersCountByParams($params);
    }
    
    public function add($data) {
        if(!is_array($data)) {
            return false;
        }
        return CoreApi_User::instance()->insert($data);
    }
    
    public function login($username, $password, $remember = true) {
        if($username == '' || $password == '') {
            return false;
        }
        $account = CoreApi_User::instance()->search('*', array('username' => $username, 'status' => 1), 1, 1);
        if(count($account) != 1) {
            return false;
        }
        $account = current($account);
        if($account['password'] == $this->encrypt($password)) {
            Account::setLogin($account, $remember);
            return $account;
        }
        return false;
    }
    
    /**
     * 帐户统一加密方式
     * @param string $string 加密字符串
     * @author Tiger
     * @return string 加密后字符串
     */
    private function encrypt($string) {
        return md5($string);
    }
    
    
    public function getUserByOpenId($openid) {
        if($openid == '') {
            return array();
        }
        return CoreApi_User::instance()->getUserByOpenId($openid);
    }
    
    
    public function edit($data, $uid) {
        if(!is_array($data) || $uid== 0) {
            return false;
        }
        return CoreApi_User::instance()->update($data);
    }
    
    public function addUser($userInfoArr, $openid) {
        $thisOpenId = isset($userInfoArr['openid']) ? $userInfoArr['openid'] : '';
        $nickName = isset($userInfoArr['nickname']) ? $userInfoArr['nickname'] : '';
        if($thisOpenId == '') {
            return $this->error('授权失败，部分功能不能使用--3');
        }
        
        //emoji字符过滤
        require_once(FW_PATH . '/plugins/emoji/emoji.php');
        $tmpNick = emoji_unified_to_html($nickName);
        if(strpos($tmpNick, 'emoji') !== false ){
            $nickName = '';
        }
        $weixinUser = WebApi_User::instance()->getUserByOpenId($openid);
        
        if(empty($weixinUser)) {
            //插入微信表和user表
            $userData['username'] = $nickName;
            $userData['password'] = '';
            $userData['nick'] = $nickName;
            $userData['mobile'] = isset($userInfoArr['mobile']) ? $userInfoArr['mobile'] : 0;
            $userData['sex'] = isset($userInfoArr['sex']) ? $userInfoArr['sex'] : 0;
            $userData['open_id'] = $openid;
            $userData['language'] = isset($userInfoArr['language']) ? $userInfoArr['language'] : '';
            $userData['city'] = isset($userInfoArr['city']) ? $userInfoArr['city'] : '';
            $userData['province'] = isset($userInfoArr['province']) ? $userInfoArr['province'] : '';
            $userData['country'] = isset($userInfoArr['country']) ? $userInfoArr['country'] : '';
            $userData['thumb'] = isset($userInfoArr['headimgurl']) ? $userInfoArr['headimgurl'] : '';
            $userData['unionid'] = isset($userInfoArr['unionid']) ? $userInfoArr['unionid'] : '';
            $userData['remark'] = isset($userInfoArr['remark']) ? $userInfoArr['remark'] : '';
            $userData['groupid'] = isset($userInfoArr['groupid']) ? $userInfoArr['groupid'] : '';
            $userData['subscribe_time'] = $userData['create_time'] = date('Y-m-d H:i:s');
            $userData['status'] = 1;
            $userData['create_time'] = date('Y-m-d H:i:s');
            $userData['update_time'] = date('Y-m-d H:i:s');
            $res = WebApi_User::instance()->add($userData);
            if($res === false) {
                return $this->error('授权失败，部分功能不能使用--4');
            }
            $uid = $res;
        }else {
            //更新微信信息
            $userData['nick'] = $nickName;
            $userData['sex'] = isset($userInfoArr['sex']) ? $userInfoArr['sex'] : 0;
            $userData['open_id'] = $openid;
            $userData['language'] = isset($userInfoArr['language']) ? $userInfoArr['language'] : '';
            $userData['city'] = isset($userInfoArr['city']) ? $userInfoArr['city'] : '';
            $userData['province'] = isset($userInfoArr['province']) ? $userInfoArr['province'] : '';
            $userData['country'] = isset($userInfoArr['country']) ? $userInfoArr['country'] : '';
            $userData['thumb'] = isset($userInfoArr['headimgurl']) ? $userInfoArr['headimgurl'] : '';
            $userData['update_time'] = date('Y-m-d H:i:s');
            $res = WebApi_User::instance()->edit($userData, $weixinUser['uid']);
            $uid = $weixinUser['uid'];
        }
        Http::setSession('uid', $uid);
        Http::setSession('openid', $openid);
        //在把用户的原始信息放进session中
        //为了延长授权时间把openid存储到cookie中
        $userToken = substr(SYSTEM_ACCESS_KEY, 1, 6).$openid.substr(SYSTEM_ACCESS_KEY, 0, -3);
        Http::setCookie('userToken', $userToken, time()+ 24*3600);
    }
    
    
    
}