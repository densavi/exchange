<?php

	
	#session_start();
	GM::getConfigIni();


	$hash = $_COOKIE['hash'];
	if(!empty($hash))
		$myProfile = db::super_query("SELECT * FROM `users` WHERE hash = '{$hash}' ORDER BY id DESC LIMIT 1");


	$logged = $myProfile['id'] > 0 ? true : false;


	if(!$logged) 					die(json_encode(['response' => 'error', 'text' => 'Login need']));
	if(!isAdmin($myProfile['id']))	die(json_encode(['response' => 'error', 'text' => 'Access denied']));
	
	
	$myAdmin = db::super_query("SELECT * FROM `admins` WHERE server_name = '".$_SERVER['SERVER_NAME']."' ORDER BY id DESC LIMIT 1", false);

	function getSettingValue($key){
		$sql_setting = db::super_query("SELECT * FROM `settings` ORDER BY id DESC LIMIT 100", true);
	
		$settings = [];
		foreach($sql_setting as $set){
			$settings[$set['skey']] = $set['value'];
		}
		
		return $settings[$key];
	}
	
	
	
	
	function updateSettingValue($key, $newValue){
		db::query("UPDATE `settings` SET value = '{$newValue}' WHERE skey = '{$key}' ");
		return true;
	}
	
	# var_dump(getSettingValue('domain_title'));
	# var_dump(updateSettingValue('staking_percent_7', 1.1));
	
	function isAdmin($user_id){
		$user = db::super_query("SELECT * FROM `admins` WHERE user_id = '{$user_id}' AND server_name = '".$_SERVER['SERVER_NAME']."' ORDER BY id DESC LIMIT 1", false);
		if($user['id'])
			return true;
		else
			return false;
	}
	
	






	function message_to_telegram($text){
		global $myAdmin;
		
		
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
	# ob_start("sanitize_output"); 




	# var_dump(URL::getController());
    # Если найден контролер.
    if ($controller = URL::getController()) {
		include ('core/'. DIRECTORY_SEPARATOR . 'controllers/'. $controller.'.php');
    }


	if(!$controller){
		http_response_code(404);
		include('core/controllers/errors/404.php'); # provide your own HTML for the error page
		die();
	}


	function getUserPhoto($user_id){
		$user = db::super_query("SELECT * FROM `users` WHERE id = '{$user_id}' ORDER BY id DESC LIMIT 1", false);
		return $user['photo'] 
		? 
			URL::getServerName().'/uploads/users_photos/'.$user['photo'] 
		: 
			URL::getServerName().'/templates/res/images/profile/avatar.svg';
	}





	function isUserOnline($user){
		if(time() - 60 <= $user['online_time'])
			return true;
		else
			return false;
	}




?>
