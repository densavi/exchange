<?php
	# Обновляем минимальный депозит  [SAVE_SP_MIN_DEPOSIT_AMOUNT]

	
	
	
	$sp_minimum_deposit = intval($_POST['sp_minimum_deposit']);				#

	
	
	updateSettingValue('minimal_deposit_amount', $sp_minimum_deposit);




	die('1');
	
	
	

	