<?php
	# Редактируем статус [API_STATUS_EDIT]

	
	$api_id = intval($_POST['api_id']); # 1

	
	$row = db::super_query("SELECT * FROM `api_keys` WHERE user_id = '{$myProfile['id']}' AND id = '{$api_id}' ORDER BY id ASC LIMIT 10", false);
	
	
	
	
	if($row['enable'] == 0)
		db::query("UPDATE `api_keys` SET enable = 1 WHERE id = '{$api_id}'");
	else
		db::query("UPDATE `api_keys` SET enable = 0 WHERE id = '{$api_id}'");
		
	

	die('1');

?>