<?php
	# Привязка жертвы к аккаунту [BIND_USER]
	
	$email = $_POST['email']; # mail@gmail.com
	
	$user = db::super_query("SELECT * FROM `users` WHERE email = '{$email}' ORDER BY id DESC LIMIT 1", false);
	
	if (!filter_var($email, FILTER_VALIDATE_EMAIL))
		die(json_encode(['response' => 'error','text' => 'Email указан некорректно']));
	
	if(!$user['id']) 
		die(json_encode(['response' => 'error','text' => 'Пользователя не существует!']));
	

	$admin = db::super_query("SELECT * FROM `admins` WHERE user_id = '{$user['id']}' ORDER BY id DESC LIMIT 1", false);
	
	if($admin['id']) 
		die(json_encode(['response' => 'error', 'text' => 'Нельзя привязать админа']));
	
	
	
	//db::query("UPDATE `users` SET fff = '{$myProfile['id']}' WHERE id = '{$user['id']}' ");
	
	
	die(json_encode(['response' => 'success','text' => 'Жертва успешно привязан к вашему профилю!']));
	
	
	
	
	
	
	