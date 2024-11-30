<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/invest');
	
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
	]);
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/invest.js', true);
	$MAIN['js_bottom'] .= "<script>{$file}</script>";

	
	
	
	
	
	
	
	
	
	
	
	
	
	

	$sql_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1'  ORDER BY id ASC", true);


	foreach ($sql_cryptocurrency as $row_cryptocurrency) {
		
		$cryptocurrency_list .= '
		<div class="staking__currency-item"> 
			<img class="stakingForm__currency-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row_cryptocurrency['image'].'" alt="">
			<div class="stakingForm__currency-content">
				<div class="stakingForm__currency-sub">'.$row_cryptocurrency['tiker'].'</div>
				<div class="stakingForm__currency-title">'.$row_cryptocurrency['name'].'</div>
			</div>
		</div>';
										
			$price_list .= '<input type="hidden" value="'.$row_cryptocurrency['price'].'" id="'.$row_cryptocurrency['tiker'].'_course">';					
						
		unset($tiker);
	}
	
	




tpl::set([
	'{cryptocurrency_list}' => $cryptocurrency_list,
	'{price_list}' => $price_list,
	'{b_BTC}' => $balances['BTC'],
	
	'{staking_percent_7}' => getSettingValue('staking_percent_7'),
	'{staking_percent_7_all}' => getSettingValue('staking_percent_7') * 7,
	
	'{staking_percent_14}' => getSettingValue('staking_percent_14'),
	'{staking_percent_14_all}' => getSettingValue('staking_percent_14') * 14,
	
	'{staking_percent_30}' => getSettingValue('staking_percent_30'),
	'{staking_percent_30_all}' => getSettingValue('staking_percent_30') * 30,
	
	'{staking_percent_90}' => getSettingValue('staking_percent_90'),
	'{staking_percent_90_all}' => getSettingValue('staking_percent_90') * 90,
	
	
	
]);




tpl::load('profile/invest.tpl');
tpl::compile('content');






?>
