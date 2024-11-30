<?php
	# Загружаем история стейкинга
	
	if(!$logged) die('Login need');

	/**
	 * Счетчик обратного отсчета
	 *
	 * @param mixed $date
	 * @return
	 */
	function downcounter($date){
	    //$check_time = strtotime($date) - time();
	    $check_time = $date - time();
	    if($check_time <= 0){
	        return false;
	    }

	    $days = floor($check_time/86400);
	    $hours = floor(($check_time%86400)/3600);
	    $minutes = floor(($check_time%3600)/60);
	    $seconds = $check_time%60; 

	    $str = '';
	    if($days > 0) $str .= declension($days,array('день','дня','дней')).' ';
	    if($hours > 0) $str .= declension($hours,array('час','часа','часов')).' ';
	    if($days == 0 AND $minutes > 0) $str .= declension($minutes,array('минута','минуты','минут')).' ';
	    //if($days == 0 AND $seconds > 0) $str .= declension($seconds,array('секунда','секунды','секунд'));

	    return $str;
	}


	/**
	 * Функция склонения слов
	 *
	 * @param mixed $digit
	 * @param mixed $expr
	 * @param bool $onlyword
	 * @return
	 */
	function declension($digit,$expr,$onlyword=false){
	    if(!is_array($expr)) $expr = array_filter(explode(' ', $expr));
	    if(empty($expr[2])) $expr[2]=$expr[1];
	    $i=preg_replace('/[^0-9]+/s','',$digit)%100;
	    if($onlyword) $digit='';
	    if($i>=5 && $i<=20) $res=$digit.' '.$expr[2];
	    else
	    {
	        $i%=10;
	        if($i==1) $res=$digit.' '.$expr[0];
	        elseif($i>=2 && $i<=4) $res=$digit.' '.$expr[1];
	        else $res=$digit.' '.$expr[2];
	    }
	    return trim($res);
	}
	
	
	
	
	$sql = db::super_query("SELECT * FROM `invest` WHERE user_id = '{$myProfile['id']}'  ORDER BY id DESC", true);

	if($sql){
		
		foreach ($sql as $row) {
			
			$cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE tiker = '{$row['coin']}' ORDER BY id ASC", false);
			
			$profit_crypto_all = $row['amount'] / 100 * $row['profit_percent']; # 
			$profit_crypto_current = number_format($profit_crypto_all / (365*24*60*60) * (time() - $row['created_at']), 6, '.', ' '); # 
			
			$real_time_usd = $profit_crypto_current * $cryptocurrency['price'];
			/*
				<tr class="even">
			
				<td class="sorting_1"> <strong>Осталось: '.downcounter($row['end_at']).'</strong> </td>
				<td class="sorting_1"> <strong>Общий профит: '.$profit_crypto_all.'</strong> </td>
				<td class="sorting_1"> <strong>Реал тайм профит: '.$profit_crypto_current.'</strong> </td>
			
				</tr>
			*/
if($row['plan'] == 1)	$days = '7 days';
if($row['plan'] == 2)	$days = '14 days';
if($row['plan'] == 3)	$days = '1 month';
if($row['plan'] == 4)	$days = '3 month';





			$html.= '
		
						
				<div class="investments__table-value" id="plan_block_'.$row['id'].'">
					<div class="investments__table-coin"> <img src="'.URL::getServerName().'/templates/res/images/cryptocurrency/'.strtolower($row['coin']).'.svg" alt=""> <span>'.$row['coin'].'</span> </div>
					<div class="investments__table-plan">'.$days.'</div>
					<div class="investments__table-left">'.downcounter($row['end_at']).'</div>
					<div class="investments__table-profit">
						<div class="investments__table-container"> + '.$profit_crypto_current.' '.$row['coin'].' <span>≈ '.$real_time_usd.'$</span> </div>
					</div>
					<div class="investments__table-invested">
						<div class="investments__table-container"> <span style="color: white;" id="amount_block_'.$row['id'].'">'.floatval($row['amount']).' '.$row['coin'].'</span> <span>≈ '.floatval($row['amount'] * $cryptocurrency['price']).'$</span> </div>
					</div>
					<button onclick="refundInvestPlan('.$row['id'].')" class="investments__table-cansel" type="button">Cancel</button>
				</div>
			
			
			
			';
			
		}
		die($html);
		
	}else{
	die('<div class="investments__table-values-empty">
                    No active investments
              </div>');	
	}
	
	

	
	




?>