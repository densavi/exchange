<?php




	if (!$logged)
		die(json_encode(array('response' => 'error', 'text' => 'Авторизуйтесь')));

	$trade_link = GM::view_save_text($myProfile['trade_link']);

	$html = '<div class="user__trade user__trade-enter-done">
	<div class="trade-link">
		<div class="trade-link__header">
			<div class="trade-link__header-main">
				<div class="trade-link__title">Трейд-ссылка</div>
				<div class="trade-link__where-get"><a href="http://steamcommunity.com/id/me/tradeoffers/privacy#trade_offer_access_url" target="_blank" rel="noreferrer" class="trade-link__where-get-link">Где получить?</a></div>
			</div>
			<div class="trade-link__swindlers-wrapper">
				<button class="trade-link__swindlers-btn"><span class="trade-link__swindlers-span">Остерегайтесь мошенников</span></button>
				<div class="trade-link__swindlers-info">Внимание! Мы никогда не добавляемся в Steam и не просим отдать вещи по двойной цене/перейти по ссылке и т.п. Будьте бдительны!</div>
			</div>
		</div>
		<div class="trade-link__content">
			<div class="trade-link__input-wrapper">
				<input class="trade-link__input" type="text" id="inputTradeLink" value="'.$trade_link.'">
			</div>
			<div class="trade-link__btn-wrapper">
				<button class="trade-link__btn">Сохранить</button>
			</div>
		</div>
	</div>
</div>';

	$result = array(
		'response' => 'success',
		'html' => $html
	);
	die(json_encode($result));
	
	
	