<?php
class CoreApi_Brand_Goods extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'goods';
    protected $_primaryKey = 'gid';
    protected $_fields = array(
        'gid' => 'int',
        'brand_id' => 'int',
        'goods_name' => 'varchar',
        'brand_name' => 'varchar',
        'category' => 'int',
        'genre' => 'int',
        'style_number' => 'varchar',
        'material' => 'varchar',
        'price' => 'int',
        'old_price' => 'int',
        'reduce_money' => 'int',
        'status' => 'int',
        'sales' => 'int',
        'picture_url' => 'varchar',
        'model_url' => 'varchar',
        'picture_source' => 'int',
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
    public function getGoodsByParams($params, $page, $pagesize,  $order = "create_time", $returnFormat = 'Array', $desc = "desc") {
		$sql = 'select * from ' . $this->_tableName . ' where 1 ';
		$binds = array();
		if(isset($params['genre_id'])) {
		    $sql .= ' and genre_id= '. $params['genre_id'];
		    unset($params['genre_id']);
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
	public function getGoodsCountByParams($params) {
	    $sql = 'select count(*) as total from ' . $this->_tableName . ' where 1 ';
	    $binds = array();
	    if(isset($params['genre_id'])) {
	        $sql .= ' and genre_id= '. $params['genre_id'];
	        unset($params['genre_id']);
	    }
	    foreach($params as $k => $v) {
	        $binds[':' . $k] = $v;
	        $sql .= ' and ' . $k . '=:' . $k;
	    }
	    $result = $this->db->select_one($sql, $binds);
	    return isset($result['total']) ? $result['total'] : 0;
	}
	
	
}