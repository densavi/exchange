<?php
	
	$SEO['title']	= 'Trading platform';

	
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
		'new_popup_style.css'
	]);

	$MAIN['js_bottom'].= GM::js_ren([
		'jquery-3.4.1.min.js', 
		'popper.min.js', 
		'bootstrap.min.js', 
		'amcharts-core.min.js', 
		'amcharts.min.js', 
		'custom.js', 
		'toastr.js', 
		'g_menu_main.js',
		
		'tabs-rush.js',
		'trading_main.js',
		
		'trading_core/socket.io.js',
		'trading_core/ajax.js',
		'trading_core/lightweight-charts.standalone.production.js',
		'trading_core/trading.js',
	]);
	
	$file = file_get_contents(URL::getServerName().'/templates/trading/js/index.js', true);
	$MAIN['js_bottom'].= $file;

	



	$pair = $_GET['pair'];	# BTC_USDT

	if(!$pair) $pair = 'BTC_USDT';
	$pair_from = explode('_', $pair)['0'];
	$pair_to = explode('_', $pair)['1'];



	$cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$pair_from}' ORDER BY id ASC LIMIT 1", false);

	if(!$cryptocurrency['id'])
		die('error');


	if($cryptocurrency['kline_update_at'] <= (time() - 360)){
		updateKline($pair_from.$pair_to);
		db::query("UPDATE `cryptocurrency` SET kline_update_at = '".time()."' WHERE id = '{$cryptocurrency['id']}' ");
	}






	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' AND tiker != 'USDT' ORDER BY id ASC", true);


	foreach ($sql as $row) {
		
		$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$row['tiker']}_USDT' ORDER BY id DESC", false);
		if($trading_course['id']){
			$upPrice = $row['price'] / 100 * $trading_course['percent'];
			$row['price'] = $row['price'] + $upPrice;
		}
		
		$cryptocurrency_list .= '
				<a class="pair__item-BdfTH " href="/trading?pair='.$row['tiker'].'_USDT">
                                <div class="pair__item-name-BdfTH">
                                    <div class="pair__item-icon-BdfTH">
                                      <img src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row['image'].'" alt="">
                                    </div>
                                    '.$row['tiker'].'/USDT</div>
                                <div class="pair__item-price-BdfTH" id="currency_in_list_'.$row['tiker'].'">
                                    '.floatval($row['price']).'
									</div>
                                <div class="pair__item-change-BdfTH pair__item-'.($row['priceChangePercent'] < 0 ? 'minus' : 'plus' ).'-BdfTH">
                                    '.$row['priceChangePercent'].'%
                                </div>
                            </a>';
							
							// unset($upPrice);
							// unset($price);
							// unset($row['price']);
	}





$chart_data = [];


$cnt = 1;





$trading_course = db::super_query("SELECT * FROM `trading_course` WHERE pair = '{$pair_from}_{$pair_to}' ORDER BY id DESC", false);
$upPrice = $cryptocurrency['price'] / 100 * $trading_course['percent'];


$sql_kline = db::super_query("SELECT * FROM `kline` WHERE pair = '{$pair_from}{$pair_to}' ORDER BY id ASC", true);
foreach($sql_kline as $row){
		
	
		

			$arr = [
				"time" => $row['time'],
				"open" => $row['open'] + $upPrice,
				"high" => $row['high'] + $upPrice,
				"low" => $row['low'] + $upPrice,
				"close" => $row['close'] + $upPrice,
				"volume" => $row['volume'],
			];
			$chart_data[] = $arr;
	
		
		
		
		unset($arr);
		$cnt++;
	}







	$crypto = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$pair_from}' ORDER BY id ASC LIMIT 1", false);


	if($myProfile['trading_ban'] == 0) {
		tpl::set_block("'\\[trading_ban\\](.*?)\\[/trading_ban\\]'si");
		tpl::set(['[not_trading_ban]', '[/not_trading_ban]']);
	}
	
	if($myProfile['trading_ban'] == 1) {
		tpl::set_block("'\\[not_trading_ban\\](.*?)\\[/not_trading_ban\\]'si");
		tpl::set(['[trading_ban]', '[/trading_ban]']);
	}

	


	tpl::set([
		'{pair_from}' => $pair_from,
		'{pair_to}' => $pair_to,
		'{crypto_price}' => floatval($crypto['price'] + $upPrice),
		'{priceChangePercent}' => floatval($crypto['priceChangePercent']),
		'{highPrice}' => floatval($crypto['highPrice']),
		'{lowPrice}' => floatval($crypto['lowPrice']),
		'{quoteVolume}' => number_format($crypto['quoteVolume'], 2, '.',','),
		'{cryptocurrency_list}' => $cryptocurrency_list,
		'{b_USDT}' => number_format($balances['USDT'], 2, '.',''),			# Мой баланс в USDT
		'{b_BTC}' => number_format($balances[$pair_from], 2, '.',''),		# Мой баланс в Крипте
		'{chart_data}' => json_encode($chart_data, JSON_NUMERIC_CHECK),
	]);
	
	tpl::load('trading/index.tpl');
	tpl::compile('content');
