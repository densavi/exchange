<style type="text/css">
    a {
        text-decoration: none !important;
    }
</style>
<link rel="stylesheet" href="/templates/res/css/p2p_style.css">
<div class="p2p__wrapper">
    <div class="formP2p">

        <div class="formP2p__top-btn-box">
            <div class="formP2p__top-btn left active">BUY</div>
            <div class="formP2p__top-btn right ">SELL</div>
        </div>

        <div class="formP2p__mobile-btn">
            <svg width="16" height="18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 0h16v3.674l-5.818 5.333v6.743L5.818 18V9.007L0 3.674V0Z" fill="#fff"></path>
            </svg>
        </div>
        <div class="formP2p__form-wrapper">

        <div class="formP2p__form">
                <div class="formP2p__mobile-filter">Filter</div>
                <div class="formP2p__mobile-close">
                    <svg width="16px" height="16px" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.584 6.999.876 11.708l1.414 1.414 4.708-4.709 4.709 4.71 1.414-1.415-4.708-4.709 5.291-5.292L12.29.293 6.998 5.585 1.708.293.292 1.707 5.584 7Z" fill="currentColor"></path>
                    </svg>
                </div>

                <div class="formP2p__currency input-field s6">
                    <input id="coin-one-id" type="text" class="validate">
                    <label for="coin-one-id" class="formP2p__currency-label">Amount (<span class="label-title-one">BTC</span>)</label>
                    <div class="formP2p__coin coin-one">BTC</div>
                    <div class="formP2p__currency-list list-coin-one">
<!--                        <input type="text" class="formP2p__coin-search validate" placeholder="Search">-->
                        <div class="formP2p__coin-items coin-items-one">
							{cryptocurrency_list}
                        </div>

                    </div>
                </div>


                <div class="formP2p__currency input-field s6">
                    <input id="coin-two-id" type="text" class="validate">
                    <label for="coin-two-id" class="formP2p__currency-label">Amount (<span class="label-title-two">USD</span>)</label>
                    <div class="formP2p__coin coin-two">USD</div>
                    <div class="formP2p__currency-list list-coin-two">
<!--                        <input type="text" class="formP2p__coin-search validate" placeholder="Search">-->
                        <div class="formP2p__coin-items coin-items-two">
                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">USD</span>
                                    <span class="formP2p__currency-title">(US Dollar)</span>
                                </div>
                            </div>

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">EUR</span>
                                    <span class="formP2p__currency-title">(Euro)</span>
                                </div>
                            </div>

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">CNY</span>
                                    <span class="formP2p__currency-title">(Chinese Yuan)</span>
                                </div>
                            </div>

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">RUB</span>
                                    <span class="formP2p__currency-title">(Russian Ruble)</span>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="formP2p__currency input-field s6">
                    <div class="formP2p__coin coin-three">All payment methods</div>
                    <div class="formP2p__currency-list list-coin-three">
