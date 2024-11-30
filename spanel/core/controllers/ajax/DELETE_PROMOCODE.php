<?php
	# Удаляем промокод [DELETE_PROMOCODE]
	
	$promo_id = intval($_POST['promo_id']);	# 1
	
	
	$promo = db::super_query("SELECT * FROM `promo` WHERE id = '{$promo_id}' ORDER BY id DESC LIMIT 1", false);
	
	if(!$promo['id'])
		die(json_encode(['response' => 'error', 'text' => 'Промокод не найден']));
	
	if($promo['user_id'] != $myProfile['id'])
		die(json_encode(['response' => 'error', 'text' => 'Промо-код не принадлежит вам!']));
	
	if($promo['deleted_at'] != 0)
		die(json_encode(['response' => 'error', 'text' => 'Промо-код уже удален!']));
	
	
	db::query("UPDATE `promo` SET deleted_at = '".time()."' WHERE id = '{$promo['id']}' ");
	
	
	
	
	
	die(json_encode(['response' => 'error', 'text' => 'Промо-код успешно удален!']));
	
	


	