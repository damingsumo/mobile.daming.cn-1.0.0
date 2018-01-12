<?php
class CoreApi_Image extends CoreApi {

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
        'reduce_money' => 'string',
        'refund_money' => 'string',
        'pay_method' => 'string',
        'pay_time' => 'string',
        'pay_method' => 'string',
        'pay_time' => 'string');
    
}