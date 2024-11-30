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
	];

	
	$MAIN['js_bottom']	.= GM::js_ren($js_bottom);
	
	
	$file = file_get_contents(URL::getServerName().'/templates/js/cross-rates.js', true);
	$MAIN['js_bottom'] .= "<script>{$file}</script>";

	
	



	tpl::set([
		'{html}' => $html,
	]);
	
	
	tpl::load('cross-rates.tpl');
	tpl::compile('content');



?>
