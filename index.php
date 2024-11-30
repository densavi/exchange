<?php
	ob_start();
	
	function __autoload($className){
	  $path = str_replace('_', '/', strtolower($className));
	  return include_once 'core/lib/'.$path.'.php';
	}

	# Настройки для SEO
	$SEO['title'] 			= 'Cryptocurrency trading and invest platform';
	$SEO['description']		= 'Best place to buy, trade and sell Bitcoin, Ethereum and over 100 cryptocurrencies safely and securely.';
	$SEO['keywords'] 		= 'BTC, Btc trading platform, Bitcoin, ETH, EOS, TRX, Qtum, NEO, Ripple, BTC Price, LTC, BCH, ETC, Blockchain';

	require_once ('core/start.php');

		$params = ['mycode' => $_GET['mycode']];
			
		//$userInfo = json_decode(file_get_contents('http://birzaapi/kline' . '?' . urldecode(http_build_query($params))), true);
	
		//var_dump($userInfo);
		
		
	if ($logged) {
		
		tpl::set([
			'{username}' => $myProfile['username'],
			'{email}' 	=> $myProfile['email'],
			'{photo}' 	=> getUserPhoto($myProfile['id']),
			'{b_USD}' 	=> number_format($balances['USD'], 2, '.', ' '),
		]);

		tpl::set_block("'\\[not_logged\\](.*?)\\[/not_logged\\]'si");
		tpl::set(['[logged]', '[/logged]']);
		
		$un_read = db::super_query("SELECT COUNT(*) as cnt FROM `support` WHERE user_id = '{$myProfile['id']}' AND direction = '2' AND read_by_mamont_at = 0 ");

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
	
	
	if(isAdmin($myProfile['id'])){
		tpl::set(['[admin]', '[/admin]']);
	}else{
		tpl::set_block("'\\[admin\\](.*?)\\[/admin\\]'si");
	}


	tpl::set([
		#'{suwp}' 			=> URL::getServerName(),
		#'{apples}' 		=> GM::num_word(rand(1, 10), ['яблоко', 'яблока', 'яблок'], true),
		'{title}'			=> $SEO['title'],
		'{description}'		=> $SEO['description'],
		'{keywords}'		=> $SEO['keywords'],
		'{domain_logo}'		=> getSettingValue('domain_logo'),
		'{css_top}'			=> $MAIN['css_top'],
		'{js_bottom}'		=> $MAIN['js_bottom'],
		'{un_read}'			=> $un_read['cnt'] != 0 ? '<span id="count_support_message" class="support_messages">'.$un_read['cnt'].'</span>' : '',
		'{content}' 		=> tpl::view('content'),
	]);

	tpl::load('main.tpl');
	tpl::compile('main');
	echo tpl::view('main');
	tpl::global_clear();