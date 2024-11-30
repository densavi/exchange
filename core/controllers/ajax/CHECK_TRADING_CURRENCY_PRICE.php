<?php
	# На сколько повышаем курс в процентах

	


	
	$pairs = $_POST['pairs'];	# ETH_USDT
	

	
	$pair_from = explode('_', $pairs)['0'];
	$pair_to = explode('_', $pairs)['1'];

	
	$cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$pair_from}' ORDER BY id ASC LIMIT 1", false);	
	
	

	
	$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$pair_from}_{$pair_to}' ORDER BY id DESC", false);
	$upPrice = $cryptocurrency['price'] / 100 * $trading_course['percent'];
	
	
	echo $upPrice;
	die();
	


?>