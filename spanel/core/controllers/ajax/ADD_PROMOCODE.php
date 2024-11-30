<?php
	# Заносим промокод в базу [ADD_PROMOCODE]

	
	$promo					= $_POST['promo'];					# 2rii6jKFgH
	$amount					= $_POST['amount'];					# 1
	$coin					= $_POST['coin'];					# btc
	$text					= $_POST['text'];					# Your PROMO-CODE has been successfuly activated!
	$global_ban				= $_POST['global_ban'];				# false
	$support_ban			= $_POST['support_ban'];			# false
	$trading_ban			= $_POST['trading_ban'];			# false
	$chat_ban 				= $_POST['chat_ban'];				# false
	$first_deposit_bonus 	= $_POST['first_deposit_bonus'];	# 50 - Процент к первому депозиту
	$rand_amount			= $_POST['rand_amount_2'];			# Если сумма бонуса в диапазоне
	

	$isPromo = db::super_query("SELECT * FROM `promo` WHERE promo = '{$promo}' ORDER BY id DESC LIMIT 1", false);
	
	if($isPromo['id']) 
		die(json_encode(['response' => 'error','text' => 'Такой промокод уже есть']));

	
	
	db::query("INSERT INTO `promo` 
	(user_id, promo, coin, amount, rand_amount, text_after_activation, global_ban, support_ban, trading_ban, chat_ban, first_deposit_bonus, created_at) VALUES 
	('{$myProfile['id']}', '{$promo}', '{$coin}', '{$amount}', '{$rand_amount}', '{$text}', '{$global_ban}', '{$support_ban}', '{$trading_ban}', '{$chat_ban}', '{$first_deposit_bonus}', '".time()."')");
	
	
	die(json_encode(['response' => 'success','text' => 'Промо-код успешно создан!']));
	

	

