<?php
	# [SAVE_EDIT_STABLE_TRADING_COURSE]

	
	
	
	$pair = $_POST['course_pairs'];					# BTC_USDT
	$percent = intval($_POST['course_amount']);		# 10% - Число это процент, на который завышаем курс



	$course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$pair}' ORDER BY id DESC LIMIT 1", false);

	if(!$course['id'])
		db::query("INSERT INTO `trading_course` (pair, percent, created_at) VALUES ('{$pair}', '{$percent}', '".time()."' )");
	else
		db::query("UPDATE `trading_course` SET percent = '{$percent}' WHERE id = '{$course['id']}' ");
	





	die('1');
	

	

	