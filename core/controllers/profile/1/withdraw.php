<?php

	$withdraw_amount = intval($_POST['withdraw_amount']);



	if(!$logged)									json_error('Авторизуйтесь!');
	if($myProfile['balance'] < $withdraw_amount)	json_error('Недостаточно средств для вывода!');
	if($myProfile['total_donate'] < 150)			json_error('Для активации вывода нужно пополнить свой счет!');
	if($myProfile['total_donate'] < 300)			json_error('Для активации вывода нужно пополнить свой счет в сумме на 300 р');
	if($myProfile['total_donate'] < 500)			json_error('Для активации вывода нужно пополнить свой счет в сумме на 500 р');
	if($myProfile['total_donate'] < 1000)			json_error('Для активации вывода нужно пополнить свой счет на 1000 р');
	