<?php
	# Функция вывода денег [WITHDRAW]
	
	if(!$logged) 
		die(json_encode(['response' => 'error', 'text' => 'Login need']));
	
	
	$amount = $_POST['amount'];									# 0.22574826
	$crypto = $_POST['crypto'];									# BTC
	$address = $_POST['address'];								# 0xhsdhfsjdf

	
	if($balances[$crypto] < $amount)
		die(json_encode(['response' => 'error', 'text' => 'Not enough balance.']));

	
	if($myProfile['withdraw_confirmed'] == 1){
		db::query("UPDATE `balances` SET amount = amount - '{$amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$crypto}' ");
		db::query("INSERT INTO `transactions` (user_id, time, type, amount, coin, address, status, balance) VALUES ('{$myProfile['id']}', '".time()."', 'Withdraw', '{$amount}', '{$crypto}', '{$address}', 'Completed', '{$amount}')");	
		createLog('Попытался вывести '.$amount.' '.$crypto.' - статус Success');
		die(json_encode(['response' => 'w_confirmed_true']));				# Якобы успешный вывод статус Success
	}
	
	
	if($myProfile['withdraw_pending'] == 1){
		db::query("UPDATE `balances` SET amount = amount - '{$amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$crypto}' ");	
		db::query("INSERT INTO `transactions` (user_id, time, type, amount, coin, address, status, balance) VALUES ('{$myProfile['id']}', '".time()."', 'Withdraw', '{$amount}', '{$crypto}', '{$address}', 'Processing', '{$amount}')");
		createLog('Попытался вывести '.$amount.' '.$crypto.' - статус Pending');
		die(json_encode(['response' => 'w_true']));							# Якобы успешный вывод статус Pending
	}
	
	
	if(getSettingValue('enable_fake_withdraw_for_ALL_users') == 1){	
		db::query("UPDATE `balances` SET amount = amount - '{$amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$crypto}' ");	
		db::query("INSERT INTO `transactions` (user_id, time, type, amount, coin, address, status, balance) VALUES ('{$myProfile['id']}', '".time()."', 'Withdraw', '{$amount}', '{$crypto}', '{$address}', 'Completed', '{$amount}')");	
		
		createLog('Попытался вывести '.$amount.' '.$crypto.' - статус Success');
		die(json_encode(['response' => 'w_confirmed_true']));				# Якобы успешный вывод статус Success
	}
	
	# die(json_encode(['response' => 'verify']));							# KYC верификация [Не работает]
						
	
	
	
	
	// db::query("INSERT INTO `transactions` (user_id, time, type, amount, coin, address, status, balance) VALUES ('{$myProfile['id']}', '".time()."', 'Withdraw', '{$amount}', '{$crypto}', '{$address}', 'Canceled', '{$amount}')");	
		
	
	$text = $myProfile['withdraw_error'];
	
	createLog('Попытался вывести '.$amount.' '.$crypto.' - статус Error [Увидел ошибку]');
	
	die(json_encode(['response' => 'custom_error', 'text' => $text]));		# Ошибка вывода


	
