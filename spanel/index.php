<?php

	# Установка кодировки для вывода контента.
	//header('Content-Type: text/html; charset=utf-8');
	ob_start();
	
	function __autoload($className){
	  $path = str_replace('_', '/', strtolower($className));
	  return include_once 'core/lib/'.$path.'.php';
	}


	# Настройки для SEO
	#$SEO['title'] 		= 'BullDrop | Кейсы STANDOFF и открытие кейсов Standoff 2';
	#$SEO['description']	= 'Открывай кейсы Standoff 2 от 0 рублей на BullDrop, сайт для доната в стандофф с самыми низкими ценами на голду. Бесплатный кейс Standoff 2 каждый день! Моментальный вывод скинов и голды в игру. Заходи прямо сейчас - стендофф дроп кейсы!';
	#$SEO['keywords'] 	= 'bulldrop, буллдроп, булл дроп, standoff кейсы, стандофф кейс, кейсы стандофф 2 с выводом, кейс ставки, сайт для доната в стандофф';

	#$MAIN['css_top']		= GM::css_ren(['style.min.css', 'swiper-bundle.min.css']);
	#$MAIN['css_bottom']	= GM::css_ren(['bottom/css.css']);

	#$MAIN['js_top']		= GM::js_ren([]);
	#$MAIN['js_bottom']		= GM::js_ren([]);
	


	# Подключает движок и запускает CMS.
	require_once ('core/start.php');

	
	if ($logged) {
		tpl::set([
		'{username}' 		=> $myProfile['username'],
		'{email}' 			=> $myProfile['email'],
		'{photo}' 			=> getUserPhoto($myProfile['id']),
		'{b_usd}' 			=> number_format($balances['usd'], 2, '.', ' '),		# Мой баланс в usd - меняет в зависимости от курса крипты
		]);
		# Контент между [not_logged] и [/not_logged] не будет выводиться в main.tpl
		tpl::set_block("'\\[not_logged\\](.*?)\\[/not_logged\\]'si");
		tpl::set(['[logged]', '[/logged]']);
	}

	if (!$logged) {
		# Контент между [logged] и [/logged] не будет выводиться в main.tpl
		tpl::set_block("'\\[logged\\](.*?)\\[/logged\\]'si");
		tpl::set(['[not_logged]', '[/not_logged]']);
	}


	if(URL::getAct(1) == ''){
		tpl::set(['[main_page]', '[/main_page]']);
		tpl::set_block("'\\[not_main_page\\](.*?)\\[/not_main_page\\]'si");
	}else{
		tpl::set(['[not_main_page]', '[/not_main_page]']);
		tpl::set_block("'\\[main_page\\](.*?)\\[/main_page\\]'si");
	}
	
	
	if($myProfile['role'] == 1){
		tpl::set(['[admin]', '[/admin]']);
	}else{
		tpl::set_block("'\\[admin\\](.*?)\\[/admin\\]'si");
	}



	$un_read = db::super_query("SELECT COUNT(*) as cnt FROM `support` WHERE read_by_owner_at = 0 ");


	tpl::set([
		'{suwp}' 				=> URL::getServerName(),
		#'{title}'				=> $SEO['title'],
		#'{description}'			=> $SEO['description'],
		#'{keywords}'			=> $SEO['keywords'],
		#'{VK_GROUP_ALIAS}' 		=> VK_GROUP_ALIAS,	# Алиас нашей группы в ВК
		#'{year}' 				=> date('Y'),
		#'{time}' 				=> time(),
		#'{live_drop}' 			=> $live_drop,
		#'{settings}' 			=> json_encode($arr),
		#'{TG_GROUP}' 			=> TG_GROUP,
		#'{apples}' 				=> GM::num_word(rand(1, 10), ['яблоко', 'яблока', 'яблок'], true),
		#'{link-referral}'		=> $logged ? '/referral' : '/auth/wg',
		#'{pathname}' 			=> URL::getAct(1) == NULL ? '/' : '/'.URL::getAct(1),
		'{un_read}'				=> $un_read['cnt'] != 0 ? '<span style="position: absolute; margin-left: 24px; margin-top: -35px; background: red; padding: 5px; border-radius: 65px; height: 16px; line-height: 7px; color: white;">'.$un_read['cnt'].'</span>' : '',
		'{css_top}'				=> $MAIN['css_top'],
		#'{css_bottom}'			=> $MAIN['css_bottom'],
		#'{js_top}'				=> $MAIN['js_top'],
		'{js_bottom}'				=> $MAIN['js_bottom'],
		//'{js_bottom_custom}'				=> $MAIN['js_bottom_custom'],
		//'{css_plugin}'			=> $MAIN['css_plugin'],
		//'{js_plugin}'			=> $MAIN['js_plugin'],
		//'{js_custom}'			=> $MAIN['js_custom'],
		'{content}' 			=> tpl::view('content'),
	]);

	tpl::load('main.tpl');
	tpl::compile('main');
	echo tpl::view('main');
	tpl::global_clear();
?>
