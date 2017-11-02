<?php
class CoreApi_Brand_Goods_Collocation extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'goods_collocation';
    protected $_primaryKey = 'goods_collocation_id';
    protected $_fields = array(
        'goods_collocation_id' => 'int',
        'gid' => 'int',
        'shoes_id' => 'int',
        'status' => 'int',
        'first_collocation_id' => 'int',
        'second_collocation_id' => 'int',
        'create_time' => 'string',
        'update_time' => 'string');
    
   /***
    * 
    * 通过数组获得商品信息
    * @param unknown $params
    * @param unknown $page
    * @param unknown $pagesize
    * @param string $returnFormat
    * @param string $order
    * @param string $desc
    */
    public function getCollocationsByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "asc") {
		$sql = 'select * from ' . $this->_tableName . ' where 1 ';
		if(isset($params['gid'])) {
		    $sql.=' and gid='.$params['gid'].' or first_collocation_id='.$params['gid'].' or second_collocation_id='.$params['gid'];
		    unset($params['gid']);
		}
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
	 * 通过数组获得商品数量
	 * @param unknown $params
	 * @return number
	 */
	public function getCollocationsCountByParams($params) {
	    $sql = 'select count(*) as total from ' . $this->_tableName . ' where 1 ';
	    $binds = array();
	    foreach($params as $k => $v) {
	        $binds[':' . $k] = $v;
	        $sql .= ' and ' . $k . '=:' . $k;
	    }
	    $result = $this->db->select_one($sql, $binds);
	    return isset($result['total']) ? $result['total'] : 0;
	}
	
	
}