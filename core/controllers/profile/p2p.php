<?php

	$css_top = [
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
	];

	$MAIN['css_top'].= GM::css_ren($css_top);
	
	$js_bottom = [
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
		'p2p_materialize.min.js',
		'p2p_main.js',

	];
	
	
	$MAIN['js_bottom']	.= GM::js_ren($js_bottom);
	
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/p2p.js', true);
	$MAIN['js_bottom'] .= "<script>{$file}</script>";

	
	
	
	
	
	
	
	
	
	
	
	
	
	

	$sql_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` ORDER BY id ASC LIMIT 10", true);


	foreach ($sql_cryptocurrency as $row_cryptocurrency) {
		
		
		$tiker = $row_cryptocurrency['tiker'];
		$my_balance = $balances[$tiker];
		if($my_balance > 0 ) $my_balance = number_format($balances[$tiker], 8, '.', ' ');
			else 
		$my_balance = 0.00;
		
		$name = $tiker;


		$cryptocurrency_list .= '

			<div class="formP2p__currency-item">
				<img class="formP2p__currency-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row_cryptocurrency['image'].'" alt="" >
				<div class="formP2p__currency-content">
					<div class="formP2p__currency-sub">'.$tiker.'</div>
					<div class="formP2p__currency-title">'.$name.'</div>
				</div>
			</div>';
										
								
						
						unset($tiker);
	}
	
	

tpl::load('profile/p2p.tpl');
$constant = array(
	#'{site}' => URL::getServerName(),
	'{cryptocurrency_list}' => $cryptocurrency_list,
	'{b_usd}' => number_format($balances['usd'], 2, '.', ' '),		# Мой баланс в usd - меняет в зависимости от курса крипты
	'{b_usdt}' => number_format($balances['usdt'], 2, '.', ' '),

);
tpl::set($constant);
tpl::compile('content');






?>
