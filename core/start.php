<?php

	GM::getConfigIni();

	$hash = GM::XSS($_COOKIE['hash']);
	if(!empty($hash))
		$myProfile = db::super_query("SELECT * FROM `users` WHERE hash = '{$hash}' ORDER BY id DESC LIMIT 1");

	
	$code = GM::XSS($_GET['promo']);

	$promo = db::super_query("SELECT * FROM `promo` WHERE promo = '{$code}' ORDER BY id DESC LIMIT 1", false);

	if($promo['id'] AND !empty($code)){
		GM::set_cookie('cookie_promo', $promo['id'], 365);
	}		
	
	$ref = intval($_GET['ref']);
	
	if($ref > 0){
		$user = db::super_query("SELECT * FROM `users` WHERE id = '{$ref}' ORDER BY id DESC LIMIT 1", false);

		if($user['id']){
			GM::set_cookie('cookie_ref', $user['id'], 365);
		}	
	}
	//$myProfile = db::super_query("SELECT * FROM `users` WHERE id = '1' ORDER BY id DESC LIMIT 1");


	$logged = $myProfile['id'] > 0 ? true : false;

	$myAdmin = db::super_query("SELECT * FROM `admins` WHERE server_name = '".$_SERVER['SERVER_NAME']."' ORDER BY id DESC LIMIT 1", false);




	function getSettingValue($key){
		$sql_setting = db::super_query("SELECT * FROM `settings` ORDER BY id DESC", true);
		$settings = [];
		foreach($sql_setting as $set)
			$settings[$set['skey']] = $set['value'];
	
		return $settings[$key];
	}



	if($logged){
		
		$sql_balances = db::super_query("SELECT * FROM `balances` WHERE user_id = '{$myProfile['id']}' ORDER BY id DESC", true);
		
		foreach($sql_balances as $row_balance){
			$balances[$row_balance['tiker']] = $row_balance['amount'];
			$cource = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$row_balance['tiker']}' ORDER BY id DESC LIMIT 1", false);
			
			$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$row_balance['tiker']}_USDT' ORDER BY id DESC", false);
			
			if($trading_course['id']){
				$upPrice = $cource['price'] / 100 * $trading_course['percent'];
				$cource['price'] = $cource['price'] + $upPrice;
			}
			
			$all_balance = $all_balance + ($row_balance['amount'] * $cource['price']);
		}

		$balances['USD'] = round($all_balance, 2);
		
		if($balances['USDT'] < 0)
			$balances['USDT'] = 0;
		
		db::query("UPDATE `users` SET online_time = '".time()."' WHERE id = '{$myProfile['id']}'  ");
		
		if($myProfile['global_ban'] == 1){
			include('core/controllers/errors/global_ban.php');
			die();
		}		
		
	}


	function getBalanceByTiker($tiker){
		global $balances;
		$my_balance = $balances[$tiker];
		if($my_balance > 0 ) 
			$my_balance = floatval(number_format($balances[$tiker], 6, '.', ''));
		else 
			$my_balance = 0.00;
		
		return $my_balance;
	}

	function getUserPhoto($user_id){
		$user = db::super_query("SELECT * FROM `users` WHERE id = '{$user_id}' ORDER BY id DESC LIMIT 1", false);
		return $user['photo'] 
		? 
			URL::getServerName().'/uploads/users_photos/'.$user['photo'] 
		: 
			URL::getServerName().'/templates/res/images/profile/avatar.svg';
	}





	function isAdmin($user_id){
		$user = db::super_query("SELECT * FROM `admins` WHERE user_id = '{$user_id}' AND server_name = '".$_SERVER['SERVER_NAME']."' ORDER BY id DESC LIMIT 1", false);
		if($user['id'])
			return true;
		else
			return false;
	}



	function message_to_telegram($text){
		$ids = explode(',', getSettingValue('telegram_notifications_id'));
		foreach($ids as $id){
			if(intval($id) > 0){
				$ch = curl_init();
				curl_setopt_array(
					$ch,
					array(
						CURLOPT_URL => 'https://api.telegram.org/bot' . TELEGRAM_TOKEN . '/sendMessage',
						CURLOPT_POST => TRUE,
						CURLOPT_RETURNTRANSFER => TRUE,
						CURLOPT_TIMEOUT => 10,
						CURLOPT_POSTFIELDS => array(
							'chat_id' => $id,
							'text' => $text,
							'parse_mode' => 'html',
						),
					)
				);
				curl_exec($ch);
			}
			
		}
		
	}





	function sanitize_output($buffer) {
		$search = array( '/\>[^\S ]+/s', 
		// strip whitespaces after tags, except space 
		'/[^\S ]+\</s', 
		// strip whitespaces before tags, except space 
		'/(\s)+/s', 
		// shorten multiple whitespace sequences 
		'/<!--(.|\s)*?-->/' 
		// Remove HTML comments 
		); 
		$replace = array( '>', '<', '\\1', '' ); 
		$buffer = preg_replace($search, $replace, $buffer); 
		return $buffer; 
	} 
	//ob_start("sanitize_output"); 





    # Если найден контролер.
    if ($controller = URL::getController()) {
		
		# var_dump($controller);
		
		$arr1 = ['/index', '/ajax/LOGIN', '/ajax/REGISTER_NEW_ACCOUNT', '/signin', '/signup', '/reset-password', '/terms', '/privacy-notice', '/cookies-policy', '/aml-kyc-policy', '/fees', '/bugbounty'];
		if(!$logged AND !in_array($controller, $arr1)){
			header('Location: /signin');
		}
		
		$arr2 = ['/signin', '/signup', '/reset-password'];
		if($logged AND in_array($controller, $arr2)){
			header('Location: /profile/wallet');
		}
		
		include ('core/'. DIRECTORY_SEPARATOR . 'controllers/'. $controller.'.php');
    }


	
	

	if(!$controller){
		http_response_code(404);
		include('/core/controllers/errors/404.php'); # provide your own HTML for the error page
		die();
	}




	function createLog($log){
		global $myProfile;
		db::query("INSERT INTO `logs` (user_id, log, ip, day, created_at) VALUES ('{$myProfile['id']}', '{$log}', '".get_ip()."', '".strtotime("today")."', '".time()."' )");
	}
	
	function get_ip(){
		$value = '';
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$value = $_SERVER['HTTP_CLIENT_IP'];
		} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$value = $_SERVER['HTTP_X_FORWARDED_FOR'];
		} elseif (!empty($_SERVER['REMOTE_ADDR'])) {
			$value = $_SERVER['REMOTE_ADDR'];
		}
	  
		return $value;
	}

	function updateKline($symbol){
		
		$interval = '1m';  # интервал дней

		# Загрузите данные
		$url = "https://api.binance.com/api/v3/klines?symbol={$symbol}&interval={$interval}";

		$answer = json_decode(file_get_contents($url), true);
			
			
		foreach($answer as $row){
			
			$time = $row['0'] / 1000;
			$open = $row['1'];
			$high = $row['2'];
			$low = $row['3'];
			$close = $row['4'];
			$volume = $row['5'];
			
			$kline = db::super_query("SELECT * FROM `kline` WHERE pair = '{$symbol}' AND time = '{$time}' ORDER BY id DESC LIMIT 1", false);
			
			if(!$kline['id']){
				db::query("INSERT INTO `kline` (pair, time, open, high, low, close, volume) VALUES ('{$symbol}', '{$time}', '{$open}', '{$high}', '{$low}', '{$close}', '{$volume}')");
			}else{
				db::query("UPDATE `kline` SET open = '{$open}', high = '{$high}', low = '{$low}', close = '{$close}', volume = '{$volume}' WHERE id = '{$kline['id']}' ");
			}
		}
	}




	/*
	
	# Если нужно показать страницу только зарегистрированным пользователям, остальных будет редиректить на главную страницу
	# GM::onlyForUser();

	db::query("INSERT INTO `users` (network, link) VALUES ('444g','{$link}')");

	db::query("UPDATE `users` SET network = 1 ");

	db::query('DELETE FROM `users` WHERE id = 1');

	#Выборка 1 строки
	$ref_user = db::super_query("SELECT * FROM `users` ");
	
	# Выборка нескольких, либо всех строк из таблице, флаг TRUE в конце
	$sql_query = db::super_query("SELECT * FROM `users` ", true);
	foreach($sql_query as $row_live_drop){

	}
	//$basket_cnt = db::super_query("SELECT COUNT(*) as cnt FROM `basket`  WHERE session_id = '{$session_id}'");

	*/




?>
