<?php
	# Обновляем сообщения в поддержке [REFRESH_SUPPORT]
	
	if(!$logged)
		die(json_encode(['response' => 'error', 'text' => 'Refresh the page and try again']));
	
	
	$sql = db::super_query("SELECT * FROM `support` WHERE user_id  = '{$myProfile['id']}' ", true);
	
	
	if($sql){
		foreach ($sql as $row) {
			
			$dir = $row['direction'] == 1 ? 'chat__message-container-you' : '';
			$name = $row['direction'] == 1 ? 'You' : 'Support';
			
			$photo = $row['direction'] == 1 ? getUserPhoto($row['user_id']) : getUserPhoto(0);
			
			if($row['image'])
				$inner = '<img src="/uploads/supports/'.$row['image'].'" style="max-width: 330px;"> 
				<div>'.$row['text'].'</div>';
			else			
				$inner = $row['text'];
			
			$row['created_at'] = date('Y-d-m H:i:s', $row['created_at']);
			
			$text.='<div class="chat__message-container '.$dir.'">
            <div class="chat__message-text">
			 
				'.$inner.'
			
			</div>
            <div class="chat__message-info">
                <span class="chat__info-name">'.$name.'</span>
                <span class="chat__info-time">'.$row['created_at'].'</span>
            </div>
            <a href="#"><img class="chat__message-img" src="'.$photo.'" alt=""></a>
        </div>';
			if($row['read_by_mamont_at'] == 0)
				db::query("UPDATE `support` SET read_by_mamont_at = '".time()."' WHERE id = '{$row['id']}' ");
		}
		die($text);
		
	}else
		die('<div class="no_messages_block"><img style="max-width: 200px; height: auto;" src="/templates/res/images/no_messages.svg" alt="no_messages"> <h4>No Messages</h4> <p>Chat messages will appear here</p><div></div></div>');
	






