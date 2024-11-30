<?php
	# [API_DELETE]

	
	$api_id = intval($_POST['api_id']); # 1


	$row = db::super_query("SELECT * FROM `api_keys` WHERE user_id = '{$myProfile['id']}' AND id = '{$api_id}' ORDER BY id ASC LIMIT 10", false);

	db::query("UPDATE `api_keys` SET deleted_at = '".time()."' WHERE id = '{$api_id}'");
	
	die('1');
	




?>