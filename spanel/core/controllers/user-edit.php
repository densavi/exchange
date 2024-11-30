<?php


	$user_id = intval($_GET['id']);
	
	$user = db::super_query("SELECT * FROM `users` WHERE id = '{$user_id}' ORDER BY id DESC", false);

	if(!$user['id']) die('Юзер не найден');


	$startDay = strtotime("today");

	$todayLogs = db::super_query("SELECT COUNT(*) as cnt FROM `logs` WHERE user_id = '{$user['id']}' AND day = '{$startDay}' ");

	$sql_balances = db::super_query("SELECT * FROM `balances` WHERE user_id = '{$user['id']}' ORDER BY id DESC", true);
	// foreach($sql_balances as $row_balance){
		
		// $balances[$row_balance['tiker']] = $row_balance['amount'];
		// $cource = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$row_balance['tiker']}' ORDER BY id DESC LIMIT 1", false);
		// //$sum = 
		// $all_balance = $all_balance + ($row_balance['amount'] * $cource['price']);
	// }

	foreach($sql_balances as $row_balance){
			$balances[$row_balance['tiker']] = $row_balance['amount'];
			$cource = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$row_balance['tiker']}' ORDER BY id DESC LIMIT 1", false);
			
			$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$row_balance['tiker']}_USDT' ORDER BY id DESC", false);
			
			if($trading_course['id']){
				//var_dump($trading_course);
				$upPrice = $cource['price'] / 100 * $trading_course['percent'];
				$cource['price'] = $cource['price'] + $upPrice;
			}
			
			$all_balance = $all_balance + ($row_balance['amount'] * $cource['price']);
		}
		$balances['USD'] = round($all_balance, 2);
	
	//var_dump($user);

	$online_status = isUserOnline($user) ? 
		'<div class="position-absolute translate-middle bottom-0 start-100 mb-6 bg-success rounded-circle border border-4 border-body h-20px w-20px"></div>' 
	: 
		'<div class="position-absolute translate-middle bottom-0 start-100 mb-6 bg-danger rounded-circle border border-4 border-body h-20px w-20px"></div>';

	$location = 'не готово Sevastopol, Sebastopol City, UA <img src="https://cdn.ipwhois.io/flags/ua.svg" style="width: 18px; margin-left: 10px">';



	$sql = db::super_query("SELECT * FROM `logs` WHERE user_id = '{$user['id']}' ORDER BY id DESC LIMIT 200", true);
	foreach ($sql as $row) {
		$logs .= '
			<tr>
				<td class="text-left">
					<span class="badge badge-secondary addtobadgestat" style="word-wrap: break-word; word-break: break-all; white-space: normal; text-align: left;">'.$row['log'].'</span>
				</td>
				<td class="text-dark  fs-6">'.$row['ip'].'</td>
				<td class="text-dark fs-6 text-left">'.date('Y-m-d H:i:s', $row['created_at']).'</td>
			 </tr>';
	}
	
	
	
	
	
	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' ORDER BY id ASC", true);



	foreach ($sql as $row) {
		
		
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$row['tiker']}_USDT' ORDER BY id DESC", false);
		
		if($trading_course['id']){
			$upPrice = $row['price'] / 100 * $trading_course['percent'];
			$row['price'] = $row['price'] + $upPrice;
		}
		
		$row['image'] = strtolower($row['image']);
		
		$balance_list .= '
		<div class="crypto_currency mb-3" style="font-size: 20px;"><img src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row['image'].'" style="width: 30px;     margin-top: -4px;"> '.$balances[$row['tiker']].' '.$row['tiker'].'</div>';
						

	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	tpl::set([
		'{today_logs}' => $todayLogs['cnt'],
		'{user_id}' => $user['id'],
		'{username}' => $user['username'],
		'{email}' => $user['email'],
		'{photo}' => getUserPhoto($user['id']),
		'{password}' => $user['password'],
		'{phone}' => $user['phone'],
		'{register_site}' => $user['register_site'],
		'{reg_ip}' => $user['reg_ip'],
		'{register_date}' => date('Y-m-d H:i:s', $user['register_time']),
		'{online_status}' => $online_status,
		'{location}' => $location,
		'{b_USD}' => number_format($balances['USD'], 2, '.', ' '),
		
		'{global_checked}' => $user['global_ban'] == 1 ? 'checked' : '',
		'{chat_checked}' => $user['chat_ban'] == 1 ? 'checked' : '',
		'{transfer_checked}' => $user['transfer_ban'] == 1 ? 'checked' : '',
		'{trading_checked}' => $user['trading_ban'] == 1 ? 'checked' : '',
		
		'{support_checked}' => $user['support_ban'] == 1 ? 'checked' : '',
		'{invest_checked}' => $user['invest_ban'] == 1 ? 'checked' : '',
		'{status_2fa_checked}' => $user['status_2fa'] == 1 ? 'checked' : '',
		'{chat_enter_checked}' => $user['chat_enter'] == 1 ? 'checked' : '',
		
		'{first_deposit_bonus}' => $user['first_deposit_bonus'],
		'{bonus_checked}' => $user['first_deposit_bonus'] != 0 ? 'checked' : '',
		
		'{w_true_checked}' => $user['withdraw_pending'] != 0 ? 'checked' : '',
		'{w_true_confirmed_checked}' => $user['withdraw_confirmed'] != 0 ? 'checked' : '',
		
		'{withdraw_error}' => $user['withdraw_error'],
		'{trading_error}' => $user['trading_error'],
		'{chat_error}' => $user['chat_error'],
		'{p2p_error}' => $user['p2p_error'],
		
		
		'{logs}' => $logs,
		'{balance_list}' => $balance_list,
		
		
		
		
	]);
	
	
	tpl::load('user-edit.tpl');
	tpl::compile('content');



?>