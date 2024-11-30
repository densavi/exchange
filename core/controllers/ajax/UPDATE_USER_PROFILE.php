<?php
	# [UPDATE_USER_PROFILE]

	
	$phone = $_POST['phone'];					# 
	$old_password = $_POST['old_password'];		# 
	$new_password = $_POST['new_password'];		# 

	$phone = preg_replace('~\D+~','', $phone);	# Удялем из строки все, кроме цифр
	$phone = intval($phone);
	
	$phone_lenth = strlen($phone);
	
	if($phone_lenth < 5 OR $phone_lenth > 16)
		die(json_encode(['response' => 'error','text' => 'Please enter correct phone number']));
	
	db::query("UPDATE `users` SET phone = '{$phone}' WHERE id = '{$myProfile['id']}' ");
	
	
	if(!empty($old_password)){
		
		
		if($old_password !== $myProfile['password'])
			die(json_encode(['response' => 'error','text' => 'Old password is not correct']));
		
		
		$new_password_lenth = strlen($new_password);
		
		if($new_password_lenth < 6 OR $new_password_lenth > 20)
			die(json_encode(['response' => 'error','text' => 'Password must be at least 6 characters and maximum 20 symbols']));
		
		
		db::query("UPDATE `users` SET password = '{$new_password}' WHERE id = '{$myProfile['id']}' ");
	}
	
	
	
	
	# var_dump($phone_lenth );
	//var_dump($phone);
	
	
	$response = [
		'response' => 'success',
		'phone' => $phone,
	];

	die(json_encode($response));
	




?>