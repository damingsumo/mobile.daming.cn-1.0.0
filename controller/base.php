<?php
/**
 * page 中基本的配置页面, 每个controller中必须有.
 * @author liub
 * 2013-05-18
 *
 */
class Controller_Base extends Controller {
	
	/**
	 * 成功提示
	 *
	 * @param string $msg 提示信息
	 * @param string $url 跳转URL
	 * @param integer $delay 跳转URL延时
	 *
	 */
	public function success($msg, $url = '', $delay = 3) {
		$params = array();
		if($url != '') {
			$params['url'] = $url;
		} else {
			$params['url'] = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '/index';
		}
		$params['msg'] = $msg;
		$params['delay'] = $delay * 1000;
		return $this->display('layouts/success', $params);
	
	}
	
	/**
	 * 错误提示
	 *
	 * @param string $msg 提示信息
	 * @param string $url 跳转URL
	 * @param integer $delay 跳转URL延时
	 *
	 */
	public function error($msg = '检测到用户尚未登录', $url = '', $delay = 3) {
		if($url != '') {
			$params['url'] = $url;
		} else {
			$params['url'] = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '/index';
		}
		
		$params = array();
		$params['msg'] = $msg;
		$params['delay'] = $delay * 1000;
		return $this->display('layouts/error', $params);
	}
	
	/**
	 * 导出数据为excel表格
	 *
	 * @param $data 一个二维数组,结构如同从数据库查出来的数组
	 * @param $title excel的第一行标题,一个数组,如果为空则没有标题
	 * @param $filename 下载的文件名
	 */
	function exportExcel($data = array(), $title = array(), $filename = '统计数据') {
		$filename = iconv("UTF-8", "GB2312", $filename);
		header("Content-type:application/octet-stream");
		header("Accept-Ranges:bytes");
		header("Content-type:application/vnd.ms-excel");
		header("Content-Disposition:attachment;filename=" . $filename . ".xls");
		header("Pragma: no-cache");
		header("Expires: 0");
		// 导出xls 开始
		if(!empty($title)) {
			foreach($title as $k => $v) {
				$title[$k] = iconv("UTF-8", "GB2312", $v);
			}
			$title = implode("\t", $title);
			echo "{$title}\n";
		}
		if(!empty($data)) {
			
			foreach($data as $k1 => $v1) {
				foreach($v1 as $k2 => $v2) {
					$data[$k1][$k2] = iconv("UTF-8", "gbk", $v2);
				}
				$data[$k1] = implode("\t", $data[$k1]);
			}
			echo implode("\n", $data);
		}
		exit();
	}
}
?>