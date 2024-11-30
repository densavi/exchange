<?php

	if($myProfile['chat_ban'] == 1)
		die('4'); # You cannot chat, please contact support
		


	die(json_encode(['chat_error' => $myProfile['chat_error']]));
	


?>