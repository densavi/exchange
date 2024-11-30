<link rel="stylesheet" href="/templates/res/css/successful-popup.css">
<style>
.nice-select {
	width: 100% !important;
	background: black !important;
	/*border: 1px solid black !important;*/
	border: 1px solid #808080 !important;
}

.list {
	overflow: auto !important;
	height: 300px;
}

.list .option:hover {
	color: black !important;
}

.nice-select .option.selected.focus {
	color: black !important;
	background-color: white !important;
}
</style>
<link rel="stylesheet" href="/templates/res/css/styleNew.css">
<link rel="stylesheet" href="/templates/res/css/available.css">
<link rel="stylesheet" href="/templates/res/css/p2p.css">
<style type="text/css">
@media (max-width: 1220px) {
	.content-body {
		margin-left: 0px !important;
		margin-right: 0px !important;
	}
}
</style>
<div class="b1">
	<!-- <div class="page-title dashboard"> -->
		<!-- <div class="container"> -->
			<!-- <div class="row"> -->
				<!-- <div class="col-6"> -->
					<!-- <div class="page-title-content"> -->
						<!-- <p>Welcome Back, <span> login</span> </p> -->
					<!-- </div> -->
				<!-- </div> -->
			<!-- </div> -->
		<!-- </div> -->
	<!-- </div> -->
	<div class="content-body">
		<div class="container">
			<div class="row">
				<!-- Profile menu -->
				<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
				<link rel="stylesheet" href="/templates/res/css/menu_layout.css">
				<section class="menuProfile">
					<div class="menuProfile__more-bg"></div>
					<div class="menuProfile__container">
						<div class="menuProfile__box">
							<div class="menuProfile__menu-box"> <a class="menuProfile__menu-item mdi mdi-bullseye " href="wallet">Overview</a> <a class="menuProfile__menu-item mdi mdi-database " href="deposit">Deposit</a> <a class="menuProfile__menu-item mdi mdi-transfer-right active" href="withdraw">Withdraw</a> <span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>
								<div class="menuProfile__more"> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-reply " href="transfer">Transfer</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a> </div>
							</div>
						</div>
					</div>
				</section>
				<!-- Profile menu end -->
				
				
				
				
				<div class="col-xl-12">
					<div class="deposit">
						<div class="deposit__box">
							<div class="deposit__mobile-btn"> Coin
								<svg width="14" height="8" viewBox="0 0 14 8" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M7 8L0.937823 0.5L13.0622 0.499999L7 8Z" fill="#D9D9D9"></path>
								</svg>
							</div>
							<div class="deposit__coin-list-box">
								<div class="deposit__coin-list-wrapper">
									<div class="deposit__close-list">
										<svg width="16px" height="16px" xmlns="http://www.w3.org/2000/svg">
											<path d="M5.584 6.999.876 11.708l1.414 1.414 4.708-4.709 4.709 4.71 1.414-1.415-4.708-4.709 5.291-5.292L12.29.293 6.998 5.585 1.708.293.292 1.707 5.584 7Z" fill="currentColor"></path>
										</svg>
									</div>
									<div id="btnBox" class="deposit__coin-list">
										<div onclick="setTab('usd')" id="btn_usd" class="rushButton deposit__coin-item"> <img class="deposit__coin-img" src="/templates/res/images/cryptocurrency/usd.svg" alt="">
											<div class="deposit__coin-title">Bank card USD</div>
											<div class="deposit__coin-wallet">Crypto to Fiat</div>
										</div> {cryptocurrency_list} </div>
								</div>
							</div>
							<div class="deposit__content-list withdraw__container-content">
								<div id="tab_usd" class="deposit__content-item">
									<div class="withdraw__content-top">
										<div class="deposit__content-title">Withdraw</div>
										<div class="col-xl-10" style="margin: -30px auto;">
											<form action="#" class="py-5">
												<div class="form-group row align-items-center">
													<div class="col-sm-4">
														<label for="inputEmail3" class="col-form-label"><span>Card Number</span>
															<br /> <small>Please double check card number</small> </label>
													</div>
													<div class="col-sm-8">
														<div class="input-group mb-3">
															<input style="border: 1px solid #808080 !important;" id="usd_number" type="number" class="form-control text-left" placeholder="#### **** **** ####"> </div>
													</div>
												</div>
												<div class="form-group row align-items-center">
													<div class="col-sm-4">
														<label for="inputEmail3" class="col-form-label"><span>Card holder</span>
															<br /> <small>Please enter Name and Surname</small> </label>
													</div>
													<div class="col-sm-8">
														<div class="input-group mb-3">
															<input style="border: 1px solid #808080 !important;" id="usd_name" type="text" class="form-control text-left" placeholder="John Doe"> </div>
													</div>
												</div>
												<div class="form-group row align-items-center">
													<div class="col-sm-4">
														<label for="inputEmail3" class="col-form-label"><span>Expiration date</span>
															<br /> <small>Please select Month and Year</small> </label>
													</div>
													<div class="col-sm-4">
														<div class="input-group mb-3">
															<select id="usd_month">
																<option data-class="icon_master" value="00">Month</option>
																<option data-class="icon_visa" value="01">01</option>
																<option data-class="icon_maestro" value="02">02</option>
																<option data-class="icon_maestro" value="03">03</option>
																<option data-class="icon_maestro" value="04">04</option>
																<option data-class="icon_maestro" value="05">05</option>
																<option data-class="icon_maestro" value="06">06</option>
																<option data-class="icon_maestro" value="07">07</option>
																<option data-class="icon_maestro" value="08">08</option>
																<option data-class="icon_maestro" value="09">09</option>
																<option data-class="icon_maestro" value="10">10</option>
																<option data-class="icon_maestro" value="11">11</option>
																<option data-class="icon_maestro" value="12">12</option>
															</select>
														</div>
													</div>
													<div class="col-sm-4">
														<div class="input-group mb-3">
															<select id="usd_year">
																<option data-class="icon_master" value="0000">Year</option>
																<option data-class="icon_visa" value="2022">2022</option>
																<option data-class="icon_maestro" value="2023">2023</option>
																<option data-class="icon_maestro" value="2024">2024</option>
																<option data-class="icon_maestro" value="2025">2025</option>
																<option data-class="icon_maestro" value="2026">2026</option>
																<option data-class="icon_maestro" value="2027">2027</option>
																<option data-class="icon_maestro" value="2028">2028</option>
																<option data-class="icon_maestro" value="2029">2029</option>
																<option data-class="icon_maestro" value="2030">2030</option>
															</select>
														</div>
													</div>
												</div>
												<div class="form-group row align-items-center">
													<div class="col-sm-4">
														<label for="inputEmail3" class="col-form-label"><span>Enter amount</span>
															<br /> <small>Select currency and enter amount</small> </label>
													</div>
													<div class="col-sm-5">
														<div class="input-group mb-3">
															<select id="usd_currency">
																{usd_currency}
															</select>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="input-group mb-3">
															<input id="usd_amount" type="text" class="form-control text-left" placeholder="0.000000"> <span id="usd_amount_dollar" style="position: absolute; margin-top: 47px; color: #1a4e2a; background: #7bf996; padding: 6px; border-radius: 5px; right: 2px; font-weight: 600;">$0.00</span> </div>
													</div>
												</div>
												<br>
												<br>
												<div class="text-right">
													<button style="padding: 7px 15px 7px 15px;" onclick="withdrawUsd(event)" class="btn btn-primary"><i class="mdi mdi-forward">&nbsp;&nbsp;</i>Withdraw to Card</button>
												</div>
											</form>
										</div>
									</div>
								</div> 
								
								
								{withdraw_field} 
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="withdraw_error_modal" class="popup__container" style="display: none;">
	<div class="popup">
		<div class="popup__close" id="close_modal">
			<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 24 24" style=" fill:#FFFFFF;">
				<path d="M 4.9902344 3.9902344 A 1.0001 1.0001 0 0 0 4.2929688 5.7070312 L 10.585938 12 L 4.2929688 18.292969 A 1.0001 1.0001 0 1 0 5.7070312 19.707031 L 12 13.414062 L 18.292969 19.707031 A 1.0001 1.0001 0 1 0 19.707031 18.292969 L 13.414062 12 L 19.707031 5.7070312 A 1.0001 1.0001 0 0 0 18.980469 3.9902344 A 1.0001 1.0001 0 0 0 18.292969 4.2929688 L 12 10.585938 L 5.7070312 4.2929688 A 1.0001 1.0001 0 0 0 4.9902344 3.9902344 z"></path>
			</svg>
		</div>
		<div class="popup__left"> <img src="/templates/res/images/warning.png" alt=""> </div>
		<div class="popup__right">
			<div class="popup__right-title"> Warning </div>
			<div id="withdraw_modal_text" class="popup__right-description"> </div>
			<div id="close_modal_btn" class="popup__right-button"> Close </div>
		</div>
	</div>
