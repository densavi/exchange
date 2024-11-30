<?php



	$startTime = strtotime("today", time() - 18 * 86400);
	$endTime   = strtotime(date('d.m.Y 23:59'));
	
	
	$dep_graph = [];
	$user_graph = [];
	
	for ($i = $startTime; $i <= $endTime; $i = $i + 86400) {
		$thisDate = date('M-d', $i);
		$dep_graph[] = ['y' => $thisDate, 'deps' => 0];
	}
	
	
	
	
	$total_users = db::super_query("SELECT COUNT(*) as cnt FROM `users` ");

	


	$n = 0;
	for($i = $startTime; $i <= $endTime; $i = $i + 86400) {
	
		$st = $startTime + ($n * 86400);
		//echo date('d.m.Y ', $st);
		
		$et = $startTime + (($n + 1) * 86400);
		//echo date('d.m.Y ', $et);
		
		$users_cnt = db::super_query("SELECT COUNT(*) as cnt FROM `users` WHERE register_time > '{$st}' AND register_time < '{$et}' ");
		
		$thisDate = date( 'M-d', $i);
		$user_graph[] = ['y' => $thisDate, 'deps' => $users_cnt['cnt']];
		
		$n++;
	}

	
	
	$sql = db::super_query("SELECT * FROM `admins` GROUP BY user_id ASC", true);
	foreach ($sql as $rows) {
		
		$row = db::super_query("SELECT * FROM `users` WHERE id = '{$rows['user_id']}' ", false);
	
		$st_top_values .= '
			<tr class="even">
				<td class="sorting_1"> <strong>'.$row['username'].'</strong> </td>
				<td class="">
					<div class="addtobadgestat badge badge-light-success addtobadgestat">1 226,397.32$</div>
				</td>
				<td class="pe-0">53 534 users</td>
				<td class="pe-0">2023-04-23 15:05:52</td>
			</tr>';
	}
	
	
	tpl::set([
		'{today_profit}' => 200,
		'{last_30_days_profit}' => 800,
		'{all_time_profit}' => 5800,
		'{binded_users}' => 90,
		
		'{total_deposits}' => 5000,
		'{get_all_dep_stat}' => json_encode($dep_graph),
		'{total_users}' => $total_users['cnt'],
		'{get_all_users_stat}' => json_encode($user_graph),
		
		'{st_top_values}' => $st_top_values,	# Rating of partners on a monthly basis
	]);
	
	
	tpl::load('statistics.tpl');
	tpl::compile('content');



?>