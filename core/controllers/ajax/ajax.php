<?php


$action = $_POST['action'];
if(!$_POST['action'])
	$action = $_GET['action'];




if($action == 'CLOSE_OPEN_ORDERS'){
	
	
	echo 'no';
	die();
	
}







# Покупаем крипту
if($action == 'BUY_CREATE_OPEN_ORDERS'){
	
	$pair_price = $_POST['pair_price'];		# 1751.09
	$pair_from = $_POST['pair_from'];		# eth
	$pair_to = $_POST['pair_to'];			# usdt
	$buy_amount = $_POST['buy_amount'];		# 0.025
	$buy_section = $_POST['buy_section'];	# INSTANT
	
	
	
	echo '<div class="orders_noHis">No historical orders</div>';
	die();
	
}





?>