<?php
class CoreApi_Brand_Goods_Size extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'goods_size';
    protected $_primaryKey = 'goods_size_id';
    protected $_fields = array(
        'goods_size_id' => 'int',
        'gid' => 'int',
        'size' => 'int',
        'kummerbund' => 'int',
        'hipline' => 'int',
        'outseam' => 'int',
        'thigh_girth' => 'int',
        'knee_circumference' => 'int',
        'bust' => 'int',
        'length' => 'int',
        's_width' => 'int',
        'sleeve_width' => 'int',
        'stock' => 'int',
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
    public function getSizesByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "size", $desc = "asc") {
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
	 * 通过数组获得商品数量
	 * @param unknown $params
	 * @return number
	 */
	public function getSizesCountByParams($params) {
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