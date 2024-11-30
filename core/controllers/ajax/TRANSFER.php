<?php
	# Функция вывода денег другому пользователю [TRANSFER]
	
	if(!$logged) 
		die(json_encode(['response' => 'error', 'text' => 'Login need']));
	
	$amount = $_POST['amount'];				# 0.22574826
	$tiker = $_POST['crypto'];				# BTC
	$email = $_POST['user_email'];			# ggg@gg.ru




	$user = db::super_query("SELECT * FROM `users` WHERE email = '{$email}'  ORDER BY id DESC", false);

	if(!$user['id'])
		die('4'); # User with this email was not found

	if($user['id'] == $myProfile['id'])
		die('23'); # You can't translate yourself!

	if($myProfile['transfer_ban'] == 1){
		createLog('Попытался перевести '.$amount.' '.$tiker.' юзеру <a href="user-edit?id='.$user['id'].'"> '.$email.' </a> - получил ошибку. Бан на исходящий перевод в профиле');
		die('6'); # Transfer is forbidden for your account. Probably, it is the result of non-compliance. More information you can get from support manager.
	}
	if($balances[$tiker] < $amount)
		die('2'); # Not enough balance.


	if(getSettingValue('enable_transfer_for_ALL_users') == 0){
		createLog('Попытался перевести '.$amount.' '.$tiker.' юзеру <a href="user-edit?id='.$user['id'].'"> '.$email.' </a> - получил ошибку. Запрет на переводы в настройках биржи [Enable Transfer for ALL users]');
		die('6'); # Transfer is forbidden for your account. Probably, it is the result of non-compliance. More information you can get from support manager.
	}


	db::query("UPDATE `balances` SET amount = amount - '{$amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$tiker}' ");
	db::query("UPDATE `balances` SET amount = amount + '{$amount}' WHERE user_id = '{$user['id']}' AND tiker = '{$tiker}' ");
	
	db::query("INSERT INTO `transfers` (user_id, user_email, created_at, type, amount, coin) VALUES ('{$myProfile['id']}', '{$user['email']}', '".time()."', 'Sent', '{$amount}', '{$tiker}' )");	
	db::query("INSERT INTO `transfers` (user_id, user_email, created_at, type, amount, coin) VALUES ('{$user['id']}', '{$myProfile['email']}', '".time()."', 'Received', '{$amount}', '{$tiker}' )");	
	
	createLog('Успешно перевел '.$amount.' '.$tiker.' юзеру <a href="user-edit?id='.$user['id'].'"> '.$email.' </a>');
	die('1'); # OK
	




?>