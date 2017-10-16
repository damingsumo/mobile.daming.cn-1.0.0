
<?php
class CoreApi_User_Body extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'user_body';
    protected $_primaryKey = 'user_body_id';
    protected $_fields = array(
        'user_body_id' => 'int',
        'uid' => 'int',
        'kummerbund' => 'int',
        'hipline' => 'int',
        'long_legs' => 'int',
        'thigh_girth' => 'int',
        's_width' => 'int',
        'arm_circumference' => 'int',
        'arm_length' => 'int',
        'calf_girth' => 'int',
        'lower_chest_circumference' => 'int',
        'upper_chest_circumference' => 'int',
        'body_length' => 'int',
        'create_time' => 'string',
        'update_time' => 'string');

    /***
     *
     * 通过数组获得脸型信息
     * @param unknown $params
     * @param unknown $page
     * @param unknown $pagesize
     * @param string $returnFormat
     * @param string $order
     * @param string $desc
     */
    public function getBodysByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
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
     * 通过数组获得脸型的数量
     * @param unknown $params
     * @return number
     */
    public function getBodysCountByParams($params) {
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