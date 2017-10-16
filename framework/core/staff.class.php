<?php
/**
 * 后台员工类
 *
 */
class Staff {
	
	public static function getStaffId() {
		return http::SESSION('sid');
	}
	
	public static function getName() {
		return http::SESSION('name');
	}
	public static function getUserName() {
		return http::SESSION('username');
	}
	public static function makeKey($staffId) {
		$clientIP = http::getClientIP ();
		return md5(SYSTEM_ACCESS_KEY . $staffId . $clientIP);
	}
	
	//设置成登录状态 	
	static function setLogin($staff, $remember = 1) {
		http::setSession('sid', $staff->sid);
		http::setSession('name', $staff->name);
		http::setSession('username', $staff->username);
		
		$key = self::makeKey($staff->sid);
		$expire = time () + COOKIE_EXPIRE_TIME; //默认1小时
		http::setCookie('sid', $staff->sid, $expire);
		http::setCookie('name', $staff->name, $expire);
		http::setCookie('username', $staff->username, $expire);
		http::setCookie('staff_access_key', $key, $expire);
		if($remember) {
			http::setCookie('staff_remember', $remember, $expire);
		} else {
			http::delCookie('staff_remember');
		}
		return true;
	}
	
	/**
	 * 全站统一检测是否登录方法
	 * Tiger
	 * @return bool true/false
	 */
	static function checkLogin() {
		if(http::SESSION('sid') != '') {
			return true;
		}
		$remember = http::COOKIE('staff_remember');
		if(! $remember) {
			return false;
		}
		
		$staff['sid'] = http::COOKIE('sid');
		$key = http::COOKIE('staff_access_key');
		$staff['name'] = http::COOKIE('name');
		$staff['username'] = http::COOKIE('username');
		
		if($staff['sid'] == '' || $staff['name'] == '' || $staff['username'] == '') {
			return false;
		}
		
		$accessKey = self::makeKey($staff['sid']);
		if($key == $accessKey) {
			$result = self::setLogin($staff);
		}
		return true;
	}
	
	/**
	 * 统一登出方法
	 * 
	 */
	static function setLogout() {
		http::delSession('sid');
		http::delSession('name');
		http::delSession('username');
		
		http::delCookie('sid');
		http::delCookie('name');
		http::delCookie('username');
	}
	
	/**
	 * 统一给密码加密,注册的时候,先密码为空,创建用户成功后, 重新生成密码进行更新操作.
	 * 根据用户的创建日期生成salt
	 */
	public static function makePassword($password, $createTime) {
		if($password == '') {
			return false;
		}
		$salt = strtotime($createTime);
		if(! $salt) {
			return false;
		}
		return md5(substr(md5(date('Y-m-d', $salt) . 'thisisabigproblem'), 3, 23) . $password);
	}
	
	/**
	 * 随机生成用户密码,明文,加密需要使用 user::makePassword();
	 *
	 */
	public static function randPassword($length = 8) {
		$randSource = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
		$randSourceCount = count($randSource);
		$randStr = '';
		for($i = 0; $i < $length; ++ $i) {
			$randIndex = mt_rand(0, $randSourceCount - 1 );
			$randStr .= $randSource[$randIndex];
		}
		return $randStr;
	}

}

?>