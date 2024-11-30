<?php
/* 
	Appointment: Класс для работы с базой данных
	File: mysql.php
 
*/

class DB {
	static public $db_id = null;
	static public $query_id = null;
	static public $get_row = null;

	 function connect(){
		self::$db_id = @mysqli_connect(HOST, USER, PASSWORD, BASE_NAME);
		
		if (self::$db_id == false){
			print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error());
			die();
		}
		
		//self::$mysql_version = mysqli_get_server_info(self::$db_id);
		//var_dump(self::$db_id);
		mysqli_query(self::$db_id, "SET NAMES 'utf8'");
		mysqli_query(self::$db_id, "SET CHARACTER SET 'utf8'");
		mysqli_query(self::$db_id, "SET SESSION collation_connection = 'utf8_general_ci'");
		
		return true;
	}
	
	function query($query, $show_error = true){
		$time_before = self::get_real_time();

		if(!self::$db_id) self::connect();
		
		if(!(self::$query_id = mysqli_query(self::$db_id, $query) )) {

			$mysql_error = mysqli_error(self::$db_id);
			$mysql_error_num = mysqli_errno(self::$db_id);

			if($show_error) {
				self::display_error($mysql_error, $mysql_error_num, $query);
			}
		}

		return self::$query_id;
	}
	
	function get_row($query_id = ''){
		if ($query_id == '') $query_id = self::$query_id;

		return mysqli_fetch_assoc($query_id);
	}

	function get_array($query_id = ''){
		if ($query_id == '') $query_id = self::$query_id;

		return mysqli_fetch_array($query_id);
	}
	
	function super_query($query, $multi = false){
	
		if(!$multi) {
			self::query($query);
			$data = self::get_row();
			self::free();	
			return $data;
		} else {
			self::query($query);
			$rows = array();
			while($row = self::get_row()) {
				$rows[] = $row;
			}
			self::free();			
			return $rows;

		}
		
		
	}
	
	function num_rows($query_id = ''){
		if ($query_id == '') $query_id = self::$query_id;

		return mysqli_num_rows($query_id);
	}
	
	function insert_id(){
		return mysqli_insert_id(self::$db_id);
	}

	function get_result_fields($query_id = '') {
		if ($query_id == '') $query_id = self::$query_id;

		while ($field = mysqli_fetch_field($query_id))
		{
            $fields[] = $field;
		}
		
		return $fields;
   	}

	function safesql( $source ){
		if ($this->db_id) return mysqli_real_escape_string ($this->db_id, $source);
		else return $source;
		//else return mysql_escape_string($source);
	}

	function free( $query_id = '' ){

		if ($query_id == '') $query_id = self::$query_id;

		@mysqli_free_result($query_id);
	}

	function close(){
		@mysqli_close($this->db_id);
	}

	function get_real_time(){
		list($seconds, $microSeconds) = explode(' ', microtime());
		return ((float)$seconds + (float)$microSeconds);
	}	

	function display_error($error, $error_num, $query = ''){
		//if($query) {
			// Safify query
		//	$query = preg_replace("/([0-9a-f]){32}/", "********************************", $query); // Hides all hashes
		//	$query_str = "$query";
		//}
		
		echo '<?xml version="1.0" encoding="iso-8859-1"?>
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
		<title>Ошибка</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		</head>
		<body>
			<font size="4">
			Ошибка сервера, попробуйте обновить страницу позже. <br>
			error: '.$error.' <br>
			error_num: '.$error_num.'<br>
			query: '.$query.'<br>
			Ошибка: '.$error.'</font>
		</body>
		</html>';
		
		exit();
	}

}
?>