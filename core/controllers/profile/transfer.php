<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/transfer');

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

	$file = file_get_contents(URL::getServerName().'/templates/profile/js/transfer.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

















	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1'  ORDER BY id ASC", true);

	foreach ($sql as $row) {
		$cryptocurrency_list .= '
		<div class="transfer__currency-item">
			<img class="transferForm__currency-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row['image'].'" alt="" >
			<div class="transferForm__currency-content">
				<div class="transferForm__currency-sub">'.$row['tiker'].'</div>
				<div class="transferForm__currency-title">'.$row['name'].'</div>
			</div>
		</div>';
	}
	




	$sql = db::super_query("SELECT * FROM `transfers` WHERE user_id = '{$myProfile['id']}' ORDER BY id DESC", true);
	if($sql){
		foreach ($sql as $row) {
			$transfers_list .= '<div class="transfer__table-value">
                                    <div class="transfer__table-id">#'.$row['id'].'</div>
                                    <div class="transfer__table-date">
                                        '.$row['created_at'].'
                                    </div>
                                    <div class="transfer__table-email">'.$row['user_email'].'</div>
                                    <div class="transfer__table-amount">'.$row['amount'].' '.$row['coin'].'</div>
                                    <div class="transfer__table-status transfer__table-status-'.strtolower($row['type']).'">'.$row['type'].'</div>
                                </div>';
		}
	}else
		$transfers_list .= '<div class="transfer__table-values"><div class="transfer__table-empty">No transfer history</div></div>';
	

tpl::set([
	'{cryptocurrency_list}' => $cryptocurrency_list,
	'{price_list}' => $price_list,
	'{b_BTC}' => $balances['BTC'],
	'{transfers_list}' => $transfers_list,
]);




tpl::load('profile/transfer.tpl');
tpl::compile('content');






?>
