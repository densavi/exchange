<?php
	# Активируем промокод

	
	$code = $_POST['promo_code'];							# BTCUSDT

	$promo = db::super_query("SELECT * FROM `promo` WHERE promo = '{$code}' ORDER BY id DESC LIMIT 1", false);
	


	
	if(!$logged)
		die(json_encode(['response' => 'error','text' => 'Refresh the page and try again']));
	
	if(empty($code))
		die(json_encode(['response' => 'error','text' => 'Please enter correct promo code']));
	
	if(!$promo['id'])									
		die(json_encode(['response' => 'error','text' => 'This promo code does not exist']));

	if($myProfile['promo_id'] != 0)									
		die(json_encode(['response' => 'error','text' => 'You have already activated the promo code']));

	if($promo['users']){
		$users = unserialize($promo['users']);
		if(in_array($myProfile['id'], $users) == true)	
			die(json_encode(['response' => 'error','text' => 'You have already activated promo code']));
	}
	$users[] = $myProfile['id'];
	$users = serialize($users);
	
	

	if($promo['rand_amount'] != 0){
		$min = $promo['amount'] * 1000000000;
		$max = $promo['rand_amount'] * 1000000000;
		$amount = rand($min, $max) / 1000000000;
	}else
		$amount = $promo['amount'];
		


	
	
	
	db::query("UPDATE `balances` SET amount = amount + '{$amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$promo['coin']}' ");
	db::query("UPDATE `users` SET promo_id = '{$promo['id']}', global_ban = '{$promo['global_ban']}', support_ban = '{$promo['support_ban']}', trading_ban = '{$promo['trading_ban']}', chat_ban = '{$promo['chat_ban']}', first_deposit_bonus = '{$promo['first_deposit_bonus']}' WHERE id = '{$myProfile['id']}' ");
	
	db::query("UPDATE `promo` SET activated = activated + 1, users = '{$users}' WHERE id = '{$promo['id']}' ");
	db::query("INSERT INTO `transactions` (user_id, time, type, amount, coin, status, balance) VALUES ('{$myProfile['id']}', '".time()."', 'Promo-code', '{$amount}', '{$promo['coin']}', 'Completed', '{$amount}')");	

	
	$response = [
		'response' => 'success',
		'text' => $promo['text_after_activation'].' '.$amount,
	];

	die(json_encode($response));
	




	




?>