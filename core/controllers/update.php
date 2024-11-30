<?php




	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' AND tiker != 'USDT' ORDER BY id ASC", true);

	
	foreach ($sql as $row) {
	
		updateKline($row['tiker'].'USDT');	
		
		$link = 'https://api.binance.com/api/v1/ticker/24hr?symbol='.$row['tiker'].'USDT';
		$answer = json_decode(file_get_contents($link), true);
	

		
		db::query("UPDATE `cryptocurrency` SET 
			price = '{$answer['bidPrice']}',
			priceChangePercent = '{$answer['priceChangePercent']}',
			highPrice = '{$answer['highPrice']}',
			lowPrice = '{$answer['lowPrice']}',
			quoteVolume = '{$answer['quoteVolume']}'
		WHERE id = '{$row['id']}'  ");
	
			
	}

	

		

		
echo'<pre>';
var_dump($answer);	
echo'</pre>';

/*
{
  "symbol": "BNBBTC", // пара
  "priceChange": "-94.99999800", // изменение цены за сутки 
  "priceChangePercent": "-95.960", // изменение цены за сутки %
  "weightedAvgPrice": "0.29628482", //Средневзвешенная цена
  "prevClosePrice": "0.10002000", // Предыдущая цена закрытия
  "lastPrice": "4.00000200",     // Последняя цена
  "lastQty": "200.00000000",    // Последний объем
  "bidPrice": "4.00000000",    // Цена покупки
  "askPrice": "4.00000200",    // Цена продажи
  "openPrice": "99.00000000",    // Цена открытия
  "highPrice": "100.00000000",    // Самая высокая цена
  "lowPrice": "0.10000000",    // Самая низкая цена
  "volume": "8913.30000000",    // Объем торгов базовой валюты
  "quoteVolume": "15.30000000",    // Объем торгов квотируемой
  "openTime": 1499783499040,    // Время открытия
  "closeTime": 1499869899040,    // Время закрытия
  "fristId": 28385,   // Id первой сделки
  "lastId": 28460,    // Id последней сделки
  "count": 76         // Кол-во сделок
}

*/
die('ok');




	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' ORDER BY id ASC LIMIT 20", true);

	
	foreach ($sql as $row) {
	
							
		updateKline($row['tiker'].'USDT');
		
		$link = 'https://api.binance.com/api/v3/ticker/price?symbol='.$row['tiker'].'USDT';
		
		$answer = json_decode(file_get_contents($link), true);
	
		db::query("UPDATE `cryptocurrency` SET price = '{$answer['price']}' WHERE id = '{$row['id']}'  ");
	
		var_dump($answer['price']);		
	}
	
	
	
die('ok');




















/*
1s
1m
3m
5m
15m
30m
1h
2h
4h
6h
8h
12h
1d
3d
1w
1M

[
  [
    1499040000000,      // Kline open time
    "0.01634790",       // Open price
    "0.80000000",       // High price
    "0.01575800",       // Low price
    "0.01577100",       // Close price
    "148976.11427815",  // Volume
    1499644799999,      // Kline close time
    "2434.19055334",    // Quote asset volume
    308,                // Number of trades
    "1756.87402397",    // Taker buy base asset volume
    "28.46694368",      // Taker buy quote asset volume
    "0"                 // Unused field. Ignore.
  ]
]
*/

	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' ORDER BY id ASC LIMIT 20", true);

	
	foreach ($sql as $row) {
		
		

		updateKline($row['tiker'].'USDT');

	}



die('ok');

















