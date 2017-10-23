<?php
/*
 * 会员卡
 */
class Controller_Card extends Controller_Base {
	
	/**
	 * @note 会员卡列表
	 * 
	 * @param string search_type
	 * @param string search
	 * @param int card_type_id
	 * @param int status
	 * @param string type
	 * @param string create_time_start
	 * @param string create_time_end
	 * @param int page
	 * @param int page_size
	 * @return html
	 * @author huwl
	 */
	public function actionList() {
		$key = isset($_GET['key']) ? $_GET['key'] : '';//搜索类型
		$value = isset($_GET['value']) ? $_GET['value'] : '';//搜索值
		$cardTypeId = isset($_GET['card_type_id']) ? $_GET['card_type_id'] : 0;
		$status = isset($_GET['status']) ? $_GET['status'] : 0;
		$type = isset($_GET['type']) ? $_GET['type'] : 'search';
		$createTimeStart = isset($_GET['create_time_start']) ? $_GET['create_time_start'] : '';
		$createTimeEnd = isset($_GET['create_time_end']) ? $_GET['create_time_end'] : '';
		$page = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
		$pageSize = isset($_REQUEST['page_size']) ? $_REQUEST['page_size'] : 20;
		$isArrearage = isset($_REQUEST['is_arrearage']) ? $_REQUEST['is_arrearage'] : 0;
		
		$searchParams = array();
		if($status != 0) {
			$searchParams['status'] = $status;
		}
		if($key != '' && $value != '') {
			$searchParams[$key] = $value;
		}
		if($createTimeStart != '') {
			$searchParams['createTimeStart'] = $createTimeStart;
		}
		if($createTimeEnd != '') {
			$searchParams['createTimeEnd'] = $createTimeEnd;
		}
		if($isArrearage != 0) {
			$searchParams['is_arrearage'] = $isArrearage;
		}
		
		//获取场馆下的卡种列表
		$cards = array();
		$total = 0;
		$totalCard = 0;
		$startTime = $createTimeStart;//开始时间
		$endTime = $createTimeEnd;//结束时间
		$cardTypes = WebApi_Cardtype::instance()->getCardTypesByStadiumId(Account::getManageStadiumId(), 1, 1000);
		if(!empty($cardTypes['card_types'])) {
			$cardTypeIds = array();
			foreach($cardTypes['card_types'] as $cardType) {
				$cardTypeIds[] = $cardType['card_type_id'];
			}
			
			$searchParams['card_type_ids'] = $cardTypeId > 0 ? array($cardTypeId) : $cardTypeIds;
			$total = WebApi_Card::instance()->getCardCountByParams($searchParams);
			$totalCard = WebApi_Card::instance()->getCardCountByParams(array('card_type_ids' => $cardTypeIds)); //总数统计
			if($total > 0) {
				if($type == 'excel') {
					$page = 1;
					$pageSize = -1;
					if($createTimeStart == '' && $createTimeEnd == '') {
						$searchParams['end_time'] = date("Y-m-d H:i:s", strtotime("-31 day"));
						$startTime = $searchParams['end_time'];
						$endTime = date('Y-m-d H:i:s');
					}
				}
				
				$cards = WebApi_Card::instance()->getCardsByParams($searchParams, $page, $pageSize, 'Array');
			}
		}
		
		$params = array();
		$params['key'] = $key;
		$params['page'] = $page;
		$params['total'] = $total;
		$params['cards'] = $cards;
		$params['value'] = $value;
		$params['status'] = $status;
		$params['is_admin'] = http::SESSION('is_admin');
		$params['page_size'] = $pageSize;
		$params['total_card'] = $totalCard;
		$params['card_type_id'] = $cardTypeId;
		$params['is_arrearage'] = $isArrearage;
		$params['createTimeStart'] = $createTimeStart;
		$params['createTimeEnd'] = $createTimeEnd;
		$params['pager'] = new pager($total, $page, $pageSize);
		$params['card_types'] = $cardTypes['card_types'];
		if($type == 'search') {
			return $this->display('card/list', $params);
		}
		
		if(!empty($cards)) {
			//导出
			foreach($cards as $key => $vo) {
				$result[$key]['card_id'] = $vo['card_id'];
				$result[$key]['number'] = "'" . $vo['number'];
				$result[$key]['card_type_name'] = $vo['card_type_name'];
				$result[$key]['name'] = $vo['name'];
				$result[$key]['mobile'] = $vo['mobile'];
				$result[$key]['balance'] = $vo['type'] == 2 ? $vo['balance'] / 100 : $vo['balance'] . '次';
				$result[$key]['status'] = $vo['status'] == 1 ? '启用' : '禁用';
			}
			
			$filename = '会员卡管理' . date('Y-m-d', strtotime($startTime)) . '至' . date('Y-m-d', strtotime($endTime));
			$title = array('会员ID', '卡号', '卡种', '姓名', '手机号', '余额', '状态');
			return $this->exportExcel($result, $title, $filename);
		}
		
		return $this->error('没有数据可导出');
	}
	
