<?php
	if(!$logged) die('Login need');
	
	createLog('Going to /profile/withdraw');

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
		'withdrawTabs.js',
	]);
	
	$file = file_get_contents(URL::getServerName().'/templates/profile/js/withdraw.js', true);
	$MAIN['js_bottom'].= "<script>{$file}</script>";

	

	$sql = db::super_query("SELECT * FROM `withdraw_wallets` ORDER BY sort ASC", true);
	foreach ($sql as $row) {
		
		$row_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$row['tiker']}'  ORDER BY id ASC", false);

		$bal_tiker = $row_cryptocurrency['tiker'];
		$tiker = $row_cryptocurrency['tiker'];

		if (!in_array($tiker, ['USD', 'BTC', 'USDTTRC20', 'USDTERC20', 'USDTBEP20'])) {
			continue;
		}

		$bal_tiker = $tiker;
		if ($tiker == 'USDTTRC20' || $tiker == 'USDTERC20' || $tiker == 'USDTBEP20') {
			$bal_tiker = 'USDT';
		}
		
		//$my_balance = $balances[$row_cryptocurrency['tiker']];
		$my_balance = getBalanceByTiker($bal_tiker);
	
	
		if($row_cryptocurrency['price'] != 0)
			$fees = floatval(number_format(5 / $row_cryptocurrency['price'], 8, '.', ' ')).' '.$tiker;
		else
			$fees = '5 $';	
		
		$cryptocurrency_list .= '
		<div onclick="setTab(\''.$tiker.'\')" id="btn_'.$tiker.'" class="rushButton deposit__coin-item '.($tiker == 'BTC' ? 'buttonActiveNew' : '').'"> 
				<img class="deposit__coin-img" src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row_cryptocurrency['image'].'" alt="">
				<div class="deposit__coin-title">'.$row_cryptocurrency['name'].'</div>
				<div class="deposit__coin-wallet"><span id="'.$tiker.'_balance">'.$my_balance.'</span> '.$tiker.'</div>
				<input type="hidden" id="'.$tiker.'_course" value="'.$row_cryptocurrency['price'].'">
			</div>';
		
		
		$withdraw_field .= '<div id="tab_'.$tiker.'" class="deposit__content-item '.($tiker == 'BTC' ? 'deposit__content-item-active' : '').'">
				<div class="withdraw__content-top">
					<div class="deposit__content-title">Withdraw</div>
					<div class="withdraw">
						<div class="withdraw__container">
							<div class="withdraw__address">
								<div class="withdraw__address-container">
									<div class="withdraw__address-title"> Destination '.$row_cryptocurrency['name'].' address </div>
									<div class="withdraw__address-description"> Please double check this address </div>
								</div>
								<label>
									<input id="'.$tiker.'_address" class="withdraw__address-input" type="text" placeholder="Please enter recipient’s '.$tiker.' address"> </label>
							</div>
							<div class="withdraw__amount">
								<div class="withdraw__amount-container">
									<div class="withdraw__amount-title"> Amount '.$tiker.' </div>
									<div class="withdraw__amount-description"> Maximum amount withdrawable: <span onclick="enterMaximumAmount(\''.$tiker.'\', '.$my_balance.')" style="border-bottom: 1px solid; cursor: pointer;">'.$my_balance.'</span> '.$tiker.' </div>
								</div>
								<label>
									<input id="'.$tiker.'_amount" class="withdraw__amount-input" type="text" placeholder="Please enter an amount in '.$tiker.'"> </label>
							</div>
							<div class="withdraw__network">
								<div class="withdraw__network-container">
									<div class="withdraw__network-title"> '.$row_cryptocurrency['name'].' Network Fee </div>
									<div class="withdraw__network-description"> Transactions on the '.$row_cryptocurrency['name'].' network are priorirized by fees </div>
								</div>
								<div class="withdraw__network-fee"> '.$fees.' </div>
							</div>
						</div>
						<div class="withdraw__btn-container">
							<a class="withdraw__btn" href="#" onclick="withdraw(\''.$tiker.'\', event)"> <img class="withdraw__btn-arrow" src="/templates/res/images/withdraw-arrow.svg" alt=""> Withdraw now </a>
						</div>
					</div>
				</div>
				<div class="withdraw__content-bottom">
					<div class="withdraw__info">
						<div class="withdraw__info-title"> Important Information </div>
						<div class="withdraw__info-container">
							<div class="withdraw__info-text"> We strongly recommend that you copy & paste the address to help avoid errors. Please note that we are not responsible for coins mistakenly sent to the wrong address. </div>
							<div class="withdraw__info-text"> Transactions normally take about 30 to 60 minutes to send, on occasion it can take a few hours if the crypto network is slow. </div>
						</div>
					</div>
				</div>
			</div>';								

			$usd_currency .= '<option data-class="icon_maestro" value="'.$tiker.'">'.$tiker.' - '.$my_balance.'</option>';



			#unset($tiker);
	}
	
	



tpl::set([
	'{cryptocurrency_list}' => $cryptocurrency_list,
	'{withdraw_field}' => $withdraw_field,
	'{usd_currency}' => $usd_currency,
]);


tpl::load('profile/withdraw.tpl');
tpl::compile('content');






?>
