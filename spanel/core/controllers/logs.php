<?php

		$currentPage = $_GET['page'];
		if (!isset($currentPage)) $currentPage = 1;
		$num = db::super_query("SELECT COUNT(*) as cnt FROM `logs` ");
		$totalItems = $num['cnt'];
		$itemsPerPage = 100;
		$urlPattern = '?page=(:num)';
		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$start = ($currentPage * $itemsPerPage) - $itemsPerPage; // определяем, с какой записи нам выводить
		

	$sql = db::super_query("SELECT * FROM `logs` ORDER BY id DESC LIMIT $start, $itemsPerPage", true);
	foreach ($sql as $row) {
		$user = db::super_query("SELECT * FROM `users` WHERE id = '{$row['user_id']}' ", false);

		if(isUserOnline($user)){
			$online = '<div class="bg-success rounded-circle border border-4 border-body h-20px w-20px" style="float:left"></div>';
		}else{
			$online = '<div class="bg-danger rounded-circle border border-4 border-body h-20px w-20px" style="float:left"></div>';
		}
	
		$spanel_logs .= '
			<tr>
			
		
				<td><a href="user-edit?id='.$user['id'].'" class="text-dark fw-bold text-hover-primary mb-1 fs-6">'.$user['email'].'</a> '.$online.'</td>
				<td>'.$row['log'].'</td>
				<td class="pe-0 min-w-200px">'.date('Y-m-d H:i:s', $row['created_at']).'</td>
				<td class="min-w-70px text-dark fs-6">
					<div class="badge badge-secondary addtobadgestat">'.$row['ip'].'</div>
				</td>
			</tr>';
			
			
	}


	
	tpl::set([
		'{spanel_logs}' => $spanel_logs,
		'{paginator}' => $paginator,
	]);
	
	
	tpl::load('logs.tpl');
	tpl::compile('content');



?>