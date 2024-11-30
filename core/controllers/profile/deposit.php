<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/deposit');
	
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
		'main.js',
		'depositTabs.js',
	]);

	$file = file_get_contents(URL::getServerName().'/templates/profile/js/deposit.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

	






	














	
	
	$sql = db::super_query("SELECT * FROM `deposit_wallets` ORDER BY sort ASC", true);
	
	# Минимальный депозит в $
	$minimal_deposit_amount = getSettingValue('minimal_deposit_amount');

	foreach ($sql as $row) {
		
		$row_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$row['tiker']}' ORDER BY id ASC", false);
		
		//if($row_cryptocurrency['tiker'] == 'USDTTRC20') $row_cryptocurrency['tiker'] = 'USDT';
		//if($row_cryptocurrency['tiker'] == 'USDTERC20') $row_cryptocurrency['tiker'] = 'USDT';
		
		
		$bal_tiker = $row_cryptocurrency['tiker'];
		$tiker = $row_cryptocurrency['tiker'];
		if($tiker == 'USDTTRC20') $bal_tiker = 'USDT';
		if($tiker == 'USDTERC20') $bal_tiker = 'USDT';
		if($tiker == 'USDTBEP20') $bal_tiker = 'USDT';
		
		$my_balance = getBalanceByTiker($bal_tiker);
		
		
		if($row_cryptocurrency['price'] != 0)
			$min_dep = floatval($minimal_deposit_amount / $row_cryptocurrency['price']).' '.$bal_tiker;
		else
			$min_dep = ''.$minimal_deposit_amount.' $';
		
		
		$cryptocurrency_list .= '
		<div onclick="setTab(\''.$tiker.'\')" id="btn_'.$tiker.'" class="rushButton deposit__coin-item '.($tiker == 'BTC' ? 'buttonActiveNew' : '').'"> 
		<img class="deposit__coin-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row_cryptocurrency['image'].'" alt="">
											<div class="deposit__coin-title">'.$row_cryptocurrency['name'].'</div>
											<div class="deposit__coin-wallet">'.$my_balance.' '.$bal_tiker.'</div>
										</div>';
					

		$donate_field .= '<div id="tab_'.$tiker.'" class="deposit__content-item '.($tiker == 'BTC' ? 'deposit__content-item-active' : '').'">
			<div class="deposit__content-title">Wallet Deposit Address</div>
			<div class="deposit__crypto-box"> <img class="deposit__crypto-logo" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row_cryptocurrency['image'].'" alt="">
				<div class="deposit__crypto-info">
					<div class="deposit__crypto-box-title">'.$row_cryptocurrency['name'].'</div>
					<div class="deposit__crypto-box-wallet">'.$my_balance.'</div>
				</div>
			</div>
			<div class="deposit__center-content"> 
			<img class="deposit__qr-code" style="opacity: 0.02;" id="view_qr_code_'.$tiker.'" src="https://chart.googleapis.com/chart?chs=250x250&cht=qr&chl=test" alt="">
				<div class="deposit__text-items">
					<div class="deposit__text-item"> Coins will be deposited after 3 network confirmations. </div>
					<div class="deposit__text-item"> Send only '.$bal_tiker.' to this deposit address. Sending coin or token other than '.$bal_tiker.' to this address may result in the loss of your deposit. </div>
					<div class="deposit__text-item"> Minimum deposit amount: '.$min_dep.'</div>
				</div>
			</div>
			<div class="deposit__address__box " id="remove_add_block_'.$tiker.'">
				<label style="width: 100%;">
					<!-- <input id="address_'.$tiker.'" class="deposit__address" type="text" value="" readonly> -->
					<button style="height: 43px; background: rgb(60 103 227); background: linear-gradient(90deg, rgb(104 84 215) 0%, rgb(52 147 213) 100%); border-radius: 5px; font-weight: 600; font-size: 15px; line-height: 20px; text-align: center; color: #FFFFFF; border: none; display: block; margin: auto;" 
					onclick="viewAddBlock(\''.$tiker.'\')">View deposit address</button>
				</label>
			</div>
			<div class="deposit__address__box isset_memo__add_bottom" style="display: none;" id="view_addresses_'.$tiker.'">
				<label style="width: 100%;">
					<input id="address_'.$tiker.'" class="deposit__address" type="text" value="" readonly>
					<button class="deposit__address-btn" onclick="copyThisAddress(\''.$tiker.'\')">COPY</button>
				</label>
				<label style="width: 100%; margin-bottom: -60px; display: none;" id="view_addresses_memo_'.$tiker.'">
					<input id="address_memo_'.$tiker.'" class="deposit__address" type="text" value="" readonly>
					<p style="position: absolute; display: initial; right: 55px; bottom: 4px; color: #65ffff59; font-style: oblique; pointer-events: none;">Memo</p>
				</label>
			</div>
		</div>';

					
		#unset($tiker);
	}
	
	

if ($myProfile['first_deposit_bonus'] != 0) {
		tpl::set(['[first_deposit_bonus]', '[/first_deposit_bonus]']);
	}else{
		tpl::set_block("'\\[first_deposit_bonus\\](.*?)\\[/first_deposit_bonus\\]'si");
	}
	
	


tpl::set([
	'{username}' 			=> $myProfile['username'],
	'{first_deposit_bonus}'	=> $myProfile['first_deposit_bonus'],
	'{cryptocurrency_list}' => $cryptocurrency_list,
	'{donate_field}' 		=> $donate_field,
	]);
tpl::load('profile/deposit.tpl');
tpl::compile('content');






?>
