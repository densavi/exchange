<?php
	# [UPDATE_PERSONAL_PHOTO]



	if(!$logged)
		die(json_encode(['response' => 'error', 'text' => 'Login need']));


	
	# если отправляем собщение с прикрепленным изображением
	if(!isset($_FILES['file']))
		die(json_encode(['response' => 'error','text' => 'Не удалось загрузить файл!']));
	
	# Разрешенные расширения файлов.
	$allow = ['png', 'jpg', 'jpeg'];
	 
	# Запрещенные расширения файлов.
	$deny = [
		'phtml', 'php', 'php3', 'php4', 'php5', 'php6', 'php7', 'phps', 'cgi', 'pl', 'asp', 
		'aspx', 'shtml', 'shtm', 'htaccess', 'htpasswd', 'ini', 'log', 'sh', 'js', 'html', 
		'htm', 'css', 'sql', 'spl', 'scgi', 'fcgi', 'exe'
	];
	 
	# Директория куда будут загружаться файлы.
	$path = dirname(dirname(dirname(dirname(__FILE__)))) . '/uploads/users_photos/';

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


	//db::query("INSERT INTO `images` (group_id, name, path, created_at) VALUES ('{$group_id}', '{$file_name}', '/uploads/post_images/', ".time().")");
	//$last_image_id = db::insert_id();

	if($myProfile['photo'])
		unlink($path.$myProfile['photo']);
	
	db::query("UPDATE `users` SET photo = '{$file_name}' WHERE id = '{$myProfile['id']}' ");		
		
		
		$response = [
		'response' => 'success',
		'photo' => URL::getServerName().'/uploads/users_photos/'.$file_name,
	];

	die(json_encode($response));
	
	


?>