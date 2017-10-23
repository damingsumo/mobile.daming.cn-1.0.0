<?php
/**
 * 消息模板
 * @author huwl
 */
class Msgtpl {
	public static $smsMsg = array (
	    'BADMINTON_TIMEOUT_CANCEL' => '支付超时', 
	    'BADMINTON_MANUAL_CANCEL' => '手动取消', 
	    'UNSUBSCRIB_SUCCESS' => '退订成功', 
	    'BADMINTON_PAY_SUCCESS' => '支付成功', 
	    'BADMINTON_BOOK_SUCCESS' => '预订成功' 
	);
	
	public static function msg($tpl, $order) {
		$pieceStr = '';
		foreach ( $order ['items'] as $item ) {
			if(!strstr($item['end_hour'], ':')) {
				$startHour = $item ['start_hour'] > 9 ? $item ['start_hour'] . ':00' : '0' . $item ['start_hour'] . ':00';
				$endHour = $item ['end_hour'] > 9 ? $item ['end_hour'] . ':00' : '0' . $item ['end_hour'] . ':00';
			} else {
				$startHour = $item ['start_hour'];
				$endHour = $item ['end_hour'];
			}
			
			$pieceStr .= '【' . $item ['piece_name'] . '，' . $startHour . '-' . $endHour . '】';
			if ($tpl == 'BADMINTON_PAY_SUCCESS' || $tpl == 'BADMINTON_BOOK_SUCCESS') {
				$pieceStr .= '运动码【' . $item ['certificate'] . '】';
			}
		}
		
		if ($tpl == 'BADMINTON_TIMEOUT_CANCEL') {
			$msg = array($order ['oid'], $order ['stadium_name'],$order ['venue_name'],$order ['book_day'],$pieceStr);
			$tempId = 111478;
		} else if ($tpl == 'BADMINTON_MANUAL_CANCEL') {
			$msg = array($order ['oid'],$order ['stadium_name'],$order ['venue_name'],$order ['book_day'],$pieceStr);
			$tempId = 111852;
		} else if ($tpl == 'UNSUBSCRIB_SUCCESS') {
			$payMoney = $order ['pay_money'] / 100;
			$msg = array($order ['oid'],$order ['stadium_name'], $order ['venue_name'],$order ['book_day'],$pieceStr);
			$tempId = 111536;
		} else if ($tpl == 'BADMINTON_PAY_SUCCESS') {
			$payMoney = $order ['pay_money'] / 100;
			$msg = array($order ['oid'],$order ['stadium_name'],$order ['venue_name'],$order ['book_day'],$pieceStr,$payMoney);
			$tempId = 111715;
		} else if ($tpl == 'BADMINTON_BOOK_SUCCESS') {
			$msg = array($order ['oid'],$order ['stadium_name'],$order ['venue_name'],$order ['book_day'],$pieceStr);
			$tempId = 111539;
		}
		$result = sms::send($order ['book_phone'], $msg,$tempId);
		if($result['status'] != 200) {
		    return false;
		}
		return true;
	}
}
