<?php
	# Обновляем настройки сообщения об ошибках [SETTINGS_UPDATE_DEFAULT_ALL_ERROR]

	
	
	
	$withdraw_error			= $_POST['default_error_withdraw'];					# Текст ошибки вывода
	$trading_error			= $_POST['default_error_tr'];						# Текст ошибки трейдинга
	$chat_error				= $_POST['default_error_chat'];						# Текст ошибки чата
	$p2p_error				= $_POST['default_error_p2p'];						# Текст ошибки p2p
	
	
	 
	
	updateSettingValue('withdraw_error', $withdraw_error);
	updateSettingValue('trading_error', $trading_error);
	updateSettingValue('chat_error', $chat_error);
	updateSettingValue('p2p_error', $p2p_error);


	die('1');
	

	

	