<?php
/**
 * 后台账户类
 *
 */
class Account {
	
	public static function getUid() {
		return http::SESSION('uid');
	}
	
	public static function makeKey($accountId) {
		$clientIP = http::getClientIP ();
		return md5(SYSTEM_ACCESS_KEY . $accountId . $clientIP);
	}
	
	public static function getBrandId() {
	    return http::SESSION('brand_id');
	}
	
	
	static function setBrandId($brandId, $remember = 1) {
	    http::setSession('brand_id', $brandId);
	}
	
	
	//设置成登录状态 	
	static function setLogin($account, $remember = 1) {
		http::setSession('uid', $account ['uid']);
		http::setSession('username', $account ['username']);
		
		$key = self::makeKey($account ['uid']);
		$expire = time () + COOKIE_EXPIRE_TIME; //默认1小时
		http::setCookie('uid', $account ['uid'], $expire);
		http::setCookie('username', $account ['username'], $expire);
		http::setCookie('user_key', $key, $expire);
		if ($remember) {
			http::setCookie('user_remember', $remember, $expire);
		} else {
			http::delCookie('user_remember');
		}
		return true;
	}
	
	/**
	 * 全站通用获得当前场馆管理ID的方法
	 * @todo 多个场馆的支持
	 */
	static function getManageStadiumId() {
		$stadiumAccountId = http::SESSION('stadium_account_id');
		if (! $stadiumAccountId) {
			return false;
		}
		$accountStadiumId = http::SESSION('stadium_id'); //一直存在COOKIE中
		if (! $accountStadiumId) {
			//重新去数据库中查询, 目前只做一个场馆,@todo
			$accountStadium = CoreApi_Stadium_Account_Mapping::instance ()->search(array ('stadium_id'), array ('stadium_account_id' => $stadiumAccountId, 'status' => 1), 1, 1);
			
			if (! empty($accountStadium)) {
				$accountStadium = current($accountStadium);
				http::COOKIE('account_stadium_id', $accountStadium ['stadium_id']);
				$accountStadiumId = $accountStadium ['stadium_id'];
			}
		}
		
		return $accountStadiumId;
	}
	
	/**
	 * 全站统一检测是否登录方法
	 * Tiger
	 * @return bool true/false
	 */
	static function checkLogin() {
		if (http::SESSION('uid') != '') {
			return true;
		}
		if (http::SESSION('user_hw_id') == '') {
		    return false;
		}
		$remember = http::COOKIE('user_remember');
		if (! $remember) {
			return false;
		}
		
		$account ['uid'] = http::COOKIE('uid');
		$key = http::COOKIE('user_access_key');
		$account ['username'] = http::COOKIE('username');
		
		if ($account ['uid'] == '' || $account ['username'] == '') {
			return false;
		}
		
		$accessKey = self::makeKey($account ['uid']);
		if ($key == $accessKey) {
			$result = self::setLogin($account);
		}
		return true;
	}
	
	/**
	 * 统一登出方法
	 * 
	 */
	static function setLogout() {
		http::delSession('stadium_account_id');
		http::delSession('stadium_id');
		http::delSession('is_admin');
		http::delSession('stadium_account_name');
		http::delSession('stadium_account_username');
		
		http::delCookie('stadium_account_id');
		http::delCookie('is_admin');
		http::delCookie('stadium_account_name');
		http::delCookie('stadium_account_username');
	}
	
	/**
	 * 统一给密码加密,注册的时候,先密码为空,创建用户成功后, 重新生成密码进行更新操作.
	 * 根据用户的创建日期生成salt
	 */
	public static function makePassword($password, $createTime) {
		if ($password == '') {
			return false;
		}
		$salt = strtotime($createTime);
		if (! $salt) {
			return false;
		}
		return md5(substr(md5(date('Y-m-d', $salt) . 'thisisabigproblem'), 3, 23) . $password);
	}
	
	/**
	 * 随机生成用户密码,明文,加密需要使用 user::makePassword();
	 *
	 */
	public static function randPassword($length = 8) {
		$randSource = array ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
		$randSourceCount = count($randSource);
		$randStr = '';
		for($i = 0; $i < $length; ++ $i) {
			$randIndex = mt_rand(0, $randSourceCount - 1 );
			$randStr .= $randSource [$randIndex];
		}
		return $randStr;
	}

}

?>