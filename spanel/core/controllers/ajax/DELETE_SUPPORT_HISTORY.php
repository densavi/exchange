<?php
	# Удаляем историю переписки с юзером [DELETE_SUPPORT_HISTORY]

	
	
	$user_id = intval($_POST['user_id']);	# ID юзера
	
	$user = db::super_query("SELECT * FROM `users` WHERE id = '{$user_id}' ", false);
	

	
	$support_dialogs = db::super_query("SELECT * FROM `support_dialogs` WHERE mamont_id = '{$user['id']}' ", false);

	if($support_dialogs['id'])
		db::query("DELETE FROM `support_dialogs` WHERE mamont_id = '{$support_dialogs['mamont_id']}' ");



	$sql = db::super_query("SELECT * FROM `support` WHERE user_id = '{$user['id']}' ", true);	
	
	if($sql){
		
		foreach($sql as $row){
			
			db::query("DELETE FROM `support` WHERE user_id = '{$row['user_id']}' ");
			
			if($row['image']){
				# Директория
				$path = dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/uploads/supports/';
				unlink($path.$row['image']);
			}
		}
		
	}
	
	
	
	

	die('1');
