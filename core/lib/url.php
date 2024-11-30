<?php

class URL {



  /**
   * Получает название класса контролера, который будет обрабатывать текущий запрос.
   * @return string название класса нужного контролера.
   */
  public function getController() {

	
	$name = $_SERVER['REQUEST_URI'] != '/' ? $_SERVER['REQUEST_URI'] : 'index';
	

	$name = explode('?', $name)[0];
	//$name = str_replace('/', '', $name);
	
	
	//var_dump($name);
	
	if (file_exists('core/controllers'.$name.'.php')) {
		return $name;
	}
	

	$name = URL::getAct(1);
	$name = $name.'/index';
	
	if (file_exists('core/controllers/'.$name.'.php')) {
		return $name;
	}	
	
	
	//$name = URL::getAct(1) ? URL::getAct(1) : 'index';
	//var_dump($_GET['id']);
	//var_dump($name);
	return false;
	
}

  /**
   * Возвращает ссылку с хостом и протоколом.
   * @return string
   */
  public static function getServerName() {
	  
	  	if (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS']=='on')) {
			$suwp .= 'https://'.$_SERVER['SERVER_NAME'];
		}else 
			$suwp .= 'http://'.$_SERVER['SERVER_NAME'];
		
		return $suwp;
	
  }
  
  
  /**
   * Возвращает ссылку с хостом и протоколом.
   * @return string
   */
  public static function getUrl() {
    return $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
  }
  
   /**
   * Возвращает массив составных частей ссылки.
   * @return type
   */
  public static function getDataUrl($url = false) {
    if (!$url) {
      $url = URL::getUrl();
    }
    return parse_url($url);
  }
  
  
  
    /**
   * Возвращает чистый URI, без строки с get параметрами.
   * @return type
   */
  public static function getClearUri() {
    $data = self::getDataUrl();
    return $data['path'];
  }
  
  
  
    
  /**
   * Возвращает  URI, с get параметров.
   */
  public static function getAct($section = 2) {
    $uri = self::getClearUri();
    $sections = explode('/', rtrim($uri, '/'))[$section];
    return $sections;
  }
  
  
  
  
  
  
  
  
  
  
}