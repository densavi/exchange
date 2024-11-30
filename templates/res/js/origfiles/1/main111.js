
$(document).ready(function () {
	loadLiveDrop('all')
    var bLazy = new Blazy({
        breakpoints: [{
            width: 420 // Max-width
            , src: 'data-src-small'
        }]
        , success: function(element){
            setTimeout(function(){
                // We want to remove the loader gif now.
                // First we find the parent container
                // then we remove the "loading" class which holds the loader image
                var parent = element.parentNode;
                parent.className = parent.className.replace(/\bloading\b/,'');
            }, 200);
        }
    });


    // Закрытие модальных окон, при клике вне поля
    $(document).mouseup(function (e) { // событие клика по веб-документу
        var div = $(".window__block"); // тут указываем ID элемента
        if (!div.is(e.target) // если клик был не по нашему блоку
            &&
            div.has(e.target).length === 0) { // и не по его дочерним элементам
            modalClose()
        }



    });



    // Переключение Live ленты
    $(".exDhqH.top").click(function () {
        console.log('main.js - Открываем live - top')

        if (!$(this).hasClass('active')) {
            $(this).toggleClass('active')
            $('.exDhqH.all').toggleClass('active')
            $('.exDhqH.all').html('<svg width="24" height="24" viewBox="0 0 24 24" fill="none"><rect x="2.079" y="2.039" width="8.486" height="8.486" rx="1" fill="var(--color-secondary-dark)"></rect><rect x="13.604" y="2.039" width="8.486" height="8.486" rx="1" fill="var(--color-secondary-dark)"></rect><rect x="2.079" y="13.563" width="8.486" height="8.486" rx="1" fill="var(--color-secondary-dark)"></rect><rect x="13.604" y="13.563" width="8.486" height="8.486" rx="1" fill="var(--color-secondary-dark)"></rect></svg>')
            $('.exDhqH.top').html('<svg width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M22.762 9.895a.662.662 0 01-.017.196l-1.457 5.827a.662.662 0 01-.639.502l-8.74.044H3.166a.662.662 0 01-.643-.502l-1.457-5.85a.661.661 0 01-.017-.201 1.393 1.393 0 01-.974-1.327c0-.766.624-1.39 1.39-1.39a1.392 1.392 0 01.884 2.464l1.823 1.837c.461.465 1.1.731 1.755.731.774 0 1.512-.367 1.976-.983l2.998-3.971a1.392 1.392 0 01.983-2.373 1.392 1.392 0 011.004 2.35l.002.002 2.976 3.982a2.483 2.483 0 001.98.993c.66 0 1.282-.257 1.749-.724l1.835-1.835a1.388 1.388 0 01.871-2.473 1.39 1.39 0 01.461 2.7zm-1.616 8.644a.662.662 0 00-.662-.663H3.357a.662.662 0 00-.663.663v1.589c0 .365.297.662.663.662h17.127a.662.662 0 00.662-.662v-1.59z" fill="var(--color-gold)"></path></svg>')
            loadLiveDrop('top')
        }

    });

    // Переключение Live ленты
    $(".exDhqH.all").click(function () {
        console.log('main.js - Открываем live - all')

        if (!$(this).hasClass('active')) {
            $(this).toggleClass('active')
            $('.exDhqH.top').toggleClass('active')
            $('.exDhqH.top').html('<svg width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M22.762 9.895a.662.662 0 01-.017.196l-1.457 5.827a.662.662 0 01-.639.502l-8.74.044H3.166a.662.662 0 01-.643-.502l-1.457-5.85a.661.661 0 01-.017-.201 1.393 1.393 0 01-.974-1.327c0-.766.624-1.39 1.39-1.39a1.392 1.392 0 01.884 2.464l1.823 1.837c.461.465 1.1.731 1.755.731.774 0 1.512-.367 1.976-.983l2.998-3.971a1.392 1.392 0 01.983-2.373 1.392 1.392 0 011.004 2.35l.002.002 2.976 3.982a2.483 2.483 0 001.98.993c.66 0 1.282-.257 1.749-.724l1.835-1.835a1.388 1.388 0 01.871-2.473 1.39 1.39 0 01.461 2.7zm-1.616 8.644a.662.662 0 00-.662-.663H3.357a.662.662 0 00-.663.663v1.589c0 .365.297.662.663.662h17.127a.662.662 0 00.662-.662v-1.59z" fill="var(--color-secondary-dark)"></path></svg>')
            $('.exDhqH.all').html('<svg width="24" height="24" viewBox="0 0 24 24" fill="none"><rect x="2.079" y="2.039" width="8.486" height="8.486" rx="1" fill="var(--color-gold)"></rect><rect x="13.604" y="2.039" width="8.486" height="8.486" rx="1" fill="var(--color-gold)"></rect><rect x="2.079" y="13.563" width="8.486" height="8.486" rx="1" fill="var(--color-gold)"></rect><rect x="13.604" y="13.563" width="8.486" height="8.486" rx="1" fill="var(--color-gold)"></rect></svg>')
            loadLiveDrop('all')
        }

    });


})



function loadLiveDrop(section){

    $.ajax({
        url: "/ajax/loadLiveDrop",
        data:{
            section: section
        },
        method: "POST",
        dataType: "json",
        success: function (data) {
            if (data.response == 'success') {
                $('.geTjWP').html(data.html);
            }
        }
    });
}

function modalClose(){

		if ($('.window-overlay').length) {

			$('.window-overlay').remove();
			$('.window').remove();

			console.log('main.js - modalClose');
		}

	}

function updateBalance(balance){

	$(`.balanceNumber`).text(balance+' ₽');

}

