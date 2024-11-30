<?php
	# [UPDATE_PERSONAL_INFO]

	
	$fullname = $_POST['fullname'];						# 
	$date_birth = $_POST['date_birth'];					# 
	$present_address = $_POST['present_address'];		# 
	$permanent_address = $_POST['permanent_address'];	# 
	
	$user_city = $_POST['user_city'];					# 
	$user_postal_code = $_POST['user_postal_code'];		# 
	$user_country = $_POST['user_country'];				# 

	if(!$logged)
		die(json_encode(['response' => 'error', 'text' => 'Login need']));





	db::query("UPDATE `users` SET 
	fullname = '{$fullname}', date_birth = '{$date_birth}', present_address = '{$present_address}', permanent_address = '{$permanent_address}',
	user_city = '{$user_city}', user_postal_code = '{$user_postal_code}', user_country = '{$user_country}'
	WHERE id = '{$myProfile['id']}' ");
	
	die('1');
	
	




?>