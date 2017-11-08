<?php
class CoreApi_Brand_Size extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'brand_size';
    protected $_primaryKey = 'brand_size_id';
    protected $_fields = array(
        'brand_size_id' => 'int',
        'brand_id' => 'int',
        'height' => 'int',
        'start_height' => 'int',
        'end_height' => 'int',
        'weight' => 'int',
        'start_weight' => 'int',
        'end_weight' => 'int',
        'start_kummerbund' => 'int',
        'end_kummerbund' => 'int',
        'start_hipline' => 'int',
        'end_hipline' => 'int',
        'start_outseam' => 'int',
        'end_outseam' => 'int',
        'start_thigh_girth' => 'int',
        'end_thigh_girth' => 'int',
        'start_knee_circumference' => 'int',
        'end_knee_circumference' => 'int',
        'start_bust' => 'int',
        'end_bust' => 'int',
        'start_length' => 'int',
        'end_length' => 'int',
        'start_s_width' => 'int',
        'end_s_width' => 'int',
        'start_sleeve_width' => 'int',
        'end_sleeve_width' => 'int',
        'size' => 'int',
        'size_type' => 'int',
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
		if(isset($params['height_key'])) {
		    $sql .= ' and start_height<= '. $params['height_key'].' end_height>= '. $params['height_key'];
		    unset($params['height_key']);
		}
		if(isset($params['weight_key'])) {
		    $sql .= ' and start_weight<= '. $params['weight_key'].' end_weight>= '. $params['weight_key'];
		    unset($params['weight_key']);
		}
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
	if(isset($params['height'])) {
		    $sql .= ' and start_height<= '. $params['height'].' end_height>= '. $params['height'];
		    unset($params['height']);
		}
		if(isset($params['weight'])) {
		    $sql .= ' and start_weight<= '. $params['weight'].' end_weight>= '. $params['weight'];
		    unset($params['height']);
		}
	    foreach($params as $k => $v) {
	        $binds[':' . $k] = $v;
	        $sql .= ' and ' . $k . '=:' . $k;
	    }
	    $result = $this->db->select_one($sql, $binds);
	    return isset($result['total']) ? $result['total'] : 0;
	}
	
	
}