<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/api');

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
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/api.js', true);
	$MAIN['js_bottom'] .= "<script>{$file}</script>";

	
	
	
	
	
	
	
	
	
	
	
	
	
	

	$sql = db::super_query("SELECT * FROM `api_keys` WHERE user_id = '{$myProfile['id']}' AND deleted_at = '' ORDER BY id DESC LIMIT 50", true);


	foreach ($sql as $row) {
		
		
		$permissions .= $row['read_data'] == 1 ? '<div class="col-md-12" style="display: inline-block; font-size: 12px; color: white;">Read data</div>' : '';
		$permissions .= $row['withdraw'] == 1 ? '<div class="col-md-12" style="display: inline-block; font-size: 12px; color: white;">Withdraw balance</div>' : '';
		$permissions .= $row['spot'] == 1 ? '<div class="col-md-12" style="display: inline-block; font-size: 12px; color: white;">Spot trading</div>' : '';
		$permissions .= $row['margin'] == 1 ? '<div class="col-md-12" style="display: inline-block; font-size: 12px; color: white;">Margin trading</div>' : '';
		
		$status = $row['enable'] == 1 ? 'checked=""' : '';
		
		$list .= '
		<tr>
			<td>'.$row['api_key'].'</td>
			<td>
				<div class="col-md-12 col-xl-12">
					'.$permissions.'
				</div>
			</td>
			<td>
				<label class="switch" style="margin-top: -18px;">
					<input onclick="ApiStatusCheckBox('.$row['id'].')" class="toggle-checkbox" type="checkbox" '.$status.'> 
					<span class="slider"></span> 
				</label>
			</td>
			<td> 
				<span style="cursor: pointer;" onclick="ApiDelete('.$row['id'].')">
					<i class="mdi mdi-delete fs-20"></i> Delete
				</span>
			</td>
		</tr>
		
		';
		
		unset($permissions);
	}
	
	

	if($sql) {
		tpl::set(['[is_keys]', '[/is_keys]']);
		tpl::set_block("'\\[no_keys\\](.*?)\\[/no_keys\\]'si");
	}else{
		tpl::set(['[no_keys]', '[/no_keys]']);
		tpl::set_block("'\\[is_keys\\](.*?)\\[/is_keys\\]'si");
	}

tpl::set([
	'{list}' => $list,
]);

tpl::load('profile/api.tpl');
tpl::compile('content');