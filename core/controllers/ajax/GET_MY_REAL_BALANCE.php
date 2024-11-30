<?php
	# GET_MY_REAL_BALANCE

	if(!$logged) die('Login need');
	
	$tiker = $_POST['crypto'];	# BTC

	die(getBalanceByTiker($tiker));