function depositHTML(){

    let html = `
    <div class="window-overlay"></div>
<div class="window" aria-modal="true" aria-hidden="true" tabindex="-1" role="dialog">
	<div class="window__inner">
		<div class="window__block window__animation-enter-done">
			<div class="refill-window">
				<div class="refill-window__header">
					<div class="refill-window__title">Пополнение баланса</div>
					<button class="refill-window__close" onclick="modalClose()">×</button>
					<div class="refill-window__groups">
						<div class="refill-window__group-wrapper">
							<button class="refill-window__group-btn refill-window__group-btn--active"><span class="refill-window__group-text">Все</span></button>
						</div>
						<div class="refill-window__group-wrapper">
							<button class="refill-window__group-btn"><span class="refill-window__group-text">Карты</span></button>
						</div>
						<div class="refill-window__group-wrapper">
							<button class="refill-window__group-btn"><span class="refill-window__group-text">Эл. кошельки</span></button>
						</div>
						<div class="refill-window__group-wrapper">
							<button class="refill-window__group-btn"><span class="refill-window__group-text">Скины</span></button>
						</div>
						<div class="refill-window__group-wrapper">
							<button class="refill-window__group-btn"><span class="refill-window__group-text">Крипта</span></button>
						</div>
					</div>
				</div>
				<div class="refill-window__footer">
					<div class="refill-window__content">
						<div class="refill-window__payments">
							<ul class="refill-window__payments-list">
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/settle-cards.45d5786d.svg" alt="">
										<div class="refill-window__payment-label">#1</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/cards.e2f19d4d.svg" alt="">
										<div class="refill-window__payment-label">#2</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/cards.e2f19d4d.svg" alt="">
										<div class="refill-window__payment-label">#3</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/qiwi.78b0a233.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/sberbank.c77a6642.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/youmoney.ed9a1d75.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/skinsback.a0b3ba26.svg" alt="">
										<div class="refill-window__payment-label">Скины</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/alfabank.22ba2811.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/ethereum.b0f4243e.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/bitcoin.4660a169.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tron.81a8c177.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tether.7fdcb872.svg" alt="">
										<div class="refill-window__payment-label">ERC-20</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tether.7fdcb872.svg" alt="">
										<div class="refill-window__payment-label">TRC-20</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/ecopayz.5840fd41.svg" alt=""></button>
								</li>
							</ul>
						</div>
					</div>
					<div class="refill-window__promo-wrapper">
						<div class="refill-window__content">
							<input placeholder="Промокод (при наличии)" class="refill-window__promo-input" autocomplete="off" type="text" value="">
						</div>
					</div>
					<div class="refill-window__bonus"></div>
				
                    <div class="refill-window__content">
                        <div class="refill-window__payment-info">
                            <div class="refill-window__amount-wrapper">
                                <div class="refill-window__amount-input-wrapper">
                                    <div class="refill-window__pre-input">₽</div>
                                    <input 
                                    class="refill-window__amount-input" 
                                    placeholder="Введите сумму" 
                                    type="number" value="300">
                                </div>
                            </div>
                            <div class="refill-window__button-wrapper">
                                <button class="refill-window__button">пополнить</button>
                            </div>
                        </div>
                    </div>
				
				
				
				</div>
			</div>
		</div>
	</div>
</div>`;
    return html;
}

function payment_all(){


    let html = `<ul class="refill-window__payments-list">
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/settle-cards.45d5786d.svg" alt="">
										<div class="refill-window__payment-label">#1</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/cards.e2f19d4d.svg" alt="">
										<div class="refill-window__payment-label">#2</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/cards.e2f19d4d.svg" alt="">
										<div class="refill-window__payment-label">#3</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/qiwi.78b0a233.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/sberbank.c77a6642.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/youmoney.ed9a1d75.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/skinsback.a0b3ba26.svg" alt="">
										<div class="refill-window__payment-label">Скины</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/alfabank.22ba2811.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/ethereum.b0f4243e.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/bitcoin.4660a169.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tron.81a8c177.svg" alt=""></button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tether.7fdcb872.svg" alt="">
										<div class="refill-window__payment-label">ERC-20</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tether.7fdcb872.svg" alt="">
										<div class="refill-window__payment-label">TRC-20</div>
									</button>
								</li>
								<li class="refill-window__payment">
									<button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/ecopayz.5840fd41.svg" alt=""></button>
								</li>
							</ul>`;


    return html;
}

function payment_kards(){


    let html = `<ul class="refill-window__payments-list">
        <li class="refill-window__payment">
            <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/settle-cards.45d5786d.svg" alt="">
                <div class="refill-window__payment-label">#1</div>
            </button>
        </li>
        <li class="refill-window__payment">
            <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/cards.e2f19d4d.svg" alt="">
                <div class="refill-window__payment-label">#2</div>
            </button>
        </li>
        <li class="refill-window__payment">
            <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/cards.e2f19d4d.svg" alt="">
                <div class="refill-window__payment-label">#3</div>
            </button>
        </li>
      
        <li class="refill-window__payment">
            <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/sberbank.c77a6642.svg" alt=""></button>
        </li>
        <li class="refill-window__payment">
            <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/alfabank.22ba2811.svg" alt=""></button>
        </li>
    </ul>`;


    return html;
}

function payment_el_koshelki(){


    let html = `<ul class="refill-window__payments-list">
								
<li class="refill-window__payment">
    <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/qiwi.78b0a233.svg" alt=""></button>
</li>

<li class="refill-window__payment">
    <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/youmoney.ed9a1d75.svg" alt=""></button>
</li>
</ul>`;


    return html;
}

function payment_skins(){


    let html = `<ul class="refill-window__payments-list">
    
    <li class="refill-window__payment">
        <button class="refill-window__payment-btn refill-window__payment-btn--active"><img class="refill-window__payment-icon" src="/static/media/skinsback.a0b3ba26.svg" alt="">
            <div class="refill-window__payment-label">Скины</div>
        </button>
    </li>
    
</ul>`;
    return html;
}

function payment_krypto(){


    let html = `<ul class="refill-window__payments-list">
    
 
    
    <li class="refill-window__payment">
        <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/ethereum.b0f4243e.svg" alt=""></button>
    </li>
    <li class="refill-window__payment">
        <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/bitcoin.4660a169.svg" alt=""></button>
    </li>
    <li class="refill-window__payment">
        <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tron.81a8c177.svg" alt=""></button>
    </li>
    <li class="refill-window__payment">
        <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tether.7fdcb872.svg" alt="">
            <div class="refill-window__payment-label">ERC-20</div>
        </button>
    </li>
    <li class="refill-window__payment">
        <button class="refill-window__payment-btn"><img class="refill-window__payment-icon" src="/static/media/tether.7fdcb872.svg" alt="">
            <div class="refill-window__payment-label">TRC-20</div>
        </button>
    </li>
   
</ul>`;


    return html;
}


