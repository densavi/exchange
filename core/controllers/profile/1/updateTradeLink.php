<?php









$id = intval($_POST['id']);        # id из users_items
	$trade_link = $_POST['trade_link'];        #

	if (!$logged)
		die(json_encode(array('response' => 'error', 'text' => 'Авторизуйтесь')));

	$trade_link = GM::sql_xss_text($trade_link);


	db::query("UPDATE `users` SET trade_link = '{$trade_link}' WHERE id = {$myProfile['id']}");

	$result = array(
		'response' => 'success',
		'text' => 'Трейд-ссылка обновлена',
		'user' => array(
			'trade_link' => $trade_link,
		),
	);
	die(json_encode($result));