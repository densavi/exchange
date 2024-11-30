<?php



	$domains = db::super_query("SELECT * FROM `admins` WHERE user_id = '{$myProfile['id']}' ORDER BY id DESC", true);




	foreach($domains as $row){
		$myAdmin = db::super_query("SELECT * FROM `admins` WHERE user_id = '{$myProfile['id']}' AND id = '{$row['id']}' ORDER BY id DESC LIMIT 1", false);



	$domain_logo = getSettingValue('domain_logo');
		$list .= '
		<tr>
		  <td class="min-w-70px text-dark fs-6">
			<img style="width: 20px; margin-bottom: 0px; margin-right: 6px; background: #1f1d2c;" src="/uploads/logos/'.$domain_logo.'">'.$row['server_name'].' </td>
		  <td><span class="label label-success" style="background: #00d17a; padding: 4px; color: white; border-radius: 5px;">Active</span></td>
		  <td>
			<a data-bs-toggle="modal" data-bs-target="#kt_edit_my_domain" onclick="editMyDomain('.$row['id'].')" class="btn btn-xs btn-primary edit-domain" data-original-title="Edit settings"><i class="fas fa-pencil-alt"></i> Edit</a></td>
		</tr>';
		
	}



	tpl::set([
		'{list}' => $list,
	]);
	
	
	tpl::load('domains.tpl');
	tpl::compile('content');



?>