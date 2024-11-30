<?php
	# GET_OPEN_ORDERS

	

	$time = time() - 1;
	$sql_query = db::super_query("SELECT * FROM `orders` WHERE user_id = '{$myProfile['id']}' AND time >= '{$time}' ORDER BY id DESC LIMIT 10", true);
	
	
	if($sql_query){

		#2023-05-14 16:44:22
		$response = '
			<table style="width: 100%; margin-left: 31px; font-size: 11px; margin-top: 9px;">
				<tr>
					<th style="width: 20%;">Date</th>
					<th style="width: 20%;">Pairs</th>
					<th style="width: 20%;">Status</th>
					<th style="width: 20%;">Buy/Sell</th>
					<th style="width: 20%;">Amount</th>
				</tr>';
		foreach($sql_query as $row_query){
			$response .= ' 
				<tr>
					<td style="width: 20%;">'.date('Y-m-d H:i:s', $row_query['time']).'</td>
					<td style="width: 20%;">'.$row_query['pair_from'].' / '.$row_query['pair_to'].'</td>
					<td style="width: 20%;">Open order</td>
					<td style="width: 20%;">'.$row_query['buy_sell'].'</td>
					<td style="width: 20%;">'.round($row_query['amount'], 8).'</td>
				</tr>';
		}
		
		
		$response .= '
			</table>';
			
		die($response);
		
	}else
		die('<div class="orders_noHis" style="margin-top: 50px;">No open orders</div>');
	



	
	
	

	


	


?>