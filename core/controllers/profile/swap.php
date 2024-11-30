<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/swap');

	$MAIN['css_top'].= GM::css_ren([
		'g_menu_normalize.css',
		'g_menu_style.css',
		'style.css',
		'custom.css',
		'toastr.css',
		'popap-style.css',
		'stake.css',
		'popup-verifi.css',
		'available.css',
		'new_popup_style.css',
	]);
	
	$MAIN['js_bottom'].= GM::js_ren([
		'jquery-3.4.1.min.js',
		'popper.min.js',
		'bootstrap.min.js',
		'amcharts-core.min.js',
		'amcharts.min.js',
		'custom.js',
		'toastr.js',
		'new-select.js',
		'verifi.js',
		'menu_main.js',
		'g_menu_main.js',
		'swap_main.js',
	]);
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/swap.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

	
	
	
	
	
	
	
	
	
	
	
	
	
	

	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' ORDER BY id ASC", true);


	foreach ($sql as $row) {
	
		$from .= '
				<div class="swapForm__currency-item" onclick="sendCurrencySelect(\''.$row['tiker'].'\')">
					<img class="swapForm__currency-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row['image'].'" alt="" >
					<div class="swapForm__currency-content">
						<div class="swapForm__currency-sub">'.$row['tiker'].'</div>
						<div class="swapForm__currency-title">'.$row['name'].'</div>
					</div>
				</div>';

		$to .= '
				<div class="swapForm__currency-item" onclick="getCurrencySelect(\''.$row['tiker'].'\')">
					<img class="swapForm__currency-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row['image'].'" alt="" >
					<div class="swapForm__currency-content">
						<div class="swapForm__currency-sub">'.$row['tiker'].'</div>
						<div class="swapForm__currency-title">'.$row['name'].'</div>
					</div>
				</div>';								
	
	}
	
	


	tpl::set([
		'{from}' => $from,
		'{to}' => $to,
		'{b_BTC}' => $balances['BTC'],
	]);

	tpl::load('profile/swap.tpl');
	tpl::compile('content');