</div>
<div id="withdraw_true_modal" class="popap-container" style="display: none;">
	<div class="popap-container-item">
		<div class="popap-container-item-close" id="close_modal"> </div>
		<div class="popap-container-img"> <img src="https://icons-for-free.com/iconfiles/png/512/complete+done+green+success+valid+icon-1320183462969251652.png" alt=""> </div>
		<div class="popap-container-item-text-box">
			<h3 class="popap-container-item-title">
                Withdrawal is processed
            </h3>
			<p id="withdraw_modal_text" class="popap-container-item-text"> Expected time: 15 minutes to 24 hours
				<br> To check the withdrawal status, follow the Transactions page
				<br> Contact online support for additional information. </p>
			<div class="popap-container-item-btn" id="close_modal_true_btn"> <span class="popap-container-item-button">
                    Close
                </span> </div>
		</div>
	</div>
</div>
<div id="withdraw_true_modal_new" class="successful-popup__bg" style="z-index: 99999999999;">
	<div class="successful-popup">
		<div class="successful-popup__top">
			<div class="successful-popup__img">
				<svg width="82" height="82" viewBox="0 0 82 82" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M75.1667 41C75.1667 59.86 59.86 75.1667 41 75.1667C22.14 75.1667 6.83333 59.86 6.83333 41C6.83333 22.14 22.14 6.83333 41 6.83333C59.86 6.83333 75.1667 22.14 75.1667 41Z" stroke="#E7BD1F" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" />
					<path d="M53.6758 51.865L43.0842 45.5442C41.2392 44.4508 39.7358 41.82 39.7358 39.6675V25.6592" stroke="#E7BD1F" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" /> </svg>
			</div>
			<div class="successful-popup__title"> Withdrawal Processing </div>
		</div>
		<div class="successful-popup__bottom">
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">Status</div>
				<div class="successful-popup__column-value pending">Pending</div>
			</div>
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">Date</div>
				<div id="t_withdraw_date" class="successful-popup__column-value">1 Nov 2023, 23:59:11</div>
			</div>
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">Amount</div>
				<div id="t_withdraw_amount" class="successful-popup__column-value">21321 USDT</div>
			</div>
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">To</div>
				<div id="t_withdraw_address" class="successful-popup__column-value to">3NxmaaIUsadncoNOgNFoGcfTxqwX</div>
			</div>
			<!-- <div class="successful-popup__column">
                    <div class="successful-popup__column-key">ID</div>
                    <div class="successful-popup__column-value id">1239sdah8y2138dsa98hsadsac67523</div>
                </div> -->
			<div class="successful-popup__close" onclick="location.replace('transactions')"> Close </div>
		</div>
	</div>
