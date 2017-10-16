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
	 public function success($msg, $url = '', $delay = 3){
    	if($url == '') {
			$url = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
		} else{
			if(strpos($url, 'http') === false) {
				$url = url::makemgr($url);
			}
		}
		$params = array();
		$params['msg'] = $msg;
		$params['delay'] = $delay*1000;
		$params['url'] = $url;
		$toUrl = url::makemgr('base/showSuccess?'.http_build_query($params));
		header('location:'.$toUrl); 
		
    }
    //防止重复提交进行了head重定向
    public function showSuccess() {
    	if(empty($_GET)) {
    		return $this->error('不允许操作!');
    	}

    	//xuef 2016-01-21
    	//尝试解决登录后跳转到‘admin/index’报错的问题
    	if(isset($_GET['url']) && substr($_GET['url'],0,1) == '/') {
    		$_GET['url'] = '/'.trim($_GET['url'], '/');
    	}
    	
    	return $this->display('layouts/success', $_GET);
    }
    
    /**
     * 错误提示
     *
     * @param string $msg 提示信息
	 * @param string $url 跳转URL
	 * @param integer $delay 跳转URL延时
	 * 
     */
    public function error($msg, $url = '', $delay = 3){
		if($url != '') {
			$url = url::makemgr($url);
		}
		$params = array();
		$params['msg'] = $msg;
		$params['delay'] = $delay*1000;
		$params['url'] = $url;
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