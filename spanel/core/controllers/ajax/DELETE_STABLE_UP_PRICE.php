<?php
	# [DELETE_STABLE_UP_PRICE]

	
	$pair_id = intval($_POST['pair_id']);				# user ID [28]
	
	$course = db::super_query("SELECT * FROM `trading_course` WHERE id = '{$pair_id}' ORDER BY id DESC LIMIT 1", false);

	if(!$course['id'])
		die('3');


	db::query("DELETE FROM `trading_course` WHERE id = '{$course['id']}' ");


	die('1');
	
	
	

	