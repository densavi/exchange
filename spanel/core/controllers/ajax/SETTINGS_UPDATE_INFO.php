<?php
	# Обновляем настройки сообщения об ошибках [SETTINGS_UPDATE_INFO]

	
	
	
	$telegram = $_POST['telegram'];					# ID юзера в телеграмме


	updateSettingValue('telegram_notifications_id', $telegram);







	message_to_telegram('Изменения телеграм канала сохранены!');



	die('1');
	

	

	