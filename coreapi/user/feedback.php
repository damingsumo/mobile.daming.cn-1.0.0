<?php
class CoreApi_User_Feedback extends CoreApi {

    protected static $instance__; //必要,
    protected $_module = 'yd_res';
    protected $_tableName = 'feedback';
    protected $_primaryKey = 'feedback_id';
    protected $_fields = array(
        'feedback_id' => 'int',
        'uid' => 'int',
        'note' => 'string',
        'status' => 'int',
        'phone' => 'int',
        'create_time' => 'string',
        'update_time' => 'string');
}