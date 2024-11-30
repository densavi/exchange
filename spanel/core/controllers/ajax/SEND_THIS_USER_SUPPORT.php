<?php
	# Отправляем сообщение в поддержку [SEND_SUPPORT_MESSAGE]


	$text = htmlspecialchars(addslashes($_POST['support_text']));	# 
	$user_id = intval($_POST['user_id']);	# ID юзера, которому отправляем сообщение
	
	
	
	
	$user = db::super_query("SELECT * FROM `users` WHERE id = '{$user_id}' ", false);
	



	db::query("INSERT INTO `support` (user_id, text, created_at, direction, read_by_owner_at) VALUES ('{$user_id}', '{$text}', '".time()."', '2', '".time()."'   )");
	
	die('1');
