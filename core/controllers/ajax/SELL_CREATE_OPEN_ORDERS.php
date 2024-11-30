<?php
	# Продаем актив по маркету [SELL_CREATE_OPEN_ORDERS]

	
	$pair_price = $_POST['pair_price'];			# 26803.04
	$pair_from = $_POST['pair_from'];			# BTC
	$pair_to = $_POST['pair_to'];				# USDT
	$sell_amount = $_POST['sell_amount'];		# 0.00037312
	$sell_section = $_POST['sell_section'];		# INSTANT

	
	
	$cost = $pair_price * $sell_amount;
	
	//$cost = _round($cost, 6);
	//$sell_amount = _round($sell_amount, 6);
	
	if($balances[$pair_from] < $sell_amount)
		die('2'); #Not enough balance.
	
	
	
	db::query("UPDATE `balances` SET amount = amount + '{$cost}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$pair_to}' ");
	db::query("UPDATE `balances` SET amount = amount - '{$sell_amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$pair_from}' ");
	
	
	db::query("INSERT INTO `orders` (user_id, pair_price, pair_from, pair_to, amount, buy_sell, section, time) VALUES 
	('{$myProfile['id']}', '{$pair_price}', '{$pair_from}', '{$pair_to}', '{$sell_amount}', 'sell', '{$sell_section}', '".time()."')");
	
	
	
	die('1');
	




?>