<!--                        <input type="text" class="formP2p__coin-search validate" placeholder="Search">-->
                        <div class="formP2p__coin-items coin-items-three">
                            <div class="formP2p__currency-item">
                                <!--                    <div class="">-->
                                <span class="formP2p__currency-sub">All payment methods</span>
                                <!--                    </div>-->
                            </div>

                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Payeer</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Advcash</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Webmoney</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Perfect Money</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Card to card</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">PayPal</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Paysend</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Western Union</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">PrivatBank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Sim-card balance</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">PokerStars</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">SWIFT</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Mastercard</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Visa</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Revolut</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Sberbank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Cash</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Tinkoff</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Alfa-bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">VTB</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Raiffeisen Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Rocketbank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Pochta Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Mir (payment system)</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">National bank transfer</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Russian Standard Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">MTS-bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Gazprombank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Kykyryza bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">RNCB Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Avangard Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Touch Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Bank of Moscow</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">QIWI</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">SBP</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">YooMoney</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Rosbank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Yandex.Money</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">MTS Money</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Otkritie Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Home Credit Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Sovcombank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">PS Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Cash at ATM</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Russian Agricultural Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Uralsib</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Credit Bank Of Moscow</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">OTP Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Bank Saint Petersburg</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Renaissance Credit</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">UniCredit Bank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">Citibank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">ForBank</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">BinancePay</span>
                                </div>
                            </div>
                            

                            <div class="formP2p__currency-item">
                                <div class="">
                                    <span class="formP2p__currency-sub">KoronaPay (Zolotaya korona)</span>
                                </div>
                            </div>
                                                    </div>

                    </div>
                </div>


                <div class="formP2p__verification">
                    <div class="formP2p__title">Verified users</div>
                    <div class="formP2p__des">Show ads of verified traders only</div>
                    <div class="switch">
                        <label>
                            <input type="checkbox">
                            <span class="lever"></span>
                        </label>
                    </div>
                </div>

                <div class="formP2p__verification">
                    <div class="formP2p__title">Active users</div>
                    <div class="formP2p__des">Show ads of traders who are online only</div>
                    <div class="switch">
                        <label>
                            <input type="checkbox">
                            <span class="lever"></span>
                        </label>
                    </div>
                </div>

                <button class="formP2p__btn"  onclick="openP2P()">Search</button>
            
            </div>
        </div>



    </div>

    <div class="p2p__trade-list">
        <div class="p2p__item-box p2p__item-title">
            <div class="p2p__list-title p2p__trader">Trader</div>
            <div class="p2p__list-title">Payment method</div>
            <div class="p2p__list-title">Price</div>
            <div class="p2p__list-title">Limits</div>
            <div class="p2p__list-title"></div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_1.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">CambiosP</div>
                    <div class="p2p__user-orders">628 orders, <span class="p2p__user-percent">97%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> MasterCard</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28448.4 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 28 200,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_2.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">alfredoagrel ⭐️a✳️®️</div>
                    <div class="p2p__user-orders">391 orders, <span class="p2p__user-percent">92%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Webmoney</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28467.95 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 25 701,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_3.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">Xaviercripto</div>
                    <div class="p2p__user-orders">97 orders, <span class="p2p__user-percent">94%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> PokerStars</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28472.8 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 15 909,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_4.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">ZproCoin</div>
                    <div class="p2p__user-orders">593 orders, <span class="p2p__user-percent">91%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Webmoney</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28502.45 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 14 310,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_5.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">carloseli777</div>
                    <div class="p2p__user-orders">534 orders, <span class="p2p__user-percent">84%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Card to Card</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28529.15 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 7 290,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_6.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">afcrypto</div>
                    <div class="p2p__user-orders">89 orders, <span class="p2p__user-percent">94%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Advcash</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28533.6 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 3 239,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_7.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">trader_pk786</div>
                    <div class="p2p__user-orders">468 orders, <span class="p2p__user-percent">89%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Sim-card balance</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28557 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 4 680,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_8.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">ABEJORRO78</div>
                    <div class="p2p__user-orders">188 orders, <span class="p2p__user-percent">99%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Sim-card balance</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28566.4 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 23 994,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_9.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">HoldBit</div>
                    <div class="p2p__user-orders">275 orders, <span class="p2p__user-percent">92%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> MasterCard</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28580.15 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 24 541,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_10.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">ECU-CAMBIOS</div>
                    <div class="p2p__user-orders">280 orders, <span class="p2p__user-percent">89%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Advcash</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28594.15 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 19 312,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_11.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">Matango</div>
                    <div class="p2p__user-orders">279 orders, <span class="p2p__user-percent">84%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Card to Card</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28608.1 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 10 769,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_12.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">Ccorrea</div>
                    <div class="p2p__user-orders">454 orders, <span class="p2p__user-percent">96%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Webmoney