	/**
	 * 首页会员卡条件搜索
	 * 
	 * @author xu
	 */
	public function actionSearch() {
		$search = isset($_REQUEST['search']) ? $_REQUEST['search'] : '';
		
		if($search == '') {
			return $this->error('没有找到会员卡信息');
		}
		if(Filter::mobile($search)) {
			return http::go('/card/list?value='.$search.'&key=mobile');
		}
		
		$cards = WebApi_Card::instance()->getCardsByParams(array('number' => $search), 1, - 1, 'Array');
		if(empty($cards)) {
			return $this->error('没有找到会员卡信息');
		}
		
		$card = current($cards);
		return http::go('/card/detail?card_id='.$card['card_id']);
	}
	
	/**
	 * 启用会员卡
	 *
	 * @param string card_ids
	 * @return json
	 * @author huwl
	 */
	public function enabled() {
		$cardIds = isset($_POST['card_ids']) ? trim($_POST['card_ids'], ',') : '';
		if($cardIds == '') {
			return $this->ajaxError('会员卡ID错误');
		}
		
		$cardIds = explode(',', $cardIds);
		foreach($cardIds as $cardId) {
			if($cardId <= 0) {
				return $this->ajaxError('会员卡ID错误');
			}
			
			$res = WebApi_Card::instance()->edit(array('status' => 1), $cardId);
			if($res === false) {
				return $this->ajaxError('启用会员卡失败');
			}
		}
		
		return $this->ajaxSuccess('启用会员卡成功');
	}
	
	/**
	 * 禁用会员卡
	 *
	 * @param string card_ids
	 * @return json
	 * @author huwl
	 */
	public function disable() {
		$cardIds = isset($_POST['card_ids']) ? trim($_POST['card_ids'], ',') : '';
		if($cardIds == '') {
			return $this->ajaxError('会员卡ID错误');
		}
		
		$cardIds = explode(',', $cardIds);
		
		foreach($cardIds as $cardId) {
			if($cardId <= 0) {
				return $this->ajaxError('会员卡ID错误');
			}
			
			$res = WebApi_Card::instance()->edit(array('status' => - 1), $cardId);
			if($res == false) {
				return $this->ajaxError('禁用会员卡失败');
			}
		}
		
		return $this->ajaxSuccess('禁用会员卡成功');
	}
	
	/*
     * 添加会员卡
     */
	public function actionAdd() {
		return $this->form();
	}
	
	/**
	 * @会员卡编辑
	 * @wy
	 */
	public function actionEdit() {
		return $this->form();
	}
	
