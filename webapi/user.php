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
        $params = array();
        $params['username'] = isset($data['username']) ? $data['username'] : '';
        $params['name'] = isset($data['name']) ? $data['name'] : '';
        $params['status'] = isset($data['status']) ? $data['status'] : 1;
        $params['mobile'] = isset($data['mobile']) ? $data['mobile'] : '';
        $params['email'] = isset($data['email']) ? $data['email'] : '';
        $params['sex'] = isset($data['sex']) ? $data['sex'] : 2;
        $params['address'] = isset($data['address']) ? $data['address'] : '';
        $params['create_time'] = date('Y-m-d H:i:s');
        $params['update_time'] = date('Y-m-d H:i:s');
        $password = isset($data['password']) ? $data['password'] : '';
        $params['password'] = $this->encrypt($password);
        return CoreApi_User::instance()->insert($params);
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
    
}