<?php
class Weixin{
    /**
     * Instance of this singleton
     *
     * @var template
     */
    static private $instance__;
    static private $wechat;

    /**
     * Instance of this singleton class
     *
     * @return template
     */
    static public function &instance (){
        if (!isset(self::$instance__)) {
            $class = __CLASS__;
            self::$instance__ = new $class;
        }
        return self::$instance__;
    }

    /**
     *微信主动发送消息类
     *
     */
    public static function send($openid, $content, $msgType = 'text') {
        if($openid == '' || $content == '') {
            return false;
        }
        switch($msgType) {
            //文本消息
            case 'text':
                $data = <<<EOF
{
    "touser":"{$openid}",
    "msgtype":"text",
    "text": {
         "content":"{$content}"
    }
}
EOF;
                break;
            //图片消息
            case 'image':
                return false;
                break;
            //语音消息
            case 'voice':
                return false;
                break;
            //视频消息
            case 'video':
                return false;
                break;
            //音乐消息
            case 'music':
                return false;
                break;
            //图文消息
            case 'news':
                return false;
                break;
            default:
                return false;
        }

//        $cache = new Cache();
//        $accessToken = self::getAccessToken();
        $http = new WeiXin_Http();
        $res = $http->post('message/custom/send?access_token='.$accessToken,$data);
        $result = json_decode($res, true);
        if($result['errcode'] == 0) {
            return true;
        } else if($result['errcode']==40001){  //如果授权失败，重新获取AccessToken
//            $cache->set(WEIXIN_ACCESSTOKEN,'');
            $accessToken = self::getAccessToken();
            $http = new WeiXin_Http();
            $res = $http->post('message/custom/send?access_token='.$accessToken,$data);
            $result = json_decode($res, true);
            if($result['errcode'] == 0) {
                return true;
            }
        } else { //写入错误日志

        }

        return false;
    }

    /**
     * 获取access_token
     * 应用场景：1. 菜单管理， 2. 给微信(用户)推送消息
     * @todo 用“|”分开和token是不是冲突
     * @return string|bool
     */
    public static function getAccessToken(){
//    	$cache = new Cache();
//        $accessToken = $cache->get(WEIXIN_ACCESSTOKEN);
        $accessToken = '';
        if($accessToken != '') {
            return $accessToken;
        }
        //重新获取
        $http = new WeiXin_Http();
        // 请求地址
        $params = array(
            'grant_type' => 'client_credential',
            'appid' => WEIXIN_APPID,
            'secret' => WEIXIN_APPSECRET
        );

        // 发起请求,获取数据
        $data = $http->get('token', $params);
        // 转为数组
        $data = json_decode($data, TRUE);
        if(isset($data['access_token'])) {
//            $cache->set(WEIXIN_ACCESSTOKEN, $data['access_token'], 7185);
            return $data['access_token'];
        }
        return false;
    }

    /**
     * 获取jsapi_ticket
     */
    public static function getJsApiTicket(){
//    	$cache = new Cache();
//        $jsapiticket = $cache->get(WEIXIN_JSAPITICKET);
        $jsapiticket = '';
        if($jsapiticket != '') {
            return $jsapiticket;
        }
        $accessToken = self::getAccessToken();
        if(!$accessToken) {
            return false;
        }
        $http = new WeiXin_Http();
        // 请求地址
        $params = array(
            'access_token' => $accessToken,
            'type' => 'jsapi',
        );
        
        // 发起请求,获取数据
        $data = $http->get('ticket/getticket', $params);
        // 转为数组
        $data = json_decode($data, TRUE);
        if(isset($data['ticket'])) {
//            $cache->set(WEIXIN_JSAPITICKET, $data['ticket'], 7185);
            return $data['ticket'];
        }
        return false;
    }
    
    /**
     * @note 退款
     * @param string trade_order_no 组装的订单ID 这个作为我们的标示传入第三方支付平台 规则：时间戳-oid(或者uid)
     * @param string trade_no 交易号码
     * @param int pay_money
     * @param int refund_fee 退款金额
     * @param int uid
     * 
     * @return bool
     * @author huwl
     */
    public static function refund($params) {
    	$tradeOrderNo = isset($params['trade_order_no']) ? $params['trade_order_no'] : '';
    	$tradeNo = isset($params['trade_no']) ? $params['trade_no'] : '';
    	$payMoney = isset($params['pay_money']) ? $params['pay_money'] : 0;
    	$refundFee = isset($params['refund_fee']) ? $params['refund_fee'] : 0;
    	$uid = isset($params['uid']) ? $params['uid'] : 0;
    	
    	if($tradeOrderNo == '') {
    		return false;
    	}
    	if($tradeNo == '') {
    		return false;
    	}
    	if($payMoney <= 0) {
    		return false;
    	}
    	if($refundFee <= 0) {
    		return false;
    	}
    	if($uid <= 0) {
    		return false;
    	}
    	
    	require_once(FW_PATH."/plugins/wxpay/WxPayPubHelper.php");
		$refund = new Refund_pub();
		$refund->parameters["out_trade_no"] = $tradeOrderNo;
		$refund->parameters["out_refund_no"] = WxPayConf_pub::MCHID.date("YmdHis");
		$refund->parameters["transaction_id"] = $tradeNo;
		$refund->parameters["total_fee"] = $payMoney;
		$refund->parameters["refund_fee"] = $refundFee;
		$refund->parameters["op_user_id"] = $uid;
		$res = $refund->getResult();
		if(isset($res['return_code']) && $res['return_code'] == 'SUCCESS' && !isset($res['result_code'])) {
			return true;
		}
		
		return false;
    }
}