</div>
<div id="withdraw_true_confirmed_modal" class="successful-popup__bg" style="z-index: 99999999999;">
	<div class="successful-popup">
		<div class="successful-popup__top">
			<div class="successful-popup__img">
				<svg width="86" height="82" viewBox="0 0 86 82" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M65.3015 12.1441C66.4663 10.7609 66.2963 8.68327 64.8246 7.63243C58.2159 2.91368 50.3313 0.248715 42.1651 0.0165582C32.9044 -0.246714 23.8275 2.63418 16.4136 8.18977C8.99977 13.7454 3.686 21.6481 1.33829 30.6102C-1.00942 39.5722 -0.252669 49.0652 3.48522 57.5421C7.22312 66.019 13.7218 72.9801 21.9222 77.291C30.1226 81.6019 39.5412 83.0084 48.6433 81.2813C57.7453 79.5542 65.9941 74.7953 72.0455 67.7802C77.3816 61.5942 80.7315 53.9754 81.7046 45.9135C81.9212 44.1182 80.502 42.5914 78.6951 42.5186C76.8882 42.4458 75.3804 43.8556 75.1365 45.6475C74.2405 52.2294 71.456 58.4377 67.0868 63.5028C62.002 69.3974 55.0707 73.3962 47.4225 74.8474C39.7742 76.2987 31.8599 75.1168 24.9693 71.4945C18.0787 67.8722 12.6181 62.0229 9.47719 54.9C6.33632 47.777 5.70044 39.8003 7.67317 32.2696C9.6459 24.739 14.1109 18.0985 20.3406 13.4303C26.5704 8.76208 34.1975 6.34133 41.979 6.56255C48.6655 6.75264 55.1273 8.88378 60.5913 12.6613C62.0788 13.6897 64.1366 13.5272 65.3015 12.1441Z" fill="#4DB742" />
					<path d="M82 12.7977L41.9184 53.0867L23.6994 34.7735" stroke="#4DB742" stroke-width="6.66667" stroke-linecap="round" stroke-linejoin="round" /> </svg>
			</div>
			<div class="successful-popup__title"> Withdrawal Successful </div>
		</div>
		<div class="successful-popup__bottom">
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">Status</div>
				<div class="successful-popup__column-value completed">Completed</div>
			</div>
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">Date</div>
				<div id="t_withdraw_confirmed_date" class="successful-popup__column-value">1 Nov 2023, 23:59:11</div>
			</div>
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">Amount</div>
				<div id="t_withdraw_confirmed_amount" class="successful-popup__column-value">21321 USDT</div>
			</div>
			<div class="successful-popup__column">
				<div class="successful-popup__column-key">To</div>
				<div id="t_withdraw_confirmed_address" class="successful-popup__column-value to">3NxmaaIUsadncoNOgNFoGcfTxqwX</div>
			</div>
			<!-- <div class="successful-popup__column">
                    <div class="successful-popup__column-key">ID</div>
                    <div class="successful-popup__column-value id">1239sdah8y2138dsa98hsadsac67523</div>
                </div> -->
			<div class="successful-popup__close" onclick="location.replace('transactions')"> Close </div>
		</div>
	</div>
