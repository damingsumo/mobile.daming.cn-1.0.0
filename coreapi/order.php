<?php
class CoreApi_Order extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'order';
    protected $_primaryKey = 'oid';
    protected $_fields = array(
        'oid' => 'int',
        'uid' => 'int',
        'brand_id' => 'string',
        'status' => 'string',
        'money' => 'string',
        'pay_money' => 'string',
        'pay_method' => 'string',
        'pay_time' => 'string',
        'reduce_money' => 'int',
        'refund_money' => 'int',
        'refund_method' => 'int',
        'refund_time' => 'string',
        'create_time' => 'string',
        'update_time' => 'string',
    );
    
}