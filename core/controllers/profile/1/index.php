<?php

GM::onlyForUser();



# настройки для SEO
$SEO['title'] = 'BullDrop | личный кабинет';
$SEO['description'] = 'личный кабинет';
$SEO['keywords'] .= 'личный кабинет';

# эти скрипты будут добавляться автоматически в main.tpl
#$MAIN['css_top']	.= GM::css_ren([   ]);
$MAIN['js_bottom']	.= GM::js_ren(['profile.js']);


$total_items = db::super_query("SELECT COUNT(*) as cnt FROM `users_items`  WHERE user_id = '{$myProfile['id']}' ");

$sql_users_items = db::super_query("SELECT * FROM `users_items` WHERE user_id = '{$myProfile['id']}' ORDER BY id DESC LIMIT 120", true);

foreach($sql_users_items as $item){
	$data_item =  db::super_query("SELECT * FROM `items` WHERE id = '{$item['item_id']}' ORDER BY id DESC LIMIT 1");;
	$item_list .= '			
<div class="inventory-item" data-v-64392224="" data-id="'.$item['id'].'" data-price="'.$data_item['price_gold'].'">
	<div class="check" data-v-4e36e2df="" data-v-64392224=""></div>
	<img src="'.URL::getServerName().'/templates/res/images/items/'.$data_item['image'].'" alt="'.$data_item['name'].'" class="inventory-item-img" data-v-56d68535="" data-v-64392224="" style="opacity: 1;">
	<div class="inventory-item-name-container '.getRarity($data_item['quality_color']).'" data-v-d5a1d663="" data-v-64392224="">
		<div class="inventory-item-name" data-v-d5a1d663="">'.$data_item['name'].'
		
			<div class="inventory-item-price" data-v-6ca447ec="" data-v-64392224="">'.$data_item['price_gold'].' G</div>
		</div>
		<div class="inventory-item-quality-line" data-v-d5a1d663=""></div>
	</div>
</div>						
						
						
	';


}

if($sql_users_items){
	tpl::set_block("'\\[no_item\\](.*?)\\[/no_item\\]'si");
	tpl::set(array('[is_item]', '[/is_item]') );
}else{
	$sql_cases = db::super_query("SELECT * FROM `cases` ORDER BY rand() ASC LIMIT 4", true);
		foreach ($sql_cases as $case){
			$rec_cases .= '
				<a href="/open/'.$case['id'].'" class="" data-v-372d1966="" data-v-d4b69e9c="" style="opacity: 1;">
					<img src="'.URL::getServerName().'/templates/res/images/cases/'.$case['image'].'" class="case-image displayed" data-v-569ac64b="" data-v-d4b69e9c="" style="">
					<div class="case-name" data-v-e40b8f04="" data-v-d4b69e9c="">'.$case['name'].'</div>
					<div class="case-price" data-v-2afd5730="" data-v-d4b69e9c="">'.$case['price'].' G </div>
					<div class="open-case-expression" data-v-16eee3f8="" data-v-d4b69e9c="">Открыть кейс</div>
				</a>';
		}
	tpl::set_block("'\\[is_item\\](.*?)\\[/is_item\\]'si");
	tpl::set(array('[no_item]', '[/no_item]') );

}



if(!$logged){
	tpl::set_block("'\\[is_item\\](.*?)\\[/is_item\\]'si");
	tpl::set(array('[no_item]', '[/no_item]') );
}




tpl::load('profile/index.tpl');
$constant = array(
	#'{site}' => URL::getServerName(),
	'{user_id}' => $myProfile['id'],
	'{first_name}' => $myProfile['first_name'],
	'{last_name}' => $myProfile['last_name'],
	'{opened}' => $myProfile['opened'],
	'{photo}' => $myProfile['photo'] ? $myProfile['photo']: URL::getServerName().'/templates/res/images/no-ava.jpg',
	'{balance}' => number_format($myProfile['balance'], 2, '.', ' '),
	#'{gold}' => number_format($myProfile['gold'], 2, '.', ' '),
	#'{total_award}' => number_format(($myProfile['total_award'] / 4.54545454545), 2, '.', ' '),
	#'{max_award}' => number_format(($myProfile['max_award'] / 4.54545454545), 2, '.', ' '),
	#'{rating}' => number_format($myProfile['rating'], 2, '.', ' '),
	#'{opened}' => $myProfile['opened'],		# Кол-во открытых кейсов
	'{total_items}' => $total_items['cnt'],
	'{item_list}' => $item_list,
	'{rec_cases}' => $rec_cases,
);
tpl::set($constant);
tpl::compile('content');






?>
