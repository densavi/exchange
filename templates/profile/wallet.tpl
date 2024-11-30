<link rel="stylesheet" href="/templates/res/css/userStyle.css">
<style type="text/css">
    .col-xl-12 {
        padding-left: 0px;
        padding-right: 0px;
        margin-top: 30px;
    }

    a:hover {
        text-decoration: none!important;
    }

    .menuProfile__container{
        padding: 0 !important;
    }
</style>
<section class="userCard">
	<div class="userCard__container">
		<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="/templates/res/css/menu_layout.css">
		<section class="menuProfile">
			<div class="menuProfile__more-bg"></div>
			<div class="menuProfile__container">
				<div class="menuProfile__box">
					<div class="menuProfile__menu-box">
						<a class="menuProfile__menu-item mdi mdi-bullseye active" href="wallet">Overview</a>
						<a class="menuProfile__menu-item mdi mdi-database " href="deposit">Deposit</a>
						<a class="menuProfile__menu-item mdi mdi-transfer-right " href="withdraw">Withdraw</a>
						<span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>

						<div class="menuProfile__more">
							<a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a>

							<a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a>
							<a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a>
							<a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Profile menu end -->
		
		<!-- [first_deposit_bonus] -->
		<!-- <div class="col-xl-12 col-lg-12"> -->
			<!-- <div class="bs-component"> -->
				<!-- <div class="alert alert-dismissible alert-info"> -->
					<!-- <button type="button" class="close" data-dismiss="alert" style="font-size: 15px;">x</button> -->
					<!-- <h4 style="color: #2c727e;">Hey <strong>{username}</strong></h4> As a new user, you have the opportunity to get {first_deposit_bonus}% deposit bonus on your balance. This offer is valid only for the next deposit. </div> -->
			<!-- </div> -->
		<!-- </div> -->
		<!-- [/first_deposit_bonus] -->
		
		<div class="userCard__box">
			<div class="userCard__item-left">
				<div class="userCard__user-data">
					<div class="userCard__img-box">
						<img src="{photo}" alt="">
					</div>

					<div class="userCard__user-data-box">
						<div class="userCard__user-name">{username}</div>
						<div class="userCard__user-email">{email}</div>
						<div class="userCard__user-id">ID: {user_id}</div>
					</div>
				</div>
				<div class="userCard__balance">
					<div class="userCard__balance-title">Total balance</div>
					<div class="userCard__balance-count">{b_USD} <span>USD</span></div>
				</div>
			</div>
			<div class="userCard__item-right">
				<div class="userCard__promo-title">Use bonus promo code</div>
				<form>
					<label>
						<input id="promocode" class="userCard__promo-input" type="text" placeholder="Enter promo-code">
					</label>
					<button id="activate_promo" class="userCard__promo-btn">Activate</button>
				</form>
			</div>
		</div>
	</div>
</section>
	
<section class="userNavigation">
	<div class="userCard__container">
		<div class="userNavigation__box">
			<div class="userNavigation__search-box">
				<div class="userNavigation__search">
					<input class="userNavigation__input" type="text" placeholder="Search" id="search_currency">
				</div>
				<div class="userNavigation__checkbox">
					<label class="userNavigation__features-label" for="userNavigation-remember">Hide zero balances
						<input class="userNavigation__features-checkbox" type="checkbox" id="userNavigation-remember" onclick="hideZeroBalances()">
						<span class="userNavigation__features-checkmark"></span>
					</label>
				</div>
			</div>

			<div class="userNavigation__tabBtn-box">
				<a href="deposit"><div class="userNavigation__tabBtn">Deposit</div></a>
				<a href="withdraw"><div class="userNavigation__tabBtn">Withdraw</div></a>
				<a href="transfer"><div class="userNavigation__tabBtn">Transfer</div></a>
			</div>

		</div>
	</div>
</section>
	
	
<section class="tableUser">
	<div class="userCard__container">
		<div class="tableUser__box">
			<div class="tableUser__wrapper">
				<div class="tableUser__names">
					<div class="tableUser__name tableUser__name-coin">Coin</div>
					<div class="tableUser__name tableUser__name-balance">Balance</div>
					<div class="tableUser__name tableUser__name-equivalent">Equivalent</div>
				</div>

				<div class="tableUser__items">
					{cryptocurrency_list}
				</div>
			</div>
		</div>
	</div>
</section>	

	
<section class="userAttention">
	<!-- <div class="userCard__container"> -->
		<!-- <div class="userAttention__box"> -->
			<!-- <div class="userAttention__text"> -->
				<!-- <span>Attention!</span>Your account is not secure enough, please enable two-factor authentication -->
			<!-- </div> -->
			<!-- <div class="userAttention__btn" id="enable_2fa">Enable</div> -->
		<!-- </div> -->
	<!-- </div> -->
</section>


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	