<?php
	# Проверяем наличие новых уведомлений для юзера

	echo 'false';
	die();
	
	
	$response = [
		'alert_message_type' => 'bonus',
		'alert_message_id' => 1,
		'alert_message_text' => 'success',
	];
	
	die(json_encode($response));
	
	
	$response = [
		'alert_message_type' => 'alert',
		'alert_message_id' => 1,
		'alert_message_text' => 'success',
	];

	die(json_encode($response));
	
	


?>