<?php
	# Получаем баланс определенной криптовалюты

	if(!$logged) die('Login need');
	
	$tiker = $_POST['crypto'];	# BTC

	die(getBalanceByTiker($tiker));