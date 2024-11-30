<?php
	# 

	
	$tiker = $_POST['terminal_crypto'];	# BTC
	
	
	if($balances['USDT'] < 0)
		$balances['USDT'] = 0;

	$response = [
		'my_balance' => $balances['USDT'] > 0 ? $balances['USDT'] : 0,
		'available_crypto' => 0, 							# Не используется
		'available_usd' => $balances['USDT'] > 0 ? $balances['USDT'] : 0,
		//'crypto_balance' => getBalanceByTiker($tiker),		# Баланс в выбранной крипте
		'crypto_balance' => number_format($balances[$tiker], 8, '.',''),		# Баланс в выбранной крипте
		'crypto_balance_usd' => 0,							# Не используется
	];

	die(json_encode($response));
	



?>