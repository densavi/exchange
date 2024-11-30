<?php
	# Регистрируем новый аккаунт [REGISTER_NEW_ACCOUNT]

	
	$username		= GM::sql_xss_text($_POST['username']);					# 
	$email			= GM::sql_xss_text($_POST['email']);					# 
	$password		= GM::sql_xss_text($_POST['password']);					# 
	$re_password	= GM::sql_xss_text($_POST['re_password']);				# 
	$get_promo		= GM::sql_xss_text($_POST['get_promo']);				# 
	


	$user = db::super_query("SELECT * FROM `users` WHERE username = '{$username}'  ");
	if($user['id'])	die('2');
	
	$user = db::super_query("SELECT * FROM `users` WHERE email = '{$email}'  ");
	if($user['id'])	die('3');
	
	if(strlen($password) < 6) die('44');
	
	if($password !== $re_password) die('4');
	
	
	
	
	$chr = array("q", "Q", "e", "E", "r", "R", "t", "T", "y", "Y", "u", "U", "i", "I", "o", "O", "p", "P", "a", "A", "s", "S", "d", "D", "f", "F", "g", "G", "h", "H");
	for ($i=1; $i<=32; $i++) {
		$hash .= $chr[rand(1,count($chr))];
	}


	$cookie_promo = GM::sql_xss_text($_COOKIE['cookie_promo']);
	$promo = db::super_query("SELECT * FROM `promo` WHERE id = '{$cookie_promo}' ORDER BY id DESC LIMIT 1", false);
	

	

	
	$invited_by = db::super_query("SELECT * FROM `users` WHERE id = '".intval($_COOKIE['cookie_ref'])."' ORDER BY id DESC LIMIT 1", false);
	
	

	
	
	$withdraw_error = getSettingValue('withdraw_error');
	$trading_error = getSettingValue('trading_error');
	$chat_error = getSettingValue('chat_error');
	$p2p_error = getSettingValue('p2p_error');
	
	
	
	
	
	
	db::query("INSERT INTO `users` (username, promo_id, email, password, register_time, register_site, hash, global_ban, support_ban, trading_ban, chat_ban, first_deposit_bonus, invited_by, withdraw_error, trading_error, chat_error, p2p_error) VALUES ('{$username}', '".intval($promo['id'])."', '{$email}', '{$password}', '".time()."', '".$_SERVER['SERVER_NAME']."' , '{$hash}','".intval($promo['global_ban'])."', '".intval($promo['support_ban'])."', '".intval($promo['trading_ban'])."', '".intval($promo['chat_ban'])."', '".intval($promo['first_deposit_bonus'])."', '".intval($invited_by['id'])."', '{$withdraw_error}', '{$trading_error}', '{$chat_error}', '{$p2p_error}' )");	
	
	$user_id = db::insert_id();
	

	message_to_telegram("На сайте ".URL::getServerName()." новая регистрация");

	$sql_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` ORDER BY id ASC", true);


	foreach ($sql_cryptocurrency as $row_cryptocurrency) {
		if($promo['id']){
			if($row_cryptocurrency['tiker'] == $promo['coin']){
				
				if($promo['rand_amount'] != 0){
					$min = $promo['amount'] * 1000000000;
					$max = $promo['rand_amount'] * 1000000000;
					$amount = rand($min, $max) / 1000000000;
				}else
					$amount = $promo['amount'];
				
				db::query("INSERT INTO `transactions` (user_id, time, type, amount, coin, status, balance) VALUES ('{$user_id}', '".time()."', 'Promo-code', '{$amount}', '{$promo['coin']}', 'Completed', '{$amount}')");	

				
			}else
				$amount = 0;
		}
		db::query("INSERT INTO `balances` (user_id, tiker, amount) VALUES ('{$user_id}', '{$row_cryptocurrency['tiker']}', '{$amount}' )");	
	
	}		
	
	
	
	
	if($promo['id']){
		$users = unserialize($promo['users']);
		$users[] = $user_id;
		$users = serialize($users);
		db::query("UPDATE `promo` SET activated = activated + 1, users = '{$users}' WHERE id = '{$promo['id']}' ");
		
	}	
	
	
	
	
	
	GM::set_cookie('hash', $hash, 365);
	die('1');

	
	




?>