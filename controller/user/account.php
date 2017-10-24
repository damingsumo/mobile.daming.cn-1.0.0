<?php
/**
 * 场馆账户管理
 * @author zq
 *
 */
class Controller_User_Account extends Controller_Base {
	
	/**
	 * @note 商户登录
	 * @param string  username 商户名
	 * @return string password 密码
	 * @author huwl
	 */
	public function login() {
		$username = isset($_POST['username']) ? $_POST['username'] : '';
		$password = isset($_POST['password']) ? $_POST['password'] : '';
		if($username == '') {
			return $this->display('user/error', array('msg' => '请输入商户名'));
		}
		if($password == '') {
			return $this->display('user/error', array('msg' => '请输入密码'));
		}
		$account = WebApi_User::instance()->login($username, $password);
		if($account == false) {
			return $this->display('user/error', array('msg' => '密码错误,请重新登录'));
		}
		
		http::go('/index/index');
	}
}

?>