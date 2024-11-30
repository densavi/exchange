<?php
	# profile/swap [EX]

	
	$amount = $_POST['amount'];			# 1
	$exchange = $_POST['exchange'];		# BTC
	$for = $_POST['for'];				# USDT
	$action = $_POST['action'];			# calc, exchange

	if(!$logged) 
		die(json_encode(['response' => 'error', 'text' => 'Login need']));
	
	if($action == 'calc'){
		
		$row_from = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$exchange}' ORDER BY id ASC", false);
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$exchange}_USDT' ORDER BY id DESC", false);
		if($trading_course['id']){
			$upPrice = $row_from['price'] / 100 * $trading_course['percent'];
			$row_from['price'] = $row_from['price'] + $upPrice;
		}
		
		
		$row_for = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$for}' ORDER BY id ASC", false);
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$for}_USDT' ORDER BY id DESC", false);
		if($trading_course['id']){
			$upPrice = $row_for['price'] / 100 * $trading_course['percent'];
			$row_for['price'] = $row_for['price'] + $upPrice;
		}
		$price = $row_from['price'] / $row_for['price'];
	

		$sum = $amount * $price;
		die($sum);
	}


	if($action == 'exchange'){
		
		if($amount <= 0)
			die('0'); # Fill in the amount field!
		
		if($balances[$exchange] < $amount)
			die('1'); # You don't have enough funds to exchange!
			
		
		$row_from = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$exchange}' ORDER BY id ASC", false);
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$exchange}_USDT' ORDER BY id DESC", false);
		if($trading_course['id']){
			$upPrice = $row_from['price'] / 100 * $trading_course['percent'];
			$row_from['price'] = $row_from['price'] + $upPrice;
		}
		
		
		$row_for = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$for}' ORDER BY id ASC", false);
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$for}_USDT' ORDER BY id DESC", false);
		if($trading_course['id']){
			$upPrice = $row_for['price'] / 100 * $trading_course['percent'];
			$row_for['price'] = $row_for['price'] + $upPrice;
		}
		$price = $row_from['price'] / $row_for['price'];
	

		$sum = $amount * $price;		
		
		//var_dump($sum);
		db::query("UPDATE `balances` SET amount = amount - '{$amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$exchange}' ");
		db::query("UPDATE `balances` SET amount = amount + '{$sum}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$for}' ");
	
		createLog('Успешно свапнул '.$amount.' '.$row_from['tiker'].' на '.$sum.' '.$for.' ');
		die('3');
	}



?>