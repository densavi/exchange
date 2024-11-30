<?php
	# Покупаем актив по маркету [BUY_CREATE_OPEN_ORDERS]

	
	$pair_price = $_POST['pair_price'];			# 26803.04
	$pair_from = $_POST['pair_from'];			# BTC
	$pair_to = $_POST['pair_to'];				# USDT - Валюта за которую покупаем
	$buy_amount = $_POST['buy_amount'];			# 0.00037312
	$buy_section = $_POST['buy_section'];		# INSTANT

	
	
	$cost = $pair_price * $buy_amount;
	
	if($balances[$pair_to] < $cost)
		die('2'); #Not enough balance.
	
	
	// $cost = _round($cost, 6);
	// $buy_amount = _round($buy_amount, 6);
	
	// $cost = $cost > 0 ? $cost : 0;
	// $buy_amount = $buy_amount > 0 ? $buy_amount : 0;	
	
	db::query("UPDATE `balances` SET amount = amount - '{$cost}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$pair_to}' ");
	db::query("UPDATE `balances` SET amount = amount + '{$buy_amount}' WHERE user_id = '{$myProfile['id']}' AND tiker = '{$pair_from}' ");
	
	
	
	
	
	db::query("INSERT INTO `orders` (user_id, pair_price, pair_from, pair_to, amount, buy_sell, section, time) VALUES 
	('{$myProfile['id']}', '{$pair_price}', '{$pair_from}', '{$pair_to}', '{$buy_amount}', 'buy', '{$buy_section}', '".time()."')");
	
	die('1');
	




?>