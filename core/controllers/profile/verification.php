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
	$MAIN['css_top']	.= GM::css_ren($css_top);
	
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
		'kyc_main.js',
	];
	$MAIN['js_bottom']	.= GM::js_ren($js_bottom);

	$file = file_get_contents(URL::getServerName().'/templates/profile/js/verification.js', true);
	$MAIN['js_bottom'] .= "<script>{$file}</script>";








	
	$sql = db::super_query("SELECT * FROM `countries` ORDER BY name ASC", true);

	foreach($sql as $row){
	
		//$countries .= '<option value="'.$row['name'].'"  '.($myProfile['user_country'] == $row['name'] ? 'selected' : '').' >'.$row['name'].'</option>';
		$countries .= '<div onclick="selectedCountry(\''.$row['code'].'\', \''.$row['name'].'\')" class="verification__input-list-item"> '.$row['name'].' </div>';
		
	}





	tpl::set([
		'{countries}' => $countries,
	]);
	
	tpl::load('profile/verification.tpl');
	tpl::compile('content');






?>