	/**
	 * 新增、编辑会员卡公共处理
	 *
	 * $params int card_id
	 * @return html
	 * @author huwl
	 */
	private function form() {
		if(empty($_POST)) {
			$cardId = isset($_GET['card_id']) ? $_GET['card_id'] : 0;
			$stadiumId = Account::getManageStadiumId();
			
			//获取卡种信息
			$cardTypes = WebApi_Cardtype::instance()->getValidCardTypesByStadiumId($stadiumId);
			if(empty($cardTypes)) {
				return $this->error('卡种信息错误');
			}
			
			if($cardId > 0) {//编辑页面
				$card = WebApi_Card::instance()->getCardInfoByCardId($cardId);
				if(empty($card)) {
					return $this->error('卡信息不存在');
				}
				
				//卡种充值规则
				$cardTypeRechargeNormals = WebApi_Cardtype_Recharge_Rule::instance()->getCardtypeRechargeRulesByParams(array('card_type_id' => $card['cardTypeInfo']['card_type_id']));
				//卡种升级规则
				$cardTypeUpgrades = WebApi_Cardtype_Recharge_Rule::instance()->getRechargeUpgradesByParams(array('card_type_id' => $card['cardTypeInfo']['card_type_id']));
				foreach($cardTypeUpgrades as &$upgrade) {
					$upgrade['cardTypeName'] = isset($cardTypes[$upgrade['upgrade_card_type_id']]) ? $cardTypes[$upgrade['upgrade_card_type_id']]['name'] : '';
				}
				
				$params = array();
				$params['card'] = $card;
				$params['is_admin'] = http::SESSION('is_admin');
				$params['upgrades'] = $cardTypeUpgrades;
				$params['cardTypeRechargeNormals'] = $cardTypeRechargeNormals;
				return $this->display('card/edit', $params);
			}
			
			$cardTypeIds = array();
			foreach($cardTypes as $cardType) {
				$cardTypeIds[] = $cardType['card_type_id'];
			}
			
			//卡种充值规则
			$cardTypeRechargeRules = WebApi_Cardtype_Recharge_Rule::instance()->getCardtypeRechargeRulesByParams(array('card_type_ids' => $cardTypeIds));
			$cardTypeRechargeRuleData = array();
			foreach ($cardTypeRechargeRules as $cardTypeRechargeRule) {
				$cardTypeRechargeRuleData[$cardTypeRechargeRule['card_type_id']][] = $cardTypeRechargeRule;
			}
			
			//卡种升级规则
			$cardTypeUpgrades = WebApi_Cardtype_Recharge_Rule::instance()->getRechargeUpgradesByParams(array('card_type_ids' => $cardTypeIds));
			$cardTypeUpgradeData = array();
			foreach ($cardTypeUpgrades as $cardTypeUpgrade) {
				$cardTypeUpgradeData[$cardTypeUpgrade['card_type_id']][] = $cardTypeUpgrade;
			}
			
			foreach($cardTypes as &$cardType) {
				$cardType['cardTypeRechargeRules'] = isset($cardTypeRechargeRuleData[$cardType['card_type_id']]) ? $cardTypeRechargeRuleData[$cardType['card_type_id']] : array();
				$cardType['cardTypeUpgrades'] = isset($cardTypeUpgradeData[$cardType['card_type_id']]) ? $cardTypeUpgradeData[$cardType['card_type_id']] : array();
			}
			
			//添加页面
			$params = array();
			$params['cardTypes'] = $cardTypes;
			return $this->display('card/add', $params);
		}
		
		$cardId = isset($_POST['card_id']) ? $_POST['card_id'] : 0;
		$cardTypeId = isset($_POST['card_type_id']) ? $_POST['card_type_id'] : 0;
		$mobile = isset($_POST['mobile']) ? trim($_POST['mobile']) : '';
		$name = isset($_POST['name']) ? trim($_POST['name']) : '';
		$sex = isset($_POST['sex']) ? intval($_POST['sex']) : 0;
		$number = isset($_POST['number']) ? trim($_POST['number']) : '';
		$startDate = isset($_POST['start_date']) ? trim($_POST['start_date']) : '0000-00-00';
		$endDate = isset($_POST['end_date']) ? trim($_POST['end_date']) : '0000-00-00';
		
		if($cardTypeId <= 0) {
			return $this->error('请选择卡种');
		}
		// 如果是添加，没卡号则报错
		if($cardId <= 0 && $number == '') {
			return $this->error('请输入卡号');
		}
		
		if($name == '') {
			return $this->error('请输入姓名');
		}
		
		if($sex != 1 && $sex != 2) {
			return $this->error('请选择性别');
		}
		
		if($mobile == '') {
			return $this->error('请输入手机号');
		}
		
		if($cardId > 0) {
			$cardInfo = WebApi_Card::instance()->getCardInfoByCardId($cardId);
			if(empty($cardInfo)) {
				return $this->error('卡信息错误');
			}
			
		}
		
		$cardTypeInfo = WebApi_Cardtype::instance()->getCardTypeInfoByCardTypeId($cardTypeId);
		if(empty($cardTypeInfo)) {
			return $this->error('卡种信息错误');
		}
		
		//判断会员卡号是否重复
		$stadiumId = Account::getManageStadiumId();
		//获取该场馆下的卡种
		$cardtypes = WebApi_Cardtype::instance()->getCardTypesByStadiumId($stadiumId, 1, 1000);
		if(!empty($cardtypes['card_types'])) {
			$cardTypeIds = array();
			foreach($cardtypes['card_types'] as $cardtype) {
				$cardTypeIds[] = $cardtype['card_type_id'];
			}
			
			//获取会员卡
			$cards = WebApi_Card::instance()->getCardsByParams(array('number' => $number, 'card_type_ids' => $cardTypeIds), 1, - 1, 'Array');
			if(!empty($cards)) {
				foreach($cards as $card) {
					if($card['card_id'] != $cardId) {
						return $this->error('该会员卡卡号已存在');
					}
				}
			}
		}
		
		// 添加则计算几下数据，并且保存
		if($cardId <= 0) {
			$_POST['type'] = $cardTypeInfo['unit'];
			$_POST['balance'] = $cardTypeInfo['balance'];
			$startDate = '0000-00-00';
			$endDate = '0000-00-00';
			if($cardTypeInfo['expire_mode'] == 'fix') {
				$startDate = $cardTypeInfo['expire_fix_start_date'];
				$endDate = $cardTypeInfo['expire_fix_end_date'];
			} else if($cardTypeInfo['expire_mode'] == 'notfix') {
				$unit = '';
				switch($cardTypeInfo['expire_notfix_period_unit']) {
					case 1 :
						$unit = 'years';
						break;
					case 2 :
						$unit = 'month';
						break;
					case 3 :
						$unit = 'day';
						break;
				
				}
				
				$timeNumber = $cardTypeInfo['expire_notfix_period'];
				$startDate = date('Y-m-d');
				$endDate = $startDate;
				if(!empty($unit)) {
					$endDate = date('Y-m-d', strtotime($startDate . ' +' . $timeNumber . ' ' . $unit));
				}
			}
			
			$_POST['start_date'] = $startDate;
			$_POST['end_date'] = $endDate;
			$result = WebApi_Card::instance()->add($_POST);
			if($result === false) {
				return $this->error('新增失败');
			}
			
			if($cardTypeInfo['balance'] > 0) {
				//添加充值记录
				$cardRecharge = array();
				$cardRecharge['card_id'] = $result;
				$cardRecharge['card_type_id'] = $cardTypeId;
				$cardRecharge['money'] = $cardTypeInfo['balance'];
				$cardRecharge['type'] = 2;
				$cardRecharge['balance_before'] = 0;
				$cardRecharge['balance_after'] = $cardRecharge['balance'] = $cardTypeInfo['balance'];
				$cardRecharge = WebApi_Card_Recharge::instance()->add($cardRecharge);
				if($cardRecharge === false) {
					return $this->error('新增失败');
				}
			}
			
			return $this->success('新增成功', '/card/list');
		}
		
		$result = WebApi_Card::instance()->edit($_POST, $cardId);
		if($result === false) {
			return $this->error('编辑失败');
		}
		
		return $this->success('编辑成功', '/card/detail?card_id='.$cardId);
	}
	
