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
    
}