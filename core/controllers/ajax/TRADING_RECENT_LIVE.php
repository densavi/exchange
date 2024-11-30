<?php
	# Trade history [TRADING_RECENT_LIVE]

	




	$pairs = $_POST['pairs'];
	$new_pairs = $_POST['new_pairs'];
	
	$pair_from = explode('_', $new_pairs)['0'];
	$pair_to = explode('_', $new_pairs)['1'];
	$cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$pair_from}' ORDER BY id ASC LIMIT 1", false);
	
	
	
	$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$pair_from}_{$pair_to}' ORDER BY id DESC", false);
	$upPrice = $cryptocurrency['price'] / 100 * $trading_course['percent'];
	
	
	$arr2 = [];
	
	$base_price = $cryptocurrency['price'] + $upPrice;

	


	for ($n = 1; $n <= 100; $n++) {
		if(rand(1,2) == 1)
			$arr[] = $base_price + ($base_price / 100 * rand(10,20) / 10);
		else
			$arr[] = $base_price - ($base_price / 100 * rand(10,20) / 10);
		$arr[] = rand(100,2000) / $base_price;
		$arr[] = rand(1,2) == 1 ? "false" : "true";
		$arr2[] = $arr;
		unset($arr);
	}
	
	//var_dump($arr2);
	echo json_encode($arr2);
	die();




?>