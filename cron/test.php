<?php
/**
 * Created by PhpStorm.
 * User: Francis
 * Date: 2016/11/11
 * Time: 11:43
 */
require_once (dirname ( __FILE__ ) . '/Init.php');
//WebApi_Finance_Log::instance()->add(array('content' => 'test',));
/*$res=WebApi_Card_Recharge::instance()->getOrdersByParams(array('tt'=>'tt'));

var_dump($res);*/

$day = date("Y-m-d",strtotime("-1 day"));
var_dump($day);