	/**
	 * @note 会员卡详情
	 * 
	 * @param int card_id
	 * @return html
	 * @author huwl
	 */
	public function actionDetail() {
		$cardId = isset($_GET['card_id']) ? $_GET['card_id'] : 0;
		
		if($cardId <= 0) {
			return $this->error('会员卡ID不能为空');
		}
		
		//获取会员卡
		$card = WebApi_Card::instance()->getCardInfoByCardId($cardId);
		if(empty($card)) {
			return $this->error('会员卡信息错误');
		}
		
		//卡种充值规则
		$cardtypeRechargeRules = WebApi_Cardtype_Recharge_Rule::instance()->getCardtypeRechargeRulesByParams(array('card_type_id' => $card['cardTypeInfo']['card_type_id'], 'recharge_rule' => $card['cardTypeInfo']['recharge_rule']));
		//卡种升级规则
		$upgrades = WebApi_Cardtype_Recharge_Rule::instance()->getRechargeUpgradesByParams(array('card_type_id' => $card['cardTypeInfo']['card_type_id']), 'normal');
		if(!empty($upgrades)) {
			$cardTypeIds = array();
			foreach($upgrades as $upgrade) {
				$cardTypeIds[] = $upgrade['upgrade_card_type_id'];
			}
			
			$cardTypes = WebApi_Cardtype::instance()->rows('*', $cardTypeIds);
			
			foreach($upgrades as &$upgrade) {
				$upgrade['card_type_name'] = isset($cardTypes[$upgrade['upgrade_card_type_id']]) ? $cardTypes[$upgrade['upgrade_card_type_id']]['name'] : '';
			}
		}
		
		$params = array();
		$params['card'] = $card;
		$params['upgrades'] = $upgrades;
		$params['cardtypeRechargeRules'] = $cardtypeRechargeRules;
		return $this->display('card/detail', $params);
	}
	
