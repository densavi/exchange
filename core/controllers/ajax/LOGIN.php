<?php
	# Авторизация пользователя

	
	$email = $_POST['email'];										# mail@mail.ru
	$password = $_POST['password'];									# sdfsdfsd22
	


	$user = db::super_query("SELECT * FROM `users` WHERE email = '{$email}' AND password = '{$password}' ");

	if(!$user['id'])
		die(json_encode(['response' => 'no_user']));


	




	db::query("UPDATE `users` SET hash = '{$user['hash']}' WHERE id = '{$user['id']}'");
	GM::set_cookie('hash', $user['hash'], 365);




	die(json_encode(['response' => 'success']));

	




?>