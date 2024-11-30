<?php
	# Создаем API ключ [CREATE_API_KEY]

	
	$withdraw = intval($_POST['withdraw_box']);		# 
	$spot = intval($_POST['spot_box']);				# 
	$margin = intval($_POST['margin_box']);			# 

	
	$api_key = sha1(uniqid());

	db::query("INSERT INTO `api_keys` (user_id, read_data, withdraw, spot, margin, api_key, enable, created_at) VALUES 
	('{$myProfile['id']}', '1', '{$withdraw}', '{$spot}', '{$margin}', '{$api_key}', '1', '".time()."'  )");	
		
	die('1');
	




?>