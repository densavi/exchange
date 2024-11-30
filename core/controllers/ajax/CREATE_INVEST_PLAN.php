<?php
	# profile/invest - Создаем инвестиционный план [CREATE_INVEST_PLAN]
	

	
	$invest_plan = $_POST['invest_plan'];			# 1,2,3,4.
	$invest_coin = $_POST['invest_coin'];			# eos
	$invest_amount = $_POST['invest_amount'];		# 12
	$invest_profit = $_POST['invest_profit'];		# 39.160000
	$invest_total = $_POST['invest_total'];			# 61.160000



	if(!$logged) 
		die(json_encode(['response' => 'error', 'text' => 'Login need']));

	if($balances[$pair_to] < $cost)
		die('2'); # Not enough balance.

	if($invest_plan == 1){
		$duration = 7;
		$profit_percent = getSettingValue('staking_percent_7') * 7;
	}
	if($invest_plan == 2){
		$duration = 14;
		$profit_percent = getSettingValue('staking_percent_14') * 14;
	}
	if($invest_plan == 3){
		$duration = 30;
		$profit_percent = getSettingValue('staking_percent_30') * 30;
	}
	if($invest_plan == 4){
		$duration = 90;
		$profit_percent = getSettingValue('staking_percent_90') * 90;
	}
	
	
	if($invest_plan < 1 OR $invest_plan > 4)
		die('4'); # An unknown error has occurred, please try again later
	
	if($invest_amount <= 0)
		die('4'); # An unknown error has occurred, please try again later
	
	if($invest_amount > $balances[$invest_coin])
		die('2'); # Not enough balance.
		
	if($myProfile['invest_ban'] == 1){
		createLog('Попытался инвестировать '.$invest_amount.' '.$invest_coin.' - получил ошибку. Бан на инестиции в профиле');
		die('6'); # You cannot make an investment. Contact support for details
	}
	if(getSettingValue('enable_invest_for_ALL_users') == 0){
		createLog('Попытался инвестировать '.$invest_amount.' '.$invest_coin.' - получил ошибку. Запрет на инестиции в настройках биржи [Enable Invest (staking) for ALL users]');
		die('6'); # You cannot make an investment. Contact support for details
	}
	$profit_crypto = $invest_amount / 100 * $profit_percent; # BTC
	
	
	$end_at = time() + $duration * 86400;
	
	
	db::query("INSERT INTO `invest` (user_id, plan, coin, amount, profit_percent, created_at, end_at) VALUES ('{$myProfile['id']}', '{$invest_plan}', '{$invest_coin}', '{$invest_amount}', '{$profit_percent}', '".time()."', '{$end_at}' )");	


	db::query("UPDATE `balances` SET amount = amount - '{$invest_amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$invest_coin}' ");
	
	createLog('Успешно инвестировал '.$invest_amount.' '.$invest_coin.'');
	die('1');