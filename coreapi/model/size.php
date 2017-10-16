<?php
class CoreApi_Model_Size extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'model_size';
    protected $_primaryKey = 'model_size_id';
    protected $_fields = array(
        'model_size_id' => 'int',
        'gid' => 'int',
        'size' => 'int',
        'size_type' => 'int',
        'height' => 'int',
        'weight' => 'int',
        'kummerbund' => 'int',
        'long_legs' => 'int',
        'thigh_girth' => 'int',
        's_width' => 'int',
        'arm_circumference' => 'int',
        'arm_length' => 'int',
        'calf_girth' => 'int',
        'bust' => 'int',
        'body_length' => 'int',
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
    public function getSizesByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
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
	    $result = $this->db->select_one($sql, $binds);
	    return isset($result['total']) ? $result['total'] : 0;
	}
	
	
}