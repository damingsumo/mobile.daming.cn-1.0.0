<?php
class CoreApi_Image_hairStyle extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'hair_style';
    protected $_primaryKey = 'hair_style_id';
    protected $_fields = array(
        'hair_style_id' => 'int',
        'name' => 'string',
        'status' => 'int',
        'picture_url' => 'string',
        'create_time' => 'string',
        'update_time' => 'string');
    
   /***
    * 
    * 通过数组获得发型信息
    * @param unknown $params
    * @param unknown $page
    * @param unknown $pagesize
    * @param string $returnFormat
    * @param string $order
    * @param string $desc
    */
    public function gethairStylesByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
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
	 * 通过数组获得发型的数量
	 * @param unknown $params
	 * @return number
	 */
	public function gethairStylesCountByParams($params) {
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