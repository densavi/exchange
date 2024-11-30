<?php
	# Обновляем настройки ставки стейкинга [SAVE_SP_INVEST_PERCENT]

	
	
	
	$staking_percent_7	= $_POST['sp_up_invest_1w'];						# 7
	$staking_percent_14	= $_POST['sp_up_invest_2w'];						# 14
	$staking_percent_30	= $_POST['sp_up_invest_1m'];						# 30
	$staking_percent_90	= $_POST['sp_up_invest_2m'];						# 90
	

	
	updateSettingValue('staking_percent_7', $staking_percent_7);
	updateSettingValue('staking_percent_14', $staking_percent_14);
	updateSettingValue('staking_percent_30', $staking_percent_30);
	updateSettingValue('staking_percent_90', $staking_percent_90);


	die('1');
	

	

	