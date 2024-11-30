<?php
	# [GET_ALL_API_KEYS]

	



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
	
	
	die($list);
	




?>