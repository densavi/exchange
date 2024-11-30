<?php
	# [REFUND_INVEST_PLAN]
	
	if(!$logged) die('Login need');

	
	$id = intval($_POST['invest_plan_id']); # 1

	$sql = db::super_query("SELECT * FROM `invest` WHERE user_id = '{$myProfile['id']}' AND id = '{$id}' ORDER BY id DESC", false);

	if(!$sql['id'])
		die('error');
	
	
	db::query("DELETE FROM `invest` WHERE id = '{$sql['id']}' ");
	
	db::query("UPDATE `balances` SET amount = amount + '{$sql['amount']}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$sql['coin']}' ");
	
	
	die('1');
	




?>