	/**
	 * @note ajax查询会员卡数据
	 *
	 * @param string search
	 * @return json
	 * @author huwl
	 */
	public function actionAjaxList() {
		$search = isset($_GET['search']) ? $_GET['search'] : '';
		$stadiumId = Account::getManageStadiumId();
		
		if($stadiumId <= 0) {
			return $this->ajaxError('场馆ID错误');
		}
		
		$data = array();
		$data['statusArray'] = array(1);
		$data['day'] = date('Y-m-d');
		if($search != '') {
			if(Filter::mobile($search)) {
				$data['mobile'] = $search;
			} else {
				$data['number'] = $search;
			}
		}
		
		//根据场馆获取相关的卡种
		$cardTypes = WebApi_Cardtype::instance()->getCardTypesByStadiumId($stadiumId, 1, 1000);
		if(empty($cardTypes['card_types'])) {
			return $this->ajaxError('没有会员卡');
		}
		
		$cardTypeIds = array();
		foreach($cardTypes['card_types'] as $cardType) {
			$cardTypeIds[] = $cardType['card_type_id'];
		}
		
		$cards = WebApi_Card::instance()->getCardsByParams($data, 1, - 1, 'Array');
		if(empty($cards)) {
			return $this->ajaxError('没有会员卡');
		}
		
		$cardData = array();
		foreach($cards as $card) {
			if(in_array($card['card_type_id'], $cardTypeIds)) {
				$cardData[] = $card;
			}
		}
		
		if(empty($cardData)) {
			return $this->ajaxError('没有会员卡');
		}
		return $this->ajaxSuccess($cardData);
	}
	
