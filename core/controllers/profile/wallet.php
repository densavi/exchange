<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/wallet');
	
	$MAIN['css_top'].= GM::css_ren([
		'g_menu_normalize.css',
		'g_menu_style.css',
		'style.css',
		'custom.css',
		'toastr.css',
		'popap-style.css',
		'stake.css',
		'popup-verifi.css',
		'available.css',
		'new_popup_style.css',
	]);
	
	$MAIN['js_bottom'].= GM::js_ren([
		'jquery-3.4.1.min.js',
		'popper.min.js',
		'bootstrap.min.js',
		'amcharts-core.min.js',
		'amcharts.min.js',
		'custom.js',
		'toastr.js',
		'new-select.js',
		'verifi.js',
		'menu_main.js',
		'g_menu_main.js',
	]);

	$file = file_get_contents(URL::getServerName().'/templates/profile/js/wallet.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";






	



	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' ORDER BY id ASC", true);



	foreach ($sql as $row) {
		
		
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$row['tiker']}_USDT' ORDER BY id DESC", false);
		
		if($trading_course['id']){
			$upPrice = $row['price'] / 100 * $trading_course['percent'];
			$row['price'] = $row['price'] + $upPrice;
		}
		
		$equivalent = getBalanceByTiker($row['tiker']) * $row['price'];
		$equivalent = number_format($equivalent, 2, '.', ' ');
		
		$cryptocurrency_list .= '
		<div class="tableUser__item">
			<div class="tableUser__item-coin">
				<div class="tableUser__item-icon">
					<img style="border-radius: 50px;" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row['image'].'" alt="">
				</div>
				'.$row['name'].'
				
				<span>'.$row['tiker'].'</span>	
				
				
			</div>
			<div class="tableUser__item-balance balance_amount_hide">
				<span class="search_my_balance">'.getBalanceByTiker($row['tiker']).'</span> '.$row['tiker'].'
			</div>
			<div class="tableUser__item-balance click_hide_amount" style="display: none;">
				********* '.$row['tiker'].'
			</div>
			<div class="tableUser__item-equivalent balance_usd_hide">
				'.$equivalent.' USD
			</div>
			<div class="tableUser__item-equivalent click_hide_usd" style="display: none;">
				********* USD
			</div>
		</div>';
						
		unset($tiker);
	}
	


	if($myProfile['first_deposit_bonus'] != 0) {
		tpl::set(['[first_deposit_bonus]', '[/first_deposit_bonus]']);
	}else{
		tpl::set_block("'\\[first_deposit_bonus\\](.*?)\\[/first_deposit_bonus\\]'si");
	}




	tpl::load('profile/wallet.tpl');
	$constant = array(
		'{user_id}' 			=> $myProfile['id'],
		'{username}' 			=> $myProfile['username'],
		'{email}' 				=> $myProfile['email'],
		'{photo}' 				=> getUserPhoto($myProfile['id']),
		'{first_deposit_bonus}'	=> $myProfile['first_deposit_bonus'],
		'{cryptocurrency_list}' => $cryptocurrency_list,
		'{b_USD}' 				=> number_format($balances['USD'], 2, '.', ' '),
	);
	tpl::set($constant);
	tpl::compile('content');






?>
