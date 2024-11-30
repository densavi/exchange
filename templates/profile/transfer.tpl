
    <style type="text/css">
        .menuProfile__container {
            max-width: 941px !important;
        }

        .menuProfile {
            margin-bottom: -20px !important;
        }
    </style>

    <link rel="stylesheet" href="/templates/res/css/transfernormalize.css">
    <link rel="stylesheet" href="/templates/res/css/transfer_global.css">
    <link rel="stylesheet" href="/templates/res/css/transfer__page-348797.css">
    <section class="transfer">
        <!-- Profile menu -->
        
<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
<link rel="stylesheet" href="/templates/res/css/menu_layout.css">


<section class="menuProfile">
    <div class="menuProfile__more-bg"></div>
    <div class="menuProfile__container">
        <div class="menuProfile__box">
            <div class="menuProfile__menu-box">
                <a class="menuProfile__menu-item mdi mdi-bullseye " href="wallet">Overview</a>
                <a class="menuProfile__menu-item mdi mdi-database " href="deposit">Deposit</a>
                <a class="menuProfile__menu-item mdi mdi-transfer-right " href="withdraw">Withdraw</a>
                <span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>

                <div class="menuProfile__more">
                    <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a>
                    <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-reply active" href="transfer">Transfer</a>
                    <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a>
                    <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a>

                    <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a>
                </div>
            </div>
        </div>
    </div>
</section>
        <!-- Profile menu end -->
        <div class="transfer__container">
            <div class="transfer__box">
                <div class="transfer__info">
                    <div class="transfer__title">
                        Transfer funds
                    </div>
                    <div class="transfer__description">
                        Internal transfers between users
                    </div>
                </div>

                

                <div class="transfer__you">
                    <div class="transfer__send">
						
						<div class="transfer__send-container">
                    <div class="transfer__send-title">
                        Select coin
                    </div>
                    <div class="transfer__send-select transfer-select">
                        <img class="transfer-img" src="/templates/res/images/cryptocurrency/btc.svg" alt="">
                        <span class="transfer__select-name transfer-title">BTC</span>
                        <svg width="14" height="8" viewBox="0 0 14 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M7 8L0.937823 0.5L13.0622 0.499999L7 8Z" fill="#D9D9D9"/>
                        </svg>
                    </div>

                    <div class="transferForm__currency-list-container">
                        <div class="transferForm__currency-list list-coin-one">
                            <div class="transferForm__coin-items coin-items-one">
                                {cryptocurrency_list}
								
                                            
                            </div>

                            </div>
                        </div>
                    </div>
                </div>
						
						
						
                        <div class="transfer__send-title">
                            You transfer
                        </div>
                        <div class="transfer__send-input">
                            <input type="number" placeholder="Enter amount" id="amount_input">
                        </div>
                        <div class="transfer__send-available">
                            Available: <span id="my_available_balance" onclick="availableBalance()">{b_BTC}</span> <span id="my_available_crypto" onclick="availableBalance()">BTC</span>
                        </div>
                    </div>
                </div>

                <!-- <div class="transfer__range"> -->
                    <!-- <input id="transfer_range" class="transfer__range-input" type="range" min="0" max="100" value="0"> -->
                <!-- </div> -->

                <div class="transfer__receivers">
                    <div class="transfer__receivers-title">
                        Receiver's email
                    </div>
                    <div class="transfer__receivers-input">
                        <input id="transfer_email" type="text" placeholder="Please enter user Email">
                    </div>
                    <div class="transfer__receivers-note">
                        Note: user can find user email on the Wallet overview page
                    </div>
                </div>

                <div class="transfer__link-container">
                    <a style="text-decoration: none; color: white;" class="transfer__link" href="#" onclick="transfer(event)">Transfer funds</a>
                </div>
            </div>
        </div>
    </section>

    <section class="transfer__table">
        <div class="transfer__table-box">
            <div class="transfer__table-names">
                <div class="transfer__table-name transfer__table-id">Transfer ID</div>
                <div class="transfer__table-name transfer__table-date">Date</div>
                <div class="transfer__table-name transfer__table-email">User email</div>
                <div class="transfer__table-name transfer__table-amount">Amount</div>
                <div class="transfer__table-name transfer__table-status">Status</div>
            </div>
				{transfers_list}
        </div>
    </section>


	
	<script src="/templates/res/js/transfer__page__3456547.js"></script>
   <br>
   <br>
   
   