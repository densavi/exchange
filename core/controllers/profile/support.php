<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/support');

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
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/support.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

	
	
	
	
	
	
	tpl::load('profile/support.tpl');
	tpl::compile('content');

