<?php



	//$MAIN['css_top']		= GM::css_ren(['fullcalendar.bundle.css', 'datatables.bundle.css']);
	//$MAIN['js_bottom']		= GM::js_ren(['swiper-bundle.min.js', 'main.js', 'header.js', 'slider-graphics.js', 'company.js', 'benefits.js', 'jquery.min.js', 'nouislider.min.js', 'section-calck.js']);
	
	
	

	//$MAIN['js_bottom'] .= file_get_contents(URL::getServerName().'/spanel/templates/js/index.js', true);

	
	
	


	$sql_cryptocurrency = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = 1 ORDER BY id ASC", true);


	foreach ($sql_cryptocurrency as $row_cryptocurrency) {
		$index_promo_wallet .= '<option value="'.$row_cryptocurrency['tiker'].'">'.$row_cryptocurrency['name'].'</option>';
	}
	
		
	$sql_promo = db::super_query("SELECT * FROM `promo` WHERE user_id = '{$myProfile['id']}' AND deleted_at = 0 ORDER BY id DESC", true);
	foreach ($sql_promo as $row_promo) {
		$promo_list .= '
		<tr class="even">
			<td class="sorting_1"> <strong> '.$row_promo['promo'].' </strong> </td>
			<td class=""> '.$row_promo['activated'].' activations </td>
			<td class="pe-0">'.floatval($row_promo['amount']).' / '.floatval($row_promo['rand_amount']).' / '.$row_promo['coin'].'</td>
			<td data-order="'.date('Y-m-d H:i:s', $row_promo['created_at']).'" class="">'.$row_promo['first_deposit_bonus'].' % </td>
			<td class="text-end pe-0">'.$row_promo['text_after_activation'].'</td>
			<td class="text-end pe-0">'.date('Y-m-d H:i:s', $row_promo['created_at']).'</td>
			<td class="text-end">
				<div class="badge badge-light-success">'.URL::getServerName().'/signup?promo='.$row_promo['promo'].'</div>
			</td>
			<td><span onclick="deletePromo('.$row_promo['id'].')" class="btn btn-outline btn-outline-dashed btn-outline-danger btn-active-light-danger spbuttstatdel">Delete</span></td>
		</tr>';
	}
	
	
	
	
	


	tpl::set([
		'{SERVER_NAME}' => $_SERVER['SERVER_NAME'],
		'{index_promo_wallet}' => $index_promo_wallet,
		'{promo_list}' => $promo_list,
	
	]);
	
	
	tpl::load('index.tpl');
	tpl::compile('content');



?>
