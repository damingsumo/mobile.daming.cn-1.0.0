<?php
header('content-type:text/html; charset=utf-8');
date_default_timezone_set('Asia/shanghai');
define('ROOT_PATH',dirname(__FILE__));
define('LIB_PATH',ROOT_PATH.'/Lib');
define('PROJECT_CONFIG', ROOT_PATH.'/Config');
require_once(ROOT_PATH.'/Conf/Conf.php');
require_once(ROOT_PATH.'/Lib/db.php');
require_once(ROOT_PATH.'/Lib/http.php');
require_once(ROOT_PATH.'/Lib/filter.php');
require_once(ROOT_PATH.'/Lib/remote.php');
// 设置程序内存使用 不限制
ini_set('memory_limit',-1);

// 程序最大运行时间 设置成 不限制
ini_set('max_execution_time',0);
//Post变量由2M修改为8M，此值改为比upload_max_filesize要大  
ini_set('post_max_size', '100M');
//set_time_limit(0);

// 显示报错
ini_set('display_errors',1);
error_reporting(E_ALL ^ E_NOTICE);


function __autoload($className) {
	if(strpos($className,'_') !== false) {
		$classNameArr = explode('_',$className,2);
		$prefix = $classNameArr[0];
		$class = $classNameArr[1];
		$path = ROOT_PATH.DIRECTORY_SEPARATOR.$prefix.DIRECTORY_SEPARATOR.$class.'.php';
		if(file_exists($path)) {
			require_once($path);
			return true;
		}
		return false;
	}
	$prefix = 'Lib';
	$path = ROOT_PATH.DIRECTORY_SEPARATOR.$prefix.DIRECTORY_SEPARATOR.$className.'.php';
	if(file_exists($path)) {
		require_once($path);
		return true;
	}
	return false;
}

/**
 * 导出数据为excel表格
 *
 * @param $data 一个二维数组,结构如同从数据库查出来的数组
 * @param $title excel的第一行标题,一个数组,如果为空则没有标题
 * @param $filename 下载的文件名
 */
 function exportExcel($params) {
     Remote::instance()->post('test.mgr.finance.ztit.com.cn', 'excel/createExcelFile', $params);
    }

?>