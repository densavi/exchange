<?php
	# Отправляем сообщение в поддержку [SEND_SUPPORT_MESSAGE]

	
	$text = htmlspecialchars(addslashes($_POST['support_text']));	# 

	
	if(!$logged) 
		die(json_encode(['response' => 'error', 'text' => 'Login need']));
	
	if($myProfile['support_ban'] == 1)
		die('33');
	






	# если отправляем собщение с прикрепленным изображением
	if(isset($_FILES['file'])){
		
	
		
		# Разрешенные расширения файлов.
		$allow = ['png', 'jpg', 'jpeg'];
		 
		# Запрещенные расширения файлов.
		$deny = [
			'phtml', 'php', 'php3', 'php4', 'php5', 'php6', 'php7', 'phps', 'cgi', 'pl', 'asp', 
			'aspx', 'shtml', 'shtm', 'htaccess', 'htpasswd', 'ini', 'log', 'sh', 'js', 'html', 
			'htm', 'css', 'sql', 'spl', 'scgi', 'fcgi', 'exe'
		];
		 
		# Директория куда будут загружаться файлы.
		$path = dirname(dirname(dirname(dirname(__FILE__)))) . '/uploads/supports/';

		$file = $_FILES['file'];
	 
		# Проверим на ошибки загрузки.
		if (!empty($file['error']) || empty($file['tmp_name']))
			die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!']));
		
		if ($file['tmp_name'] == 'none' || !is_uploaded_file($file['tmp_name']))
			die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!']));
			
		




		# Оставляем в имени файла только буквы, цифры и некоторые символы.
		$pattern = "[^a-zа-яё0-9,~!@#%^-_\$\?\(\)\{\}\[\]\.]";
		$name = mb_eregi_replace($pattern, '-', $file['name']);
		$name = mb_ereg_replace('[-]+', '-', $name);
		$parts = pathinfo($name);

		if (empty($name) || empty($parts['extension']))
			die(json_encode(['response' => 'error','text' => 'Недопустимый тип файла!']));

		if (!empty($allow) && !in_array(strtolower($parts['extension']), $allow))
			die(json_encode(['response' => 'error','text' => 'Недопустимый тип файла!']));
		
		if (!empty($deny) && in_array(strtolower($parts['extension']), $deny))
			die(json_encode(['response' => 'error','text' => 'Недопустимый тип файла!']));



		$file_name = $myProfile['id'].'.'.rand(1,150000).'.'.time().'.png';
		# Перемещаем файл в директорию.
		if (!move_uploaded_file($file['tmp_name'], $path . $file_name))
			die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!']));


		$image = $file_name;

	}












	

	//$sql = db::super_query("SELECT * FROM `support` WHERE user_id ORDER BY id ASC LIMIT 10", true);

	$dialog = db::super_query("SELECT * FROM `support_dialogs` WHERE mamont_id = '{$myProfile['id']}' ORDER BY id DESC LIMIT 1", false);
	
	if(!$dialog)
		db::query("INSERT INTO `support_dialogs` (mamont_id, updated_at, created_at) VALUES ('{$myProfile['id']}', '".time()."' , '".time()."'  )");
	else
		db::query("UPDATE `support_dialogs` SET updated_at = '".time()."' WHERE id = '{$dialog['id']}' ");
		
	
	db::query("INSERT INTO `support` (user_id, text, created_at, direction, image) VALUES ('{$myProfile['id']}', '{$text}', '".time()."', '1', '{$image}'   )");
	
	
	createLog('Написал в поддержку: '.$text.'');
	message_to_telegram('На сайте '.URL::getServerName().' <a href="'.URL::getServerName().'/spanel/user-edit?id='.$myProfile['id'].'">Мамонт</a> пишет: '.$text.'');
	die('1');



?>