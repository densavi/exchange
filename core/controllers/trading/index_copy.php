<?php

// $id = intval(URL::getAct(2));
// $case = db::super_query("SELECT * FROM `cases` WHERE id = '{$id}' ORDER BY id DESC", false);

// if(!$case['id'])
	// header('location: /');



# эти скрипты будут добавляться автоматически в main.tpl

$MAIN['css_top']	.= GM::css_ren(['g_menu_normalize.css', 'g_menu_style.css', 'style.css', 'custom.css', 'popap-style.css', 'stake.css', 'popup/popup-verifi.css"', 'available.css', 'new_popup_style.css', 'tradingStyle.css']);
//$MAIN['js_bottom']	.= GM::js_ren(['case.js']);
$MAIN['js_bottom']	= GM::js_ren(['trading_core/socket.io.js', 'trading_core/ajax.js', 'trading_core/lightweight-charts.standalone.production.js', 'trading_core/trading.js', ]);
	

# настройки для SEO
// $SEO['title'] = "«{$case['name']}» кейс Standoff 2 – открыть кейс с выводом | BullDrop";
// $SEO['description'] = "Открыть кейс \"{$case['name']}\" Standoff 2 с моментальным выводом на аккаунт. Самые окупаемые скины и оружия в кейсе «Воздух» Стандофф. Открой свой кейс прямо сейчас!";
// $SEO['keywords'] = "кейс стандофф ставки, кейсы standoff 2, открытие кейсов standoff 2, стандофф кейс с выводом на аккаунт";




$pair = $_GET['pair'];	# BTC_USDT

if(!$pair) $pair = 'BTC_USDT';
$pair_from = explode('_', $pair)['0'];
$pair_to = explode('_', $pair)['1'];

// var_dump($pair_from);
// var_dump($pair_to);



	$sql_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` ORDER BY id ASC LIMIT 5", true);


	foreach ($sql_cryptocurrency as $row_cryptocurrency) {
		$cryptocurrency_list .= '<a class="pair__item-BdfTH " href="/trading?pair='.$row_cryptocurrency['tiker'].'_USDT">
                                <div class="pair__item-name-BdfTH">
                                    <div class="pair__item-icon-BdfTH">
                                      <img src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.$row_cryptocurrency['image'].'" alt="">
                                    </div>
                                    '.$row_cryptocurrency['tiker'].'/USDT                                </div>
                                <div class="pair__item-price-BdfTH" id="currency_in_list_'.$row_cryptocurrency['tiker'].'">
                                    26621.90                                </div>
                                <div class="pair__item-change-BdfTH pair__item-minus-BdfTH">
                                    -3.063%
                                </div>
                            </a>
				';
	}

$cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$pair_from}' ORDER BY id ASC LIMIT 1", false);

$chart_data = [];


$cnt = 1;

for ($n = 1; $n <= 20; $n++) {
		
		$time = (time() - date('s')) + $n * 60;
		
		$open = $cryptocurrency['price'];
		
		if($n == 1){
			$arr = [
				"time" => $time,
				"open" => $open,
				"high" => $open + 10,
				"low" => $open - 20,
				"close" => $open + 9,
				"volume" => "205.26820000"
			];
			$chart_data[] = $arr;
		}
		if($n > 1){	
			
			//$arr = $chart_data[];
			
			$arr = [
				"time" => $time,
				"open" => $chart_data[$n - 2]['close'] ,
				"high" => $chart_data[$n - 2]['low'] * rand(98,103) / 100,
				"low" => $chart_data[$n - 2]['low'] * rand(98,103) / 100,
				"close" => $chart_data[$n - 2]['close'] * rand(98,103) / 100,
				"volume" => "205.26820000"
			];
			
			
			$chart_data[] = $arr;
		}
		
		
		
		
		unset($arr);
		$cnt++;
	}


//var_dump($chart_data);


/*
	time" => $time,
	"open" => "1823.00000000",
	"high" => "1823.00000000",
	"low" => "1821.86000000",
	"close" => "1822.73000000",
	"volume" => "205.26820000"
*/








	tpl::set([
		'{pair_from}' => $pair_from,
		'{pair_to}' => $pair_to,
		'{chart_data}' => json_encode($chart_data),
		'{cryptocurrency_list}' => $cryptocurrency_list,
	]);
	
	
tpl::load('trading/index.tpl');
tpl::compile('content');






?>