</div>
<!-- START POPUP-->
<div id="verify_popap" class="popap-verifi" style="position: fixed !important;">
	<div class="popap-verifi-container-item popap-verifi-list-one popap-verifi-activ">
		<div class="popap-verifi-container-item-img"> <img src="/templates/res/images/icon.png" alt=""> </div>
		<div class="popap-verifi-item-info">
			<div class="popap-verifi-loader">
				<div class="popap-verifi-loader-border"></div>
			</div>
			<div class="popap-verifi-item-info-title"> Required verification </div>
			<div class="popap-verifi-item-info-text"> Our automated anti-fraud system has detected suspicious activity in your account. According to the <a href="/terms">Terms of our service</a> and the <a href="/aml-kyc-policy" style="color: #007bff;">AML/KYC policy</a> - to continue the withdrawal operation, you need to complete the identification of your account. To do this, you need to make a test payment in any currency that is on the list.
				<br> <b></b>Funds will be credited to your account balance and will be available for withdrawal after verification.</b>
			</div>
			<div class="popap-verifi-item-info-btn">
				<button class="popap-verifi-item-info-btn-next popap-verifi-list-one-button"> Start verification </button>
				<button class="popap-verifi-item-info-btn-cancel popap-verifi-btn-cancel-list-one"> Cancel </button>
			</div>
		</div>
	</div>
</div>