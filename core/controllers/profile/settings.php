<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/settings');

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
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/settings.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

	
	
	
	
	
	$sql = db::super_query("SELECT * FROM `countries` ORDER BY name ASC", true);

	foreach($sql as $row){
	
		$countries .= '<option value="'.$row['name'].'"  '.($myProfile['user_country'] == $row['name'] ? 'selected' : '').' >'.$row['name'].'</option>';
		
	}



	$fullname 			= $_POST['fullname'];			# 
	$date_birth		 	= $_POST['date_birth'];			# 
	$present_address 	= $_POST['present_address'];	# 
	$permanent_address	= $_POST['permanent_address'];	# 
	
	$user_city			= $_POST['user_city'];			# 
	$user_postal_code 	= $_POST['user_postal_code'];	# 
	$user_country 		= $_POST['user_country'];		# 

	tpl::set([
		'{photo}' 				=> getUserPhoto($myProfile['id']),
		'{username}' 			=> $myProfile['username'],
		'{phone}' 				=> $myProfile['phone'],
		'{fullname}' 			=> $myProfile['fullname'],
		'{email}' 				=> $myProfile['email'],
		'{date_birth}'			=> $myProfile['date_birth'],
		'{present_address}' 	=> $myProfile['present_address'],
		'{permanent_address}' 	=> $myProfile['permanent_address'],
		'{user_city}' 			=> $myProfile['user_city'],
		'{user_postal_code}'	=> $myProfile['user_postal_code'],
		'{user_country}' 		=> $myProfile['user_country'],
		'{countries}' 			=> $countries,

	]);

	tpl::load('profile/settings.tpl');
	tpl::compile('content');