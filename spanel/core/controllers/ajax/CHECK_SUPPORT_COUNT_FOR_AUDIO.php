<?php
	# Проверяем новые сообщения в саппорте [CHECK_SUPPORT_COUNT_FOR_AUDIO]

	
	

	$un_read = db::super_query("SELECT COUNT(*) as cnt FROM `support` WHERE read_by_owner_at = 0 ");

	if($un_read['cnt'] > 0)
		die('true');
	else
		die('false');
	

	