	/**
	 * 会员卡——订单列表
	 * 
	 * @param int card_id
	 * @param int cid
	 * @param string category
	 * @param string status
	 * @param int page
	 * @param int page_size
	 * @return html
	 * @author wcy
	 * 
	 */
	public function actionOrderList() {
		$cardId = isset($_GET['card_id']) ? $_GET['card_id'] : 0;
		$cid = isset($_GET['cid']) ? $_GET['cid'] : 0;
		$category = isset($_GET['category']) ? $_GET['category'] : 'all';
		$search = isset($_GET['search']) ? $_GET['search'] : '';
		$status = isset($_GET['status']) ? $_GET['status'] : 'all';
		$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
		$pageSize = isset($_GET['page_size']) ? intval($_GET['page_size']) : 20;
		
		if($cardId <= 0) {
			return $this->error('会员卡ID不能为空');
		}
		
		$data = array();
		if($category != 'all' && $search != '') {
		    $data[$category] = $search;
		}
		
		if($status !== 'all' && $status !== '') {
			$data['status'] = array($status);
		}
		
		if($cid > 0) {
			$data['cid'] = $cid;
		}
		
		$data['stadium_id'] = Account::getManageStadiumId();
		
		//卡信息
		$card = WebApi_Card::instance()->getCardInfoByCardId($cardId);
		if(empty($card)) {
			return $this->error('会员卡信息错误');
		}
		
		//卡下订单
		$cardOrder = WebApi_Order_Reduce_Card::instance()->getOrderReduceCardsByParams(array('card_id' => $cardId), 1, - 1);
		
		$oids = array();
		if(!empty($cardOrder)) {
			foreach($cardOrder as $vo) {
				$oids[] = $vo['oid'];
			}
		}
		$data['oids'] = $oids;
		
		$total = WebApi_Order::instance()->getOrderCountByParams($data);
		
		$orderMoneySum = 0;
		$orders = array();
		if($total > 0) {
			$orders = WebApi_Order::instance()->getOrdersByParams($data, $page, $pageSize);
			foreach($orders as &$order) {
		        $orderMoneySum += $order['reduce_money'];
			}
		}
		
		$params = array();
		$params['cid'] = $cid;
		$params['card'] = $card;
		$params['page'] = $page;
		$params['total'] = $total;
		$params['orders'] = $orders;
		$params['search'] = $search;
		$params['status'] = $status;
		$params['category'] = $category;
		$params['page_size'] = $pageSize;
		$params['orderMoneySum'] = $orderMoneySum;
		$params['cateAlias'] = Model_Category::$cateAlias;
		$params['pager'] = new pager($total, $page, $pageSize);
		return $this->display('card/order_list', $params);
	}
	
	/**
	 * 检查会员卡卡号是否重复
	 * 
	 * @param  string  number       
	 * @param  int card_id   
	 * @return json
	 * @author huwl
	 */
	public function checkCardNumber() {
		$number = isset($_GET['number']) ? trim($_GET['number']) : '';
		$cardId = isset($_GET['card_id']) ? $_GET['card_id'] : 0;
		$stadiumId = account::getManageStadiumId();
		
		if($number == '') {
			return $this->ajaxError('请输入会员卡卡号');
		}
		
		//获取该场馆下的卡种
		$cardtypes = WebApi_Cardtype::instance()->getCardTypesByStadiumId($stadiumId, 1, 1000);
		if(!empty($cardtypes['card_types'])) {
			$cardTypeIds = array();
			foreach($cardtypes['card_types'] as $cardtype) {
				$cardTypeIds[] = $cardtype['card_type_id'];
			}
			
			//获取会员卡
			$cards = WebApi_Card::instance()->getCardsByParams(array('number' => $number, 'card_type_ids' => $cardTypeIds), 1, - 1, 'Array');
			if(!empty($cards)) {
				foreach($cards as $card) {
					if($card['card_id'] != $cardId) {
						return $this->ajaxError('该会员卡卡号已存在');
					}
				}
			
			}
		}
		
		return $this->ajaxSuccess('成功');
	}
}