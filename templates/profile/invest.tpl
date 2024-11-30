<link rel="stylesheet" href="/templates/res/css/staking_normalize.css">
<link rel="stylesheet" href="/templates/res/css/staking_global.css">
<link rel="stylesheet" href="/templates/res/css/staking__page__298475.css?v=2">
<link rel="stylesheet" href="/templates/res/css/investments__page_198567.css">
<style type="text/css">
.menuProfile__container {
	max-width: 941px !important;
}

.menuProfile {
	margin-bottom: -28px !important;
}
</style>
<div id="invest_return_modal" class="popap-container" style="display: none; position: fixed;">
	<div class="popap-container-item">
		<a href="invest">
			<div class="popap-container-item-close" id="close_modal"> </div>
		</a>
		<div class="popap-container-item-text-box" style="width: 400px">
			<h3 class="popap-container-item-title">
                    Success
                </h3>
			<p id="withdraw_modal_text" class="popap-container-item-text"> Refund completed successfully.
				<br>Your <strong><span id="invest_modal_span_amount">5 BTC</span></strong> have been successfully transferred to your balance.
				<br>
				<br> <i style="color: silver;">We would like to remind you that if you return the funds before your investment plan, then earnings will not be added.</i> </p>
			<div class="popap-container-item-btn" id="close_modal_btn"> <span class="popap-container-item-button" onclick="location.reload()">
                        Close
                    </span> </div>
		</div>
	</div>
</div>
<!-- Profile menu -->
<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
<link rel="stylesheet" href="/templates/res/css/menu_layout.css">
<section class="menuProfile">
	<div class="menuProfile__more-bg"></div>
	<div class="menuProfile__container">
		<div class="menuProfile__box">
			<div class="menuProfile__menu-box"> <a class="menuProfile__menu-item mdi mdi-bullseye " href="wallet">Overview</a> <a class="menuProfile__menu-item mdi mdi-database " href="deposit">Deposit</a> <a class="menuProfile__menu-item mdi mdi-transfer-right " href="withdraw">Withdraw</a> <span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>
				<div class="menuProfile__more"> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a>  <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash active" href="invest">Invest</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a>  <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a> </div>
			</div>
		</div>
	</div>
