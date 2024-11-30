<?php
	# [SP_DOMAIN_UPDATE_MAIN]

	
	
	
	$d_edit_id 			= $_POST['d_edit_id'];							# 7
	$domain_title		= $_POST['edit_domain_title'];					# 7
	$instagram_link		= $_POST['edit_domain_instagram'];				# 7
	$telegram_link		= $_POST['edit_domain_telegram'];				# 7
	$twitter_link		= $_POST['edit_domain_twitter'];				# 7
	$select_domain_logo = $_POST['select_domain_logo'];					# 7


	
	
	updateSettingValue('domain_title', $domain_title);
	updateSettingValue('instagram_link', $instagram_link);
	updateSettingValue('telegram_link', $telegram_link);
	



	$file = $_FILES['select_domain_logo'];
	# если отправляем собщение с прикрепленным изображением
	if(isset($file)){
		
	
		# Разрешенные расширения файлов.
		$allow = ['png', 'jpg', 'jpeg'];
		 
		# Запрещенные расширения файлов.
		$deny = [
			'phtml', 'php', 'php3', 'php4', 'php5', 'php6', 'php7', 'phps', 'cgi', 'pl', 'asp', 
			'aspx', 'shtml', 'shtm', 'htaccess', 'htpasswd', 'ini', 'log', 'sh', 'js', 'html', 
			'htm', 'css', 'sql', 'spl', 'scgi', 'fcgi', 'exe'
		];
		 
		# Директория куда будут загружаться файлы.
		$path = dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/uploads/logos/';

		
	 
		# Проверим на ошибки загрузки.
		if (!empty($file['error']) || empty($file['tmp_name']))
			die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!2']));
		
		if ($file['tmp_name'] == 'none' || !is_uploaded_file($file['tmp_name']))
			die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!3']));
			
		




		# Оставляем в имени файла только буквы, цифры и некоторые символы.
		$pattern = "[^a-zа-яё0-9,~!@#%^-_\$\?\(\)\{\}\[\]\.]";
		$name = mb_eregi_replace($pattern, '-', $file['name']);
		$name = mb_ereg_replace('[-]+', '-', $name);
		$parts = pathinfo($name);

		if (empty($name) || empty($parts['extension']))
			die(json_encode(['response' => 'error','text' => 'Недопустимый тип файла!4']));

		if (!empty($allow) && !in_array(strtolower($parts['extension']), $allow))
			die(json_encode(['response' => 'error','text' => 'Недопустимый тип файла!5']));
		
		if (!empty($deny) && in_array(strtolower($parts['extension']), $deny))
			die(json_encode(['response' => 'error','text' => 'Недопустимый тип файла!6']));



		$file_name = $myAdmin['id'].'.png';
		# Перемещаем файл в директорию.
		if (!move_uploaded_file($file['tmp_name'], $path . $file_name))
			die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!7']));


			
		updateSettingValue('domain_logo', $file_name);
		
	}


	
	




	die('1');
	

	

	