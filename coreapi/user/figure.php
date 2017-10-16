
<?php
class CoreApi_User_Figure extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'user_figure';
    protected $_primaryKey = 'user_figure_id';
    protected $_fields = array(
        'user_figure_id' => 'int',
        'uid' => 'int',
        'waist' => 'int',
        'belly' => 'int',
        'stern_type' => 'int',
        'hip_type' => 'int',
        'shoulder' => 'int',
        'arm' => 'int',
        'arm_circumference' => 'int',
        'hip' => 'int',
        'thigh' => 'int',
        'leg' => 'int', 
        'body_thick' => 'int',
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
    public function getFiguresByParams($params, $page, $pagesize, $returnFormat = 'Array', $order = "create_time", $desc = "desc") {
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
    public function getFiguresCountByParams($params) {
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