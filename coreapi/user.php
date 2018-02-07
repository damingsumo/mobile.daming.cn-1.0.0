<?php
class CoreApi_User extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'user';
    protected $_primaryKey = 'uid';
    protected $_fields = array(
        'uid' => 'int',
        'username' => 'string',
        'password'=>'string',
        'status'=>'int',
        'mobile' => 'int',
        'open_id' => 'string',
        'nick' => 'string',
        'language' => 'string',
        'sex' => 'int',
        'city' => 'string',
        'province' => 'int',
        'country' => 'string',
        'thumb' => 'string',
        'language' => 'string',
        'create_time' => 'string',
        'update_time' => 'string');
    
   /***
    * 
    * 通过数组获得用户信息
    * @param unknown $params
    * @param unknown $page
    * @param unknown $pagesize
    * @param string $returnFormat
    * @param string $order
    * @param string $desc
    */
    public function getUsersByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
		$sql = 'select * from ' . $this->_tableName . ' where 1 ';
		$binds = array();
		if(!empty($params)) {
			foreach($params as $k => $v) {
				$binds[':' . $k] = $v;
				$sql .= ' and ' . $k . '=:' . $k;
			}
		}
		
		$sql .= ' order by ' . $order . ' ' . $desc;
		return $this->db->page($sql, $binds, $page, $pagesize, $returnFormat);
	}
	
	
	/***
	 * 
	 * 通过数组获得用户数量
	 * @param unknown $params
	 * @return number
	 */
	public function getUsersCountByParams($params) {
	    $sql = 'select count(*) as total from ' . $this->_tableName . ' where 1 and ';
	    $binds = array();
	    foreach($params as $k => $v) {
	        $binds[':' . $k] = $v;
	        $sql .= ' and ' . $k . '=:' . $k;
	    }
	    $result = $this->db->select_one($sql, $binds);
	    return isset($result['total']) ? $result['total'] : 0;
	}
	
	
	public function getUserByOpenId($openid) {
	    $sql = 'select * from ' . $this->_tableName . ' where 1 ';
	    $sql .= 'open_id = '.$openid;
	    print_r($this->db->select_one($sql));exit;
	    return $this->db->select_one($sql);
	}
	
}