<?php
/**
 * 首页操作类 
 * @author zq
 * @version 1.0.0 
 * 
 */
class Controller_Index extends Controller_Base {
	/**
	 * @note 登录
	 * @author
	 */
// 	public function login() {
// 		if(Account::checkLogin()) {
// 			http::go('/user/add');
// 		}
// 		return $this->display('login');
// 	}
	
	/**
	 * @note 首页index
	 */
	public function index() {
	    $uid = Account::getUid();
	    $total = WebApi_Image::instance()->getImagesCountByParams(array('uid'=>$uid));
	    print_r($total);exit;
	    if($total == 0) {
	        return http::go('/user/goadd');
	    }
	    $brands = WebApi_Brand::instance()->getBrandsByParams(array());
	    $params['brands'] = $brands;
		return $this->display('index/index', $params);
	}
	
	/**
	 * 跳转注册页面
	 */
	public function goRegister() {
	    return $this->display('index/register');
	}
	
	/**
	 * 注册
	 */
	public function register() {
	    $username = isset($_POST['username']) ? $_POST['username'] : '';
	    $password = isset($_POST['password']) ? $_POST['password'] : '';
	    $total = WebApi_User::instance()->getUsersCountByParams(array('username'=>$username));
	    if($total != 0) {
	        return $this->ajaxError('该用户名已被注册');
	    }
	    $uid = WebApi_User::instance()->add(array('username'=>$username,'password'=>$password));
	     
	    $account = WebApi_User::instance()->login($username, $password);
	    if($account == false) {
	        return $this->ajaxError('登录失败,请重新登录');
	    }
	    return $this->ajaxSuccess('注册成功');
	     
	}
	
}
?>