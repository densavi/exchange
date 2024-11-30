<?php

class GM {

    /**
   * Получает настройки для доступа к БД из конфигурационного файла config.ini.
   * При наличии в config.ini директив, создает одноименные константы, доступные далее в любом месте кода движка.
   * Если файл config.ini, запускает процесс инсталляции движка из папки install
   * В этом же методе отсекается символ "/" для всех страниц сайта.
   * @return boolean.
   */
	public static function getConfigIni() {

		if (file_exists('config.ini')) {
			$config = parse_ini_file('config.ini', true);
			define('HOST', $config['DB']['HOST']);
			define('USER', $config['DB']['USER']);
			define('PASSWORD', $config['DB']['PASSWORD']);
			define('BASE_NAME', $config['DB']['BASE_NAME']);

			# Создание констант из настроек
			foreach ($config['SETTINGS'] as $key => $value)
			  define($key, $value);
			
			return true;
			
		} else
			echo 'Файл config.ini не найден';

		return false;
	}


	public function set_cookie($name, $value, $expires) {

		if ($expires) 
			$expires = time() + ($expires * 86400);
		else
			$expires = FALSE;

		setcookie($name, $value, $expires, '/');

	}

	public static function onlyForUser(){
		global $logged;
		if(!$logged) header('Location: /');
	}


	/**
	 * Склонение существительных после числительных.
	 *
	 * @param string $value Значение
	 * @param array $words Массив вариантов, например: array('товар', 'товара', 'товаров')
	 * @param bool $show Включает значение $value в результирующею строку
	 * @return string
	 */
	public static function num_word($value, $words, $show = true){
		$num = $value % 100;
		if ($num > 19) {
			$num = $num % 10;
		}

		$out = ($show) ?  $value . ' ' : '';
		switch ($num) {
			case 1:  $out .= $words[0]; break;
			case 2:
			case 3:
			case 4:  $out .= $words[1]; break;
			default: $out .= $words[2]; break;
		}

		return $out;
	}

	public static function js_ren($arr){
		
		GM::getConfigIni();
		foreach ($arr as $row){
			$str .= '<script src="'.URL::getServerName().'/templates/res/js/'.$row.'"></script>'."\n";
		}
		
		return $str;
	}

	public static function css_ren($arr){
		
		foreach ($arr as $row){
			$str .= '<link rel="stylesheet" href="'.URL::getServerName().'/templates/res/css/'.$row.'">'."\n";
		}
		
		return $str;
	}


	public static function getSslPage($url) {
		
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_REFERER, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		$result = curl_exec($ch);
		curl_close($ch);
		return $result;
		
		//return file_get_contents($url);
		
		
	}




public static function checkPurse($type, $purse){
	
if($type == 'phone'){

	if (!preg_match("/^[0-9]{11,13}$/", $purse))
		return false;
	else
		return true;


}else
if($type == 'yandex'){

	if (!preg_match("/^[0-9]{11,20}$/", $purse))
		return false;
	else
		return true;

}else
if($type == 'bank'){

	if (!preg_match("/^[0-9]{11,20}$/", $purse))
		return false;
	else
		return true;

}else
if($type == 'payeer'){

if (!preg_match("/^[pP][0-9]{6,10}$/", $purse))
		return false;
	else
		return true;

}else
if($type == 'webmoney'){

if (!preg_match("/^[rR][0-9]{10,14}$/", $purse))
		return false;
	else
		return true;

}else
if($type == 'number'){

if (!preg_match("/^[0-9]{6,20}$/", $purse))
		return false;
	else
		return true;

}else
if($type == 'QIWI'){

if (!preg_match("/^[+78][0-9]{6,20}$/", $purse))
		return false;
	else
		return true;

}else
	return false;
	
	
	
}


public static function getPhrase( $number, $titles ) {
 $cases = array( 2, 0, 1, 1, 1, 2 );
  
 return $titles[ ( $number % 100 > 4 && $number % 100 < 20 ) ? 2 : $cases[ min( $number % 10, 5 ) ] ];
}	





public static function showDate( $date ){
	

	
 $stf = 0;
 $cur_time = time();
 $diff = $cur_time - $date;
  
 $seconds = array( 'секунда', 'секунды', 'секунд' );
 $minutes = array( 'минута', 'минуты', 'минут' );
 $hours = array( 'час', 'часа', 'часов' );
 $days = array( 'день', 'дня', 'дней' );
 $weeks = array( 'неделя', 'недели', 'недель' );
 $months = array( 'месяц', 'месяца', 'месяцев' );
 $years = array( 'год', 'года', 'лет' );
 $decades = array( 'десятилетие', 'десятилетия', 'десятилетий' );
  
 $phrase = array( $seconds, $minutes, $hours, $days, $weeks, $months, $years, $decades );
 $length = array( 1, 60, 3600, 86400, 604800, 2630880, 31570560, 315705600 );
  
 for ( $i = sizeof( $length ) - 1; ( $i >= 0 ) && ( ( $no = $diff / $length[ $i ] ) <= 1 ); $i -- ) {
 ;
 }
 if ( $i < 0 ) {
 $i = 0;
 }
 $_time = $cur_time - ( $diff % $length[ $i ] );
 $no = floor( $no );
 $value = sprintf( "%d %s ", $no, GM::getPhrase( $no, $phrase[ $i ] ) );
  
 if ( ( $stf == 1 ) && ( $i >= 1 ) && ( ( $cur_time - $_time ) > 0 ) ) {
 $value .= time_ago( $_time );
 }
  
 return $value . ' назад';
}
  




    public static  function sql_xss_text($text){

        $text = addslashes($text);

        return $text;

    }


    public static function view_save_text($text){

        $text = htmlspecialchars($text);

        return $text;

    }


	public static function XSS($text){


        return $text;

    }







}
