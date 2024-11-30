<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/transactions');
	
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

	$file = file_get_contents(URL::getServerName().'/templates/profile/js/transactions.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

	














	$sql = db::super_query("SELECT * FROM `transactions` WHERE user_id = '{$myProfile['id']}' ORDER BY id DESC", true);


	foreach ($sql as $row) {
		
		if($row['status'] == 'Completed')
			$status = '<span class="status_completed">Completed</span>';
		
		if($row['status'] == 'Processing')
			$status = '<span class="status_in processing">Processing</span>';
		
		if($row['status'] == 'Canceled')
			$status = '<span class="status_canceled">Canceled</span>';
		
		$amount = floatval(number_format($row['amount'], 8, '.', ' '));
		$balance = floatval(number_format($row['balance'], 8, '.', ' '));
		
		
		$transactions_list .= '
		
		<tr>
			<td>#'.$row['id'].'</td>
			<td>'.date('Y-m-d H:i:s', $row['time']).'</td>
			<td>'.$row['type'].'</td>
			<td>'.$amount.' '.$row['coin'].'</td>
			<td>'.$row['address'].'</td>
			<td>'.$status.'</td>
			<td>'.$balance.' '.$row['coin'].'</td>
		</tr>';
										
										
							
						
						unset($status);
						unset($amount);
	}
	
	



tpl::set([
		'{transactions_list}' => $transactions_list,
	]);


tpl::load('profile/transactions.tpl');
tpl::compile('content');






?>
