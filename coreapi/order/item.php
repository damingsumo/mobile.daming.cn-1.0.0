<?php
class CoreApi_Order_Item extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'orders_item';
    protected $_primaryKey = 'order_item_id';
    protected $_fields = array(
        'order_item_id' => 'int',
        'oid' => 'int',
        'gid' => 'int',
        'number'=>'int',
        'price' => 'int',
        'old_price' => 'int',
        'status' => 'int',
        'reduce_money' => 'int',
        'pay_money' => 'int',
        'pay_method' => 'int',
        'pay_time' => 'string',
        'refund_money' => 'int',
        'refund_method' => 'int',
        'refund_time' => 'string',
        'size' => 'int',
        'color' => 'string',
        'create_time' => 'string',
        'update_time' => 'string',);
    
    
    public function getOrderItemsByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
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
    
    public function getOrderItemsCountByParams($params) {
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