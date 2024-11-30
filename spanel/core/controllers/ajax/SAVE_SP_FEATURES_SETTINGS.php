<?php
	# Обновляем настройки  [SAVE_SP_FEATURES_SETTINGS]

	
	
	
	$fake_w_all_checked		= intval($_POST['fake_w_all_checked']);				#
	$fake_w_new_checked		= intval($_POST['fake_w_new_checked']);				#
	$invest_all_checked		= intval($_POST['invest_all_checked']);				#
	$invest_new_checked		= intval($_POST['invest_new_checked']);				#
	$transfer_all_checked	= intval($_POST['transfer_all_checked']);			#
	$transfer_new_checked	= intval($_POST['transfer_new_checked']);			#

	
	

	
	updateSettingValue('enable_fake_withdraw_for_ALL_users', $fake_w_all_checked);
	updateSettingValue('enable_fake_withdraw_for_NEW_users', $fake_w_new_checked);
	updateSettingValue('enable_invest_for_ALL_users', $invest_all_checked);
	updateSettingValue('enable_invest_for_NEW_users', $invest_new_checked);
	updateSettingValue('enable_transfer_for_ALL_users', $transfer_all_checked);
	updateSettingValue('enable_transfer_for_NEW_users', $transfer_new_checked);



	die('1');
	
	
	

	