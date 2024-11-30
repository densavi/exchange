<?php




	$sql = db::super_query("SELECT * FROM `support_dialogs` ORDER BY updated_at DESC ", true);
	
	
	if($sql){
		foreach ($sql as $row) {
			
			$mamont = db::super_query("SELECT * FROM `users` WHERE id = '{$row['mamont_id']}' ORDER BY id DESC LIMIT 1", false);
			$online = isUserOnline($mamont) ? 'online' : 'offline';
			$un_read = db::super_query("SELECT COUNT(*) as cnt FROM `support` WHERE user_id = '{$mamont['id']}' AND read_by_owner_at = 0 ");

			$left_menu.='
			<div class="rounded bg-hover-light d-flex flex-stack py-4 border-bottom border-active active" 
			onclick="SupportOpenDialog('.$mamont['id'].', `'.$mamont['username'].'`, `'.$mamont['email'].'`, `'.getUserPhoto($mamont['id']).'`, `'.$online.'`)">
				<!--begin::Details-->
				<div class="ms-5 d-flex align-items-center">
					<!--begin::Avatar-->
					<div class="symbol symbol-45px symbol-circle" style="cursor:pointer;"> 
						<img alt="Pic" src="'.getUserPhoto($mamont['id']).'"> 
						
						'.(isUserOnline($mamont) ? '<div class="symbol-badge bg-success start-100 top-100 border-4 h-10px w-10px ms-n2 mt-n2"></div>' : '') .'
						
					
					</div>
					
					
					
					<div class="ms-5"> <span style="cursor: pointer;" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">'.$mamont['username'].'</span>
						<div class="fw-semibold text-muted">'.$mamont['email'].'</div>
					</div>
					<!--end::Details-->
				</div>
				
				'.($un_read['cnt'] != 0 ? '
				<div class="d-flex flex-column align-items-end ms-2"> 
					<span class="badge badge-sm badge-circle badge-danger">'.$un_read['cnt'].'</span> 
				</div>'
				: 
				''
				).'
				
			</div>
			<div class="separator separator-dashed d-none" wfd-invisible="true"></div>
			';
			
		}
	
		
	}
	
	









	tpl::set([
		'{left_menu}' => $left_menu,
	]);
	
	
	tpl::load('support.tpl');
	tpl::compile('content');



?>