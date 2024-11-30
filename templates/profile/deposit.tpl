<link rel="stylesheet" href="/templates/res/css/styleNew.css">
<link rel="stylesheet" href="/templates/res/css/available.css">
<style type="text/css">
@media (max-width: 1220px) {
	.content-body {
		margin-left: 0px !important;
		margin-right: 0px !important;
	}
}

@media (max-width: 525px) {
	.isset_memo__add_bottom {
		bottom: 270px !important;
	}
	.deposit__text-items {
		margin-top: 40px !important;
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
	
	
	<div class="content-body deposit-content-body">
		<div class="container">
			<div class="row">
				<!-- Profile menu -->
				<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
				<link rel="stylesheet" href="/templates/res/css/menu_layout.css">
				<section class="menuProfile">
					<div class="menuProfile__more-bg"></div>
					<div class="menuProfile__container">
						<div class="menuProfile__box">
							<div class="menuProfile__menu-box"> <a class="menuProfile__menu-item mdi mdi-bullseye " href="wallet">Overview</a> <a class="menuProfile__menu-item mdi mdi-database active" href="deposit">Deposit</a> <a class="menuProfile__menu-item mdi mdi-transfer-right " href="withdraw">Withdraw</a> <span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>
								<div class="menuProfile__more"> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a><a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a> </div>
							</div>
						</div>
					</div>
				</section>
				
						[first_deposit_bonus]
		<div class="col-xl-12 col-lg-12">
			<div class="bs-component">
				<div class="alert alert-dismissible alert-info">
					<!-- <button type="button" class="close" data-dismiss="alert" style="font-size: 15px;">x</button> -->
					<h4 style="color: #2c727e;">Hey <strong>{username}</strong></h4> As a new user, you have the opportunity to get {first_deposit_bonus}% deposit bonus on your balance. This offer is valid only for the next deposit. </div>
			</div>
		</div>
		[/first_deposit_bonus]
				
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
									<div id="btnBox" class="deposit__coin-list"> {cryptocurrency_list} </div>
								</div>
							</div>
							<div class="deposit__content-list">
								{donate_field}

								<div class="powered-by">
									<div class="powered-by__item">
										<img src="../templates/res/images/binance-logo.svg" alt="">
										Powered by Binance
									</div>
									<div class="powered-by__item">
										<img src="../templates/res/images/bybit-3.svg" alt="">
										Powered by Bybit
									</div>
									<div class="powered-by__item">
										<img src="../templates/res/images/okx-1.svg" alt="">
										Powered by OKX
									</div>
									<div class="powered-by__item">
										<img src="../templates/res/images/gua.svg" alt="">
										Powered by Garantex
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>