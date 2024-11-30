<?php


	
	# Проверка что файл вообще существует
	if(!isset($_FILES['file']))													json_error('Не удалось загрузить файл!');
	
	
	# Разрешенные расширения файлов.
	$allow = ['png', 'jpg', 'jpeg'];
	 
	# Запрещенные расширения файлов.
	$deny = [
		'phtml', 'php', 'php3', 'php4', 'php5', 'php6', 'php7', 'phps', 'cgi', 'pl', 'asp', 
		'aspx', 'shtml', 'shtm', 'htaccess', 'htpasswd', 'ini', 'log', 'sh', 'js', 'html', 
		'htm', 'css', 'sql', 'spl', 'scgi', 'fcgi', 'exe'
	];
	 


	$file = $_FILES['file'];
 
	# Проверим на ошибки загрузки.
	if (!empty($file['error']) || empty($file['tmp_name']))						json_error('Не удалось загрузить файл!');
	if ($file['tmp_name'] == 'none' || !is_uploaded_file($file['tmp_name']))	json_error('Не удалось загрузить файл!');

	
	# Оставляем в имени файла только буквы, цифры и некоторые символы.
	$pattern = "[^a-zа-яё0-9,~!@#%^-_\$\?\(\)\{\}\[\]\.]";
	$name = mb_eregi_replace($pattern, '-', $file['name']);
	$name = mb_ereg_replace('[-]+', '-', $name);
	$parts = pathinfo($name);

	if (empty($name) || empty($parts['extension']))								json_error('Недопустимый тип файла!');
	if (!empty($allow) && !in_array(strtolower($parts['extension']), $allow))	json_error('Недопустимый тип файла!');
	if (!empty($deny) && in_array(strtolower($parts['extension']), $deny))		json_error('Недопустимый тип файла!');


	# Перемещаем файл в директорию.
	# Директория куда будут загружаться файлы.
	$path = dirname(dirname(dirname(dirname(__FILE__)))) . '/uploads/';
	$file_name = $myProfile['id'].'.'.rand(10000000,99999999).'.png';
	if (!move_uploaded_file($file['tmp_name'], $path . $file_name))				json_error('Не удалось загрузить файл!');



	$files['file_name'] = $file_name;
	die(json_encode(['response' => 'success', 'file' => $files]));
	



