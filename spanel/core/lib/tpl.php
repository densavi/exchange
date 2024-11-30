<?php
/* 
	Appointment: Парсинг шаблонов
	File: templates.php 
*/

class tpl {
	static public $dir = './templates';
	static public $template = null;
	static public $copy_template = null;
	static public $template_parse_time = 0;
	static public $data = array ();
	static public $block_data = array ();
	static public $result = array ();

	public function set($var = null, $name = null) {
		if( is_array( $var ) && count( $var ) ) {
			foreach ( $var as $key => $key_var ) {
				if($key === 0 OR intval($key))
					self::set( null, $key_var );
				else
					self::set( $key_var, $key );
			}
		} else
			self::$data[$name] = $var;
	}
	
	public function set_block($name, $var = null) {
		if( is_array( $var ) && count( $var ) ) {
			foreach ( $var as $key => $key_var ) {
				self::$set_block( $key, $key_var );
			}
		} else
			self::$block_data[$name] = $var;
	}
	
	public function load($tpl_name) {

		$time_before = self::get_real_time();
		
		if( $tpl_name == '' || ! file_exists( self::$dir . DIRECTORY_SEPARATOR . $tpl_name ) ) {
			var_dump( self::$dir . DIRECTORY_SEPARATOR . $tpl_name );
			die( "Невозможно загрузить шаблон: ". $dir. $tpl_name );
			return false;
		}

		self::$template = file_get_contents( self::$dir . DIRECTORY_SEPARATOR . $tpl_name );
		self::$copy_template = self::$template;
		self::$template_parse_time += self::get_real_time() - $time_before;
		
		return true;
	}

	public function _clear() {
		
		self::$data = array ();
		self::$block_data = array ();
		self::$copy_template = self::$template;
	
	}
	
	public function clear() {
		
		self::$data = array ();
		self::$block_data = array ();
		self::$copy_template = null;
		self::$template = null;
	
	}
	
	public function global_clear() {
		
		self::$data = array ();
		self::$block_data = array ();
		self::$result = array ();
		self::$copy_template = null;
		self::$template = null;
	
	}


	
	public function compile($tpl) {
		
		$time_before = self::get_real_time();
		
		if( count( self::$block_data ) ) {
			foreach ( self::$block_data as $key_find => $key_replace ) {
				$find_preg[] = $key_find;
				$replace_preg[] = $key_replace;
			}
			
			self::$copy_template = preg_replace( $find_preg, $replace_preg, self::$copy_template );
		}

	
		foreach ( self::$data as $key_find => $key_replace ) {
			$find[] = $key_find;
			$replace[] = $key_replace;
		}
		
		self::$copy_template = str_replace( $find, $replace, self::$copy_template );

		if( isset( self::$result[$tpl] ) ) self::$result[$tpl] .= self::$copy_template;
		else self::$result[$tpl] = self::$copy_template;
		 
		self::_clear();
		
		self::$template_parse_time += self::get_real_time() - $time_before;
		//var_dump(self::$template_parse_time);
	}
	
	
	public function view($tpl){
		return self::$result[$tpl];
	}
	
	
	
	
	
	public function get_real_time() {
		list ( $seconds, $microSeconds ) = explode( ' ', microtime() );
		return (( float ) $seconds + ( float ) $microSeconds);
	}
}
?>