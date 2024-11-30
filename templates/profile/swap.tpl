
<link rel="stylesheet" href="/templates/res/css/swap.css">

    <section class="swap">
        <div class="swap__block">
            <div class="swap__top">
                <div class="swap__title">Fast swap</div>
                <div class="swap__benefits" style="z-index: 3;">
                    <div class="swap__benefits-item">
                        <div class="swap__benefits-icon">
                            <img src="/templates/res/images/percent.svg" alt="">
                        </div>
                        <div class="swap__benefits-name">
                            Zero fees
                        </div>
                    </div>
                    <div class="swap__benefits-item">
                        <div class="swap__benefits-icon">
                            <img src="/templates/res/images/alert.svg" alt="">
                        </div>
                        <div class="swap__benefits-name">
                            Guaranteed  price
                        </div>
                    </div>
                    <div class="swap__benefits-item">
                        <div class="swap__benefits-icon">
                            <img src="/templates/res/images/money.svg" alt="">
                        </div>
                        <div class="swap__benefits-name">
                            Any pairs
                        </div>
                    </div>
                </div>
            </div>

            <div class="swap__main" id="one_block">
                <div class="swap__send">
                    <div class="swap__send-title">
                        You send
                    </div>
                    <div class="swap__send-input">
                        <input type="number" placeholder="Enter amount" id="ex_amount">
                        <div class="swap__send-select send-select">
                            <img class="send-img" src="/templates/res/images/cryptocurrency/btc.svg" alt="">
                            <span class="swap__select-name send-title">BTC</span>
                            <svg width="14" height="8" viewBox="0 0 14 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7 8L0.937823 0.5L13.0622 0.499999L7 8Z" fill="#D9D9D9"/>
                            </svg>
                        </div>
                    </div>
                    <div class="swapForm__currency-list list-coin-one">
                        <div class="swapForm__coin-items coin-items-one">
							{from}
                        </div>
                    </div>

                    <div class="swap__send-available">
                        Available: <span id="my_available_balance" onclick="availableBalance()">{b_BTC}</span> <span id="my_available_crypto" onclick="availableBalance()">BTC</span>
                    </div>
                </div>
                <div class="swap__arrow">
                    <img src="/templates/res/images/arrow.svg" alt="">
                </div>
                <div class="swap__get">
                    <div class="swap__get-title">
                        You get
                    </div>
                    <div class="swap__get-input">
                        <input type="number" placeholder="Enter amount" readonly id="ex_amount_from">
                        <div class="swap__send-select get-select">
                            <img class="get-img" src="/templates/res/images/cryptocurrency/usdt.svg" alt="">
                            <span class="swap__select-name get-title">USDT</span>
                            <svg width="14" height="8" viewBox="0 0 14 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7 8L0.937823 0.5L13.0622 0.499999L7 8Z" fill="#D9D9D9"/>
                            </svg>
                        </div>
                    </div>
                    <div class="swapForm__currency-list list-coin-two">
                        <div class="swapForm__coin-items coin-items-two">
							{to}
                            
                          
                            
                            

                        </div>
                    </div>
                </div>
                <a class="swap__button" href="#" id="ex_btn" style="color: white !important; text-decoration: none !important;">
                    Swap
                </a>
                <div class="swap__exchange">
                    Exchange rate: <span id="rate_one">1</span> <span id="rate_one_currency">BTC</span> ~ <span id="rate_two"></span> <span id="rate_two_currency">USDT</span>
                </div>
            </div>


            <div class="swap__main" id="two_block" style="display: none; height: 471px;">
                <img src="/templates/res/images/swap_loader.svg" style="margin: auto; display: block; margin-top: 128px;">
            </div>

            <div class="swap__main" id="three_block" style="display: none; height: 471px;">
                <img src="/templates/res/images/tick.png" style="margin: auto; display: block; margin-top: 0px; margin-bottom: 52px;">
                <p style="font-size: 16px; color: #d9d9d9;">You have successfully exchanged</p>
                <p style="font-size: 16px; color: #ffffff; margin-top: -13px;"><strong id="success_one_amount"></strong> <strong id="success_one_currency"></strong> to <strong id="success_two_amount"></strong> <strong id="success_two_currency"></strong></p>

                <a class="swap__button" href="../profile/wallet" style="color: white !important; text-decoration: none !important;">
                    Proceed
                </a>
            </div>





        </div>
        <div class="swap__description">
            You can simply and instantly convert any crypto or fiat assets anytime
            with a live price based on current
            market conditions with zero fees.
        </div>
    </section>
