<?php
class CoreApi_Hw extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'hw_photo';
    protected $_primaryKey = 'hw_photo_id';
    protected $_fields = array(
        'hw_photo_id' => 'int',
        'height_start' => 'int',
        'height_end' => 'int',
        'weight_start' => 'int',
        'weight_end' => 'int',
        'boday_url' => 'string',
        'leg_url' => 'string');
    
    
    
    
    /***
     *
     * 通过数组获得身高体重信息
     * @param unknown $params
     * @param unknown $page
     * @param unknown $pagesize
     * @param string $returnFormat
     * @param string $order
     * @param string $desc
     */
    public function getHwphotosByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "hw_photo_id", $desc = "desc") {
        $sql = 'select * from ' . $this->_tableName . ' where 1 ';
        $binds = array();
        
        if(isset($params['height'])) {
            $sql .= ' and height_start >= :height_start and height_end < :height_end';
            $binds[':height_start'] = $params['height'];
            $binds[':height_end'] = $params['height'];
            unset($params['height']);
        }
        
        if(isset($params['weight'])) {
            $sql .= ' and weight_start >= :weight_start and weight_end < :weight_end';
            $binds[':weight_start'] = $params['weight'];
            $binds[':weight_end'] = $params['weight'];
            unset($params['height']);
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
    
}