</section>
<!-- Profile menu end -->
<section class="staking__global-container">
	<div class="staking">
		<div class="staking__box">
			<div class="staking__info">
				<div class="staking__info-container">
					<div class="staking__title"> Staking </div>
					<div class="staking__description"> Low-risk | Stable earnings </div>
				</div>
				<div class="staking__info-logos">
					<div class="staking__logo staking__logo-bitcoin"> <img src="../assets/img/staking/Bitcoin.svg" alt=""> </div>
					<div class="staking__logo staking__logo-ethereum"> <img src="../assets/img/staking/Ethereum.svg" alt=""> </div>
					<div class="staking__logo staking__logo-tether"> <img src="../assets/img/staking/Tether.svg" alt=""> </div>
					<div class="staking__logo staking__logo-usdc"> <img src="../assets/img/staking/USDC.svg" alt=""> </div>
					<div class="staking__logo staking__logo-solana"> <img src="../assets/img/staking/Solana.svg" alt=""> </div>
					<div class="staking__logo staking__logo-tron"> <img src="../assets/img/staking/TRON.svg" alt=""> </div>
					<div class="staking__logo staking__logo-polygon"> <img src="../assets/img/staking/Polygon.svg" alt=""> </div>
				</div>
			</div>
			<div class="staking__you">
				<div class="staking__send">
					<div class="staking__send-title"> Select coin </div>
					<div class="staking__send-select send-select"> 
					
						<img class="send-img" src="/templates/res/images/cryptocurrency/btc.svg" alt=""> 
						<span class="staking__select-name send-title">BTC</span>
							<svg width="14" height="8" viewBox="0 0 14 8" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M7 8L0.937823 0.5L13.0622 0.499999L7 8Z" fill="#D9D9D9" /> </svg>
					</div>
					<div class="stakingForm__currency-list list-coin-one">
						<div class="stakingForm__coin-items coin-items-one">
							{cryptocurrency_list}
						</div>
					</div>
					<div class="staking__send-title2"> Enter amount </div>
					<div class="staking__send-input">
						<input type="number" placeholder="0" id="amount_input"> </div>
					<div class="staking__send-available"> Available: <span id="my_available_balance" onclick="availableBalance()">{b_BTC}</span> <span id="my_available_crypto" onclick="availableBalance()">BTC</span> </div>
				</div>
			</div>
			<div class="staking__dots">
				<div class="staking__dot"></div>
				<div class="staking__dot"></div>
				<div class="staking__dot"></div>
			</div>
			<div class="staking__select">
				<div class="staking__select-title"> Select a staking plan </div>
				<div class="staking__select-buttons">
					<div class="staking__select-button" onclick="selectPlan(1)">
						<div class="staking__select-button-container"> <span class="staking__select-button-day">7 days</span> <span class="staking__select-button-text">Duration</span> </div> <span class="staking__select-button-line"></span>
						<div class="staking__select-button-container"> <span class="staking__select-button-percent">{staking_percent_7}%</span> <span class="staking__select-button-text">Per day</span> </div>
					</div>
					<div class="staking__select-button" onclick="selectPlan(2)">
						<div class="staking__select-button-container"> <span class="staking__select-button-day">14 days</span> <span class="staking__select-button-text">Duration</span> </div> <span class="staking__select-button-line"></span>
						<div class="staking__select-button-container"> <span class="staking__select-button-percent">{staking_percent_14}%</span> <span class="staking__select-button-text">Per day</span> </div>
					</div>
					<div class="staking__select-button" onclick="selectPlan(3)">
						<div class="staking__select-button-container"> <span class="staking__select-button-day">30 days</span> <span class="staking__select-button-text">Duration</span> </div> <span class="staking__select-button-line"></span>
						<div class="staking__select-button-container"> <span class="staking__select-button-percent">{staking_percent_30}%</span> <span class="staking__select-button-text">Per day</span> </div>
					</div>
					<div class="staking__select-button" onclick="selectPlan(4)">
						<div class="staking__select-button-container"> <span class="staking__select-button-day">90 days</span> <span class="staking__select-button-text">Duration</span> </div> <span class="staking__select-button-line"></span>
						<div class="staking__select-button-container"> <span class="staking__select-button-percent">{staking_percent_90}%</span> <span class="staking__select-button-text">Per day</span> </div>
					</div>
				</div>
			</div>
			<div class="staking__link-container"> <a class="staking__link" href="#" id="stake_btn" style="text-decoration: none; color: white;">Stake</a> </div>
			<div class="staking__sub-description"> Each plan may include additional bonus percentages for active traders on our platform. You will find out the final amount of bonuses received after the end of the staking plan. </div>
		</div>
	</div>
	<div class="staking__global-wrapper">
		<div class="profit">
			<div class="profit__info">
				<div class="profit__title"> Estimated earnings </div>
				<div class="profit__description"> Calculate your profit </div>
			</div>
			<div class="profit__main">
				<div class="profit__value"> Expected profit
					<div class="profit__numbers"> <b>+ <span style="color: white;" id="expected_profit_amount">0.00000</span> <span style="color: white;" id="expected_profit_crypto">BTC</span></b> <span>≈ <span id="expected_profit_usd">0.00</span>$</span>
					</div>
				</div>
				<div class="profit__total"> Total
					<div class="profit__numbers"> <b><span style="color: white;" id="total_profit_amount">0.00000</span> <span style="color: white;" id="total_profit_crypto">BTC</span></b> <span>≈ <span id="total_profit_usd">0.00</span>$</span>
					</div>
				</div>
			</div>
		</div>
		<div class="tips">
			<ul class="tips__list">
				<li class="tips__list-item"> You can invest in any of the presented plans. After the expiration of the staking plan, the profit will be automatically transferred to the balance of your account. </li>
				<li class="tips__list-item"> Refresh the page to check your real-time profits. </li>
				<li class="tips__list-item"> If you cancel your active staking plan prematurely, you will lose all of your accumulated profit. </li>
			</ul>
		</div>
	</div>
</section>
<section class="investments__global-container">
	<div class="investments">
		<div class="investments__box">
			<div class="investments__info">
				<div class="investments__title"> Active investments </div>
				<div class="investments__description"> Your active staking plans </div>
			</div>
			<div class="investments__table">
				<div class="investments__table-names">
					<div class="investments__table-name investments__table-name-coin"> Coin </div>
					<div class="investments__table-name investments__table-name-plan"> Plan </div>
					<div class="investments__table-name investments__table-name-left"> Left </div>
					<div class="investments__table-name investments__table-name-profit"> Realtime profit </div>
					<div class="investments__table-name investments__table-name-invested"> Invested </div>
					<div class="investments__table-name investments__table-name-cancel"> </div>
				</div>
				<div class="investments__table-values" id="staking_table"> </div>
			</div>
		</div>
	</div>
</section>



<script src="/templates/res/js/staking__page__298475.js"></script>
<br>
<br>
<input type="hidden" value="{staking_percent_7_all}" id="plan_percent_1">
<input type="hidden" value="{staking_percent_14_all}" id="plan_percent_2">
<input type="hidden" value="{staking_percent_30_all}" id="plan_percent_3">
<input type="hidden" value="{staking_percent_90_all}" id="plan_percent_4">
{price_list}









