<?php

	
	
	
	
	if($_GET['user'] == 'online'){
		$time = time() - 60;
		$sql_users = db::super_query("SELECT * FROM `users` WHERE online_time >= '{$time}' ORDER BY id DESC LIMIT 1000", true);
		tpl::set(['[offline]', '[/offline]']);
		tpl::set_block("'\\[online\\](.*?)\\[/online\\]'si");
	}
	
	
	if(!$_GET['user'] AND !$_GET['email']){
		$currentPage = $_GET['page'];
		if (!isset($currentPage)) $currentPage = 1;
		$num = db::super_query("SELECT COUNT(*) as cnt FROM `users` ");
		$totalItems = $num['cnt'];
		$itemsPerPage = 15;
		$urlPattern = '?page=(:num)';
		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$start = ($currentPage * $itemsPerPage) - $itemsPerPage; // определяем, с какой записи нам выводить
		$sql_users = db::super_query("SELECT * FROM `users` ORDER BY id DESC LIMIT $start, $itemsPerPage", true);

		tpl::set(['[online]', '[/online]']);
		tpl::set_block("'\\[offline\\](.*?)\\[/offline\\]'si");
	
	}

	$email = $_GET['email'];
	if($email){
		$sql_users = db::super_query("SELECT * FROM `users` WHERE email = '{$email}' ORDER BY id DESC LIMIT 10", true);
		tpl::set(['[online]', '[/online]']);
		tpl::set_block("'\\[offline\\](.*?)\\[/offline\\]'si");
	}

	foreach ($sql_users as $row_user) {
		$row_promo = db::super_query("SELECT * FROM `promo` WHERE id = '{$row_user['promo_id']}' ORDER BY id DESC LIMIT 1", false);
		$user_list .= '
		<tr>
			<td>
				<div class="d-flex align-items-center">
					<div class="symbol symbol-circle symbol-50px overflow-hidden me-3"> 
						<span class="symbol-label">
							<a href="user-edit?id='.$row_user['id'].'" class="text-dark fw-bold text-hover-primary mb-1 fs-6">	
								<img src="'.getUserPhoto($row_user['id']).'" class="w-100" alt="">
							</a>
						</span>
					</div>
					<div class="d-flex justify-content-start flex-column"> 
					<a href="user-edit?id='.$row_user['id'].'" class="text-dark fw-bold text-hover-primary mb-1 fs-6">'.$row_user['username'].' ['.$row_user['email'].']</a> 
					<span class="text-muted fw-semibold text-muted d-block fs-7">
					'.(isUserOnline($row_user) ? 
							'<span class="badge badge-success badge-circle w-10px h-10px me-1"></span> Online'
						:
							'<span class="badge badge-danger badge-circle w-10px h-10px me-1"></span> Offline').'
					</span>
					</div>
				</div>
			</td>
			<td> <span class="badge badge-light fw-bold me-auto px-4 py-3 badge-lg">'.$row_user['register_site'].' / '.$row_promo['promo'].'</span> </td>
			<td> <span class="text-dark d-block mb-1 fs-6">'.date('Y-m-d H:i:s', $row_user['register_time']).'</span> </td>
			<td class="text-end"> 
				<a href="support?user='.$row_user['id'].'" class="btn btn-bg-light btn-color-muted btn-active-color-primary btn-sm px-4">Support dialog</a> 
				<a href="user-edit?id='.$row_user['id'].'" class="btn btn-secondary btn-sm">View</a> 
			</td>
		</tr>';
	
	}
	
	tpl::set([
		'{user_list}' => $user_list,
		'{paginator}' => $paginator,
	]);
	
	
	tpl::load('users.tpl');
	tpl::compile('content');



?>