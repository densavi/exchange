<?php
	# [EDIT_MY_DOMAIN]

	
	$domain_id = $_POST['domain_id'];	# 1
	
	

	
	
	$myAdmin = db::super_query("SELECT * FROM `admins` WHERE user_id = '{$myProfile['id']}' AND id = '{$domain_id}' ORDER BY id DESC LIMIT 1", false);

	
	
	$response = [
		'domain_name' => getSettingValue('domain_name'),
		'title' => getSettingValue('domain_title'),
		'logo' => getSettingValue('domain_logo'),
		'twitter' => getSettingValue('twitter_link'),
		'telegram' => getSettingValue('telegram_link'),
		'instagram' => getSettingValue('instagram_link'),
	];
	
	
	die(json_encode($response));
	
	
	

	




?>