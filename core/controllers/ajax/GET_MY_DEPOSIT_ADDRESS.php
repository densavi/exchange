<?php
	# Получаем адрес для депозита [GET_MY_DEPOSIT_ADDRESS]

	if(!$logged) die(json_encode(['response' => 'error', 'text' => 'Login need']));
	
	$crypto = $_POST['crypto'];	# BTC
	


	
	

	$row = db::super_query("SELECT * FROM `deposit_wallets` WHERE tiker = '{$crypto}'  ORDER BY id ASC", false);


	createLog('Запрос адреса '.$row['tiker'].' для депозита');

	$response = [
		'response' => 'success',
		'address' => $row['wallet'],
		'tag' => '',
	];

	die(json_encode($response));