</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28630.8 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 62 311,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_13.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">Efinanzas</div>
                    <div class="p2p__user-orders">137 orders, <span class="p2p__user-percent">92%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Card to Card</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28637.65 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 20 708,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_14.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">ActiTecFAST</div>
                    <div class="p2p__user-orders">137 orders, <span class="p2p__user-percent">98%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Payeer</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28644.5 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 3 445,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        
        <div class="p2p__item-box">
            <div class="p2p__user">

                <img class="p2p__user-img" src="/templates/res/images/p2p/trader_15.jpg" alt="">
                <div class="p2p__user-name-box">
                    <div class="p2p__user-name">Casa Roble De Roca</div>
                    <div class="p2p__user-orders">216 orders, <span class="p2p__user-percent">88%</span></div>
                    <div class="p2p__user-status">Online</div>
                </div>
            </div>
            <div class="p2p__list-title p2p__limits"> <span>Payment method</span> Advcash</div>
            <div class="p2p__list-title p2p__price"><span>Price</span>28655.3 USD</div>
            <div class="p2p__list-title p2p__limits"><span>Limits</span>50 - 18 850,00 USD</div>
            <div class="p2p__list-title" onclick="openP2P()">
                <a class="p2p__btn" href="#">Sell BTC</a>
            </div>
        </div>

        

        <ul class="pagination">
            <div onclick="openP2P()" style="padding: 14px; width: 200px; text-align: center; border-radius: 10px; cursor: pointer; background: #333e66;">
                
                <p style="display: inline-block; color: #d9d9d9;">Load 15 more traders</p>
            </div>
            <!-- <li class="arrow-all disabled">
                <a href="#!" class="arrow-all">
                    <img src="../assets/img/pagination-arrow-all.svg" alt="">
                </a>
            </li>
            <li class="arrow-all disabled">
                <a href="#!">
                    <img src="../assets/img/pagination-arrow.svg" alt="">
                </a>
            </li>
            <li class="active" onclick="openP2P()"><a href="#!">1</a></li>
            <li class="waves-effect" onclick="openP2P()"><a href="#!">2</a></li>
            <li class="waves-effect" onclick="openP2P()"><a href="#!">3</a></li>
            <li class="waves-effect" onclick="openP2P()"><a href="#!">4</a></li>
            <li class="waves-effect" onclick="openP2P()"><a href="#!">5</a></li>
            <li class="waves-effect" onclick="openP2P()"><a href="#!">6</a></li>
            <li class="waves-effect" onclick="openP2P()"><a href="#!">7</a></li>
            <li class="arrow-all waves-effect">
                <a href="#!">
                    <img class="pagination__arrow-next" src="../assets/img/pagination-arrow.svg" alt="">
                </a>
            </li>
            <li class="arrow-all waves-effect">
                <a href="#!">
                    <img class="pagination__arrow-next" src="../assets/img/pagination-arrow-all.svg" alt="">
                </a>
            </li> -->
        </ul>

    </div>
</div>

<div id="p2p_error_modal" class="popup__container" style="display: none;">
        <div class="popup">
            <div class="popup__close" id="close_modal">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                     width="24" height="24"
                     viewBox="0 0 24 24"
                     style=" fill:#FFFFFF;"><path d="M 4.9902344 3.9902344 A 1.0001 1.0001 0 0 0 4.2929688 5.7070312 L 10.585938 12 L 4.2929688 18.292969 A 1.0001 1.0001 0 1 0 5.7070312 19.707031 L 12 13.414062 L 18.292969 19.707031 A 1.0001 1.0001 0 1 0 19.707031 18.292969 L 13.414062 12 L 19.707031 5.7070312 A 1.0001 1.0001 0 0 0 18.980469 3.9902344 A 1.0001 1.0001 0 0 0 18.292969 4.2929688 L 12 10.585938 L 5.7070312 4.2929688 A 1.0001 1.0001 0 0 0 4.9902344 3.9902344 z"></path></svg>
            </div>
            <div class="popup__left">
                <img src="/templates/res/images/warning.png" alt="">
            </div>
            <div class="popup__right">
                <div class="popup__right-title">
                    Warning
                </div>
                <div class="popup__right-description">
                    P2P is not available to you. Please contact support.                </div>
                <div id="close_modal_btn" class="popup__right-button">
                    Close
                </div>
            </div>
        </div>
    </div>