
<?php
class CoreApi_User_Shoppingcar extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'shoppingcar';
    protected $_primaryKey = 'shopping_id';
    protected $_fields = array(
        'shopping_id' => 'int',
        'uid' => 'int',
        'gid' => 'int',
        'size' => 'int',
        'color' => 'string',
        'number'=>'int',
        'create_time' => 'string',
        'update_time' => 'string',);
    
    
    
    public function getShopingcarByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
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
    
    public function getShopingcarCountByParams($params) {
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