// Подажа вещи
function sell_item(id){
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/item/sell',
        data: {
            id: id
        },
        success: function (data) {
            if (data.response == 'success') {
                $('.profileItemId-'+id).remove();
                $('.sell-'+id).remove();
                updateBalance(data.user['balance']);

                toastr["success"](data.text);
            }
            if (data.response == 'error') {
                toastr["error"](data.text);
            }
        }
    });
};

// Вывод
function get(id){
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/item/get',
        data: {
            id: id
        },
        success: function (data) {
            if (data.response == 'success') {
                $('.profileItemId-'+id).remove();
                toastr["success"](data.text);
            }
            if (data.response == 'error') {
                toastr["error"](data.text);
            }
        }
    });
};




/* Профиль */

// Открываем трейд ссылку
$(document).on("click", ".user__btn--trade-new", function(event){

    if ($(this).hasClass('user__btn--active')) {
        $(this).toggleClass('user__btn--active')
        $('.user__event + div').remove()
    }else{
        $(this).toggleClass('user__btn--active')
        $.ajax({
            url: "/profile/openTradeLink",
            data: {
                trade_link: $('#inputTradeLink').val()
            },
            method: "POST",
            dataType: "json",
            success: function (data) {
                if (data.response == 'success')
                    $('.user__event').after(data.html)

                if (data.response == 'error')
                    toastr["error"](data.text)
            }

        });


    }



});

// Сохраняем трейд ссылку
$(document).on("click", ".trade-link__btn", function(event){
    $.ajax({
        url: "/profile/updateTradeLink",
        data: {
            trade_link: $('#inputTradeLink').val()
        },
        method: "POST",
        dataType: "json",
        success: function (data) {
            if (data.response == 'success') {
                $('.user__btn').toggleClass('user__btn--active')
                $('.user__event + div').remove()
                toastr["success"](data.text)
            }
            if (data.response == 'error') {
                toastr["error"](data.text)
            }
        }

    })
})

// Продаем все предметы из инвентаря
$(document).on("click", ".user-tabs__sell-btn", function(event){
    $.ajax({
        url: "/item/sellAll",
        method: "POST",
        dataType: "json",
        success: function (data) {
            if (data.response == 'success') {
                $('.items__item').remove()
                $('.profile-total-items-number').text('0')
                $('.user-tabs').after('<div class="user-no-items"><div class="user-no-items__inner"><div class="user-no-items__content"><div class="user-no-items__title">Нет предметов</div><div class="user-no-items__subtitle">Начните открывать кейсы</div></div><div class="user-no-items__btn-wrapper"><a class="user-no-items__btn" href="/">Открыть</a></div></div></div>')
                updateBalance(data.user['balance'])
                toastr["success"](data.text)
            }
            if (data.response == 'error') {
                toastr["error"](data.text)
            }
        }
    })
})









/* Все, что связано с пополнением баланса */

// Нажимаем на кнопку пополнение баланса
$(document).on("click", ".header-account__refill-wrapper, .case-status__btn--refill, .user__btn--refill, .account-menu__content-link--refill", function(event){
    console.log('main.js - Нажатие на кнопку Пополнение баланса');

    $('.account-menu .account-menu__btn').toggleClass('account-menu__btn--active');
    $('.account-menu .account-menu__btn + div').remove();
    $('.overlay').remove();

    $('.Toastify').after(depositHTML());

});

$(document).on("click", ".refill-window__payment-btn", function(event){

    $(".refill-window__payment-btn").removeClass('refill-window__payment-btn--active')

    if ($(this).hasClass('refill-window__payment-btn--active')) {
        $(this).toggleClass('refill-window__payment-btn--active');
    }else{
        $(this).toggleClass('refill-window__payment-btn--active');
    }

    let type = $('.refill-window__payment-btn').index( this )
    console.log('main.js - Нажимаем на кнопку с выбором способа пополнения. Номер: '+type);


});

$(document).on("click", ".refill-window__group-wrapper .refill-window__group-btn", function(event){

    let section = $(this).children().text()
    let type = $('.refill-window__group-btn').index( this )

    if(section == 'Все')
        $('.refill-window__payments').html(payment_all());
    if(section == 'Карты')
        $('.refill-window__payments').html(payment_kards());
    if(section == 'Эл. кошельки')
        $('.refill-window__payments').html(payment_el_koshelki());
    if(section == 'Скины')
        $('.refill-window__payments').html(payment_skins());
    if(section == 'Крипта')
        $('.refill-window__payments').html(payment_krypto());


    console.log('main.js Секция: '+section+' Номер: '+type);
    $(".refill-window__group-wrapper .refill-window__group-btn").removeClass('refill-window__group-btn--active')



    if ($(this).hasClass('refill-window__group-btn--active')) {
        $(this).toggleClass('refill-window__group-btn--active');
    }else{
        $(this).toggleClass('refill-window__group-btn--active');
    }




});

$(document).on("click", ".refill-window__button", function(event){

    amount = $(".refill-window__amount-input").val();
    promo = $(".refill-window__promo-input").val();

    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/payment/create',
        data: {
            amount: amount,
            promo: promo
        },
        success: function(data) {

            if(data.response == 'success'){
                toastr["success"]('Переадресация на платежную систему...');
                window.location.replace(data.url);
                window.location.href = data.url;
            }
            if(data.response == 'error'){
                toastr["error"](data.text);
            }
        }
    });




});

/* -------------------------------------- */




function randomOnlineNumber() {
    let o = 1050;
    if(Math.random()>.105) o = 920+Math.floor(Math.random()*10);
    //document.getElementById('.current-online').innerHTML=""+o;
    $(".hrQSwm").text(o);
    setTimeout('randomOnlineNumber()',3000);
}
randomOnlineNumber();



