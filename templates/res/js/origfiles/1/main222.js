
$(document).ready(function () {
	//loadLiveDrop('all')
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
        var div = $(".user-data, .controls, .user-data, .pc .burger-button, .popup, .avatar-wrapper"); // тут указываем ID элемента
        if (!div.is(e.target) // если клик был не по нашему блоку
            &&
            div.has(e.target).length === 0) { // и не по его дочерним элементам
			//console.log('close')
            closeAll()
            //closeUserMenu()
            //closeDonateMenu()
			//$("html").removeAttr("style")
			//$('.form-wrapper').remove()
        }



    });



})

  //$('.my_modal.menu').animate({opacity: 0,transform: "translateY(20px)"}, 100 );
  
  
/* -------------------------------------- */

/* Авторизация и выход с сайта */
$(document).on("click", ".login-button", function(event){
    toastr["success"]('Авторизация...')
    window.location.replace("/auth/vk")
    window.location.href = "/auth/vk"
    console.log('Аутентификация')
});

$(document).on("click", ".account-menu__logout-btn", function(event){
    window.location.replace("/auth/logout")
    window.location.href = "/auth/logout"
    console.log('Выход')
});
/* ----------- */


function updateBalance(balance){
	$(`.ajax_balance`).text(balance);
}

function menu(settings){
	html = `	<div class="my_modal menu" data-v-05918ae5="" style="opacity: 0; transform: translateY(0px);">
				<div class="inner-container" data-v-05918ae5="">
					<button class="close-button" data-v-30b36c5c="" data-v-05918ae5="">
						<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-30b36c5c="">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
						</svg>
					</button>
					<div class="user-data" data-v-dd81c1f3="" data-v-05918ae5="">
						<div to="/profile" class="avatar-wrapper mobile" data-v-542a337d="" data-v-dd81c1f3="" style="margin-right: 15px;">
							<div class="avatar" data-v-542a337d="" style="background-image: url(${settings.user.photo}); width: 100%; height: 100%;"></div>
							<div class="frame" data-v-542a337d="" style="background-image: url(${settings.user.first_name});"></div>
						</div>
						<div data-v-dd81c1f3="">
							<div class="nickname" data-v-8419d056="" data-v-4e77f3e2="" data-v-dd81c1f3="">${settings.user.first_name}</div>
							<div class="id" data-v-6dddd7c8="" data-v-dd81c1f3=""> id: ${settings.user.id}</div>
						</div>
					</div>
					<div class="controls" data-v-56868d2c="" data-v-05918ae5="">
						
					
						<a href="/profile">
						<button data-v-56868d2c="">
								<svg width="13" height="16" viewBox="0 0 13 16" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
									<path d="M1.78525 11.69C0.642175 12.8331 0 14.3834 0 16H12.1905C12.1905 14.3834 11.5483 12.8331 10.4052 11.69C9.26215 10.5469 7.7118 9.90476 6.09524 9.90476C4.47868 9.90476 2.92833 10.5469 1.78525 11.69Z"></path>
									<path d="M1.52381 4.57143C1.52381 7.09714 3.56952 9.14286 6.09524 9.14286C8.62095 9.14286 10.6667 7.09714 10.6667 4.57143C10.6667 2.04571 8.62095 0 6.09524 0C3.56952 0 1.52381 2.04571 1.52381 4.57143Z"></path>
								</svg>Личный кабинет </button>
						
							
						<div class="mobile chapter" data-v-56868d2c="">Развлечения</div>
						
						<a href="/">
							<button class="mobile" data-v-56868d2c="">
								<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
									<path d="M14.6867 11.3262C14.3746 12.5181 13.2885 13.4003 12 13.4003C10.7115 13.4003 9.62542 12.5182 9.31333 11.3262H4.75769V20.4294H19.2423V11.3262H14.6867Z"></path>
									<path d="M12 9.25195C11.2439 9.25195 10.6288 9.86705 10.6288 10.6231C10.6288 11.3792 11.2439 11.9943 12 11.9943C12.7561 11.9943 13.3712 11.3791 13.3712 10.6231C13.3712 9.86705 12.7561 9.25195 12 9.25195Z"></path>
									<path d="M20.6482 3.63086V9.91998H24V7.62456C24 5.62839 22.5501 3.9647 20.6482 3.63086Z"></path>
									<path d="M0 7.62456V9.91998H3.35184V3.63086C1.44994 3.9647 0 5.62839 0 7.62456Z"></path>
									<path d="M4.75769 3.57031V9.92056H9.31333C9.62542 8.72858 10.7115 7.84644 12 7.84644C13.2885 7.84644 14.3746 8.72853 14.6867 9.92056H19.2423V3.57031H4.75769Z"></path>
									<path d="M20.6482 11.3262V20.4294H22.983C23.5438 20.4294 24 19.9732 24 19.4123V11.3262H20.6482Z"></path>
									<path d="M0 11.3262V19.4123C0 19.9731 0.456234 20.4294 1.01705 20.4294H3.35184V11.3262H0Z"></path>
									<defs>
										<linearGradient id="svg_gradient" x1="9.00065" y1="0" x2="9.00065" y2="24" gradientUnits="userSpaceOnUse">
											<stop stop-color="#FFE04A"></stop>
											<stop offset="1" stop-color="#FF882D"></stop>
										</linearGradient>
									</defs>
								</svg>Кейсы </button>
							</a>
						<a href="/cheap_cases">
							<button class="mobile" data-v-56868d2c="">
								<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
									<path d="M14.6867 11.3262C14.3746 12.5181 13.2885 13.4003 12 13.4003C10.7115 13.4003 9.62542 12.5182 9.31333 11.3262H4.75769V20.4294H19.2423V11.3262H14.6867Z"></path>
									<path d="M12 9.25195C11.2439 9.25195 10.6288 9.86705 10.6288 10.6231C10.6288 11.3792 11.2439 11.9943 12 11.9943C12.7561 11.9943 13.3712 11.3791 13.3712 10.6231C13.3712 9.86705 12.7561 9.25195 12 9.25195Z"></path>
									<path d="M20.6482 3.63086V9.91998H24V7.62456C24 5.62839 22.5501 3.9647 20.6482 3.63086Z"></path>
									<path d="M0 7.62456V9.91998H3.35184V3.63086C1.44994 3.9647 0 5.62839 0 7.62456Z"></path>
									<path d="M4.75769 3.57031V9.92056H9.31333C9.62542 8.72858 10.7115 7.84644 12 7.84644C13.2885 7.84644 14.3746 8.72853 14.6867 9.92056H19.2423V3.57031H4.75769Z"></path>
									<path d="M20.6482 11.3262V20.4294H22.983C23.5438 20.4294 24 19.9732 24 19.4123V11.3262H20.6482Z"></path>
									<path d="M0 11.3262V19.4123C0 19.9731 0.456234 20.4294 1.01705 20.4294H3.35184V11.3262H0Z"></path>
									<defs>
										<linearGradient id="svg_gradient" x1="9.00065" y1="0" x2="9.00065" y2="24" gradientUnits="userSpaceOnUse">
											<stop stop-color="#FFE04A"></stop>
											<stop offset="1" stop-color="#FF882D"></stop>
										</linearGradient>
									</defs>
								</svg>Дешевые кейсы </button>
							</a>
						
							
						<div class="mobile chapter" data-v-56868d2c="">Финансы</div>
						<button class="my_menu_promocode"  data-v-56868d2c="">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path d="M16.4667 10.768C16.8164 10.768 17.1 11.0516 17.1 11.4013V17.3002C17.1 17.5477 16.9999 17.785 16.8218 17.96C16.6436 18.135 16.402 18.2333 16.15 18.2333H2.85C2.59804 18.2333 2.35641 18.135 2.17825 17.96C2.00009 17.785 1.9 17.5477 1.9 17.3002V11.4013C1.9 11.0516 2.18355 10.768 2.53333 10.768H16.4667ZM11.875 0.503193C12.4361 0.503005 12.9882 0.642305 13.4797 0.908121C13.9712 1.17394 14.3863 1.55762 14.6863 2.02344C14.9862 2.48926 15.1612 3.02207 15.1951 3.57224C15.2289 4.1224 15.1205 4.67204 14.8799 5.16995L18.05 5.16902C18.302 5.16902 18.5436 5.26733 18.7218 5.44234C18.8999 5.61734 19 5.85469 19 6.10218V8.07349C19 8.32098 18.8999 8.55833 18.7218 8.73333C18.5436 8.90834 18.302 9.00665 18.05 9.00665H0.95C0.698044 9.00665 0.456408 8.90834 0.278249 8.73333C0.100089 8.55833 0 8.32098 0 8.07349V6.10218C0 5.85469 0.100089 5.61734 0.278249 5.44234C0.456408 5.26733 0.698044 5.16902 0.95 5.16902L4.12015 5.16995C3.78172 4.47164 3.70655 3.67801 3.90802 2.93036C4.10949 2.1827 4.57452 1.52953 5.22034 1.08712C5.86616 0.644718 6.65086 0.441786 7.43473 0.514454C8.21861 0.587122 8.95079 0.930673 9.50095 1.48395C9.80973 1.17276 10.179 0.925616 10.5868 0.757151C10.9945 0.588685 11.4326 0.502327 11.875 0.503193ZM7.125 2.36952C6.75904 2.3697 6.40719 2.50817 6.14233 2.75624C5.87748 3.0043 5.71994 3.34295 5.70235 3.702C5.68477 4.06106 5.80848 4.413 6.04787 4.6849C6.28725 4.95679 6.62395 5.1278 6.9882 5.16249L7.125 5.16902H8.55V3.76927C8.54998 3.42131 8.41803 3.08583 8.17986 2.82825C7.9417 2.57067 7.6144 2.40946 7.2618 2.37606L7.125 2.36952ZM11.875 2.36952L11.7382 2.37606C11.4089 2.40705 11.1008 2.5496 10.8668 2.77929C10.6329 3.00897 10.4875 3.31146 10.4557 3.6349L10.45 3.76927V5.16902H11.875L12.0118 5.16249C12.3643 5.12892 12.6914 4.96764 12.9294 4.71008C13.1674 4.45251 13.2993 4.11712 13.2993 3.76927C13.2993 3.42142 13.1674 3.08603 12.9294 2.82847C12.6914 2.5709 12.3643 2.40962 12.0118 2.37606L11.875 2.36952Z"></path>
							</svg>Промокод </button>
							
							
						<button class="my_menu_donate" data-v-56868d2c="">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path d="M9.13046 0.880459L3.88956 4.3744H6.49147L10.828 1.77258L10.7627 1.51152C10.5832 0.793362 9.7464 0.469836 9.13046 0.880459Z"></path>
								<path d="M15.5979 4.3745L14.8415 2.1052C14.5654 1.27694 13.5829 0.930653 12.8485 1.40276L8.22573 4.3745H15.5979Z"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M0.5 7.44718C0.5 6.15394 1.54838 5.10556 2.84162 5.10556H15.777C17.0702 5.10556 18.1186 6.15394 18.1186 7.44718V10.9153C18.9072 11.0785 19.5 11.777 19.5 12.614C19.5 13.4509 18.9072 14.1494 18.1186 14.3126V16.9133C18.1186 18.2066 17.0702 19.2549 15.777 19.2549H2.84162C1.54838 19.2549 0.5 18.2066 0.5 16.9133V7.44718ZM17.7657 10.8793H15.1635C14.2055 10.8793 13.4289 11.656 13.4289 12.614C13.4289 13.572 14.2055 14.3486 15.1635 14.3486H17.7654L17.7657 15.7857H15.1637C13.412 15.7857 11.9919 14.3657 11.9919 12.6139C11.9919 10.8622 13.412 9.44211 15.1637 9.44211H17.7657V10.8793ZM5.79309 8.57484C6.34733 8.57484 6.79664 9.02414 6.79664 9.57839V11.1768H8.39458C8.94882 11.1768 9.39813 11.6261 9.39813 12.1803C9.39813 12.7346 8.94882 13.1839 8.39458 13.1839H6.79664V14.7822C6.79664 15.3365 6.34733 15.7858 5.79309 15.7858C5.23884 15.7858 4.78954 15.3365 4.78954 14.7822V13.1839H3.19074C2.6365 13.1839 2.18719 12.7346 2.18719 12.1803C2.18719 11.6261 2.6365 11.1768 3.19074 11.1768H4.78954V9.57839C4.78954 9.02414 5.23884 8.57484 5.79309 8.57484Z"></path>
							</svg>Пополнить баланс </button>
							
							
							
						<button class="my_menu_withdraw" data-v-56868d2c="">
							<svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path d="M3.27356 2.51473L4.77297 5.21273H13.227L14.7264 2.51473C15.2981 1.48613 14.2307 0.327467 13.1112 0.761338L11.9076 1.22782C11.4284 1.41355 10.881 1.30469 10.5161 0.95108L9.91234 0.366152C9.40847 -0.12205 8.59153 -0.122051 8.08766 0.366151L7.48395 0.95108C7.11899 1.30469 6.57164 1.41355 6.09242 1.22782L4.88878 0.761338C3.76928 0.327467 2.70192 1.48613 3.27356 2.51473Z"></path>
								<path fill-rule="evenodd" clip-rule="evenodd" d="M1.14693 11.3741L4.54987 7.08791H13.4501L16.8531 11.3741C17.5968 12.3109 18 13.4595 18 14.6414C18 17.6009 15.5238 20 12.4693 20H5.53066C2.47616 20 0 17.6009 0 14.6414C0 13.4595 0.40323 12.3109 1.14693 11.3741ZM8.18527 14.8634L11.0576 17.6361C11.41 17.9763 11.9801 17.9763 12.3325 17.6361L15.2048 14.8634C15.5582 14.5223 15.5592 13.9682 15.2072 13.6259C14.8551 13.2835 14.2832 13.2825 13.9299 13.6236L12.5982 14.9091V11.4708C12.5982 10.9875 12.1938 10.5957 11.695 10.5957C11.1962 10.5957 10.7919 10.9875 10.7919 11.4708V14.9091L9.46019 13.6236C9.10682 13.2825 8.53497 13.2835 8.18291 13.6259C7.83085 13.9682 7.83191 14.5223 8.18527 14.8634Z"></path>
							</svg>Вывести золото </button>
							
							
						<div class="mobile chapter" data-v-56868d2c="">Другое</div>
						<a href="https://t.me/${settings.site.TG_GROUP}" target="__blank" class="mobile" data-v-56868d2c="">
							<svg viewBox="0 0 25 21" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M1.71862 8.90676C8.42949 5.98697 12.9045 4.06207 15.1435 3.13205C21.5365 0.476663 22.8649 0.0153938 23.7307 0.000162401C23.9212 -0.00318758 24.347 0.0439421 24.6228 0.267435C24.8557 0.456147 24.9197 0.711071 24.9504 0.889992C24.9811 1.06891 25.0192 1.4765 24.9889 1.79497C24.6424 5.43 23.1434 14.2512 22.3808 18.3225C22.0581 20.0453 21.4227 20.6229 20.8076 20.6794C19.4707 20.8022 18.4556 19.7972 17.1608 18.9496C15.1348 17.6233 13.9901 16.7977 12.0235 15.5034C9.75066 14.0078 11.224 13.1857 12.5193 11.8422C12.8583 11.4906 18.7484 6.14053 18.8624 5.65519C18.8767 5.59449 18.8899 5.36823 18.7553 5.24875C18.6207 5.12928 18.422 5.17014 18.2787 5.20263C18.0754 5.24869 14.8388 7.38507 8.56858 11.6118C7.64986 12.2418 6.8177 12.5487 6.07212 12.5326C5.25018 12.5149 3.6691 12.0685 2.49372 11.687C1.05207 11.219 -0.0937162 10.9716 0.00605648 10.1768C0.0580243 9.76288 0.628878 9.33952 1.71862 8.90676Z"></path>
							</svg>Телеграм </a>
							
						<a href="https://vk.com/${settings.site.VK_GROUP_ALIAS}" target="__blank" class="mobile" data-v-56868d2c="">
							<svg viewBox="0 0 20 13" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path d="M10.8931 12.7805C4.0599 12.7805 0.162399 8.09591 0 0.300781H3.42286C3.53529 6.02221 6.05865 8.44569 8.0574 8.94538V0.300781H11.2805V5.2352C13.2543 5.02283 15.3277 2.77424 16.0273 0.300781H19.2503C18.7132 3.34888 16.4646 5.59747 14.8656 6.52189C16.4646 7.27143 19.0256 9.2327 20 12.7805H16.4521C15.6901 10.407 13.7914 8.57061 11.2805 8.32077V12.7805H10.8931Z"></path>
							</svg>ВКонтакте </a>
							
				
							
							
							<a href="/pages/faq">
						<button data-v-56868d2c="">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path d="M5 7.36842C5 4.46166 7.23858 2.10526 10 2.10526C12.7614 2.10526 15 4.46166 15 7.36842V14.7368C15 16.4809 13.6569 17.8947 12 17.8947H9.75C9.19771 17.8947 8.75 18.366 8.75 18.9474C8.75 19.5287 9.19772 20 9.75 20H12C14.7614 20 17 17.6436 17 14.7368C18.6569 14.7368 20 13.323 20 11.5789V9.47369C20 7.72963 18.6569 6.31579 17 6.31579H16.9291C16.4439 2.74495 13.5265 0 10 0C6.47353 0 3.55612 2.74495 3.07089 6.31579H3C1.34315 6.31579 0 7.72963 0 9.47369V11.5789C0 13.323 1.34315 14.7368 3 14.7368H5V7.36842Z"></path>
							</svg>Помощь </button>
							</a>
							
							
						<a href="/auth/logout">	
						<button data-v-56868d2c="">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-56868d2c="">
								<path d="M19.9369 8.84815C19.8944 8.74647 19.8336 8.65397 19.7561 8.57647L17.2567 6.07729C16.9309 5.75229 16.4042 5.75229 16.0784 6.07729C15.7525 6.40311 15.7525 6.93061 16.0784 7.25561L17.1559 8.33311H12.5006C12.0398 8.33311 11.6673 8.70643 11.6673 9.16643C11.6673 9.62643 12.0398 9.99975 12.5006 9.99975H17.1559L16.0783 11.0772C15.7525 11.4031 15.7525 11.9306 16.0783 12.2556C16.2408 12.4189 16.4542 12.4997 16.6675 12.4997C16.8809 12.4997 17.0942 12.4189 17.2567 12.2556L19.7561 9.75639C19.8336 9.67971 19.8944 9.58721 19.9369 9.48471C20.021 9.28147 20.021 9.05147 19.9369 8.84815Z"></path>
								<path d="M14.1674 11.6667C13.7066 11.6667 13.334 12.04 13.334 12.5V16.6666H10.0005V3.33331C10.0005 2.96581 9.75884 2.64082 9.40632 2.535L6.51199 1.66668H13.334V5.83335C13.334 6.29335 13.7066 6.66667 14.1674 6.66667C14.6282 6.66667 15.0008 6.29335 15.0008 5.83335V0.833358C15.0008 0.37332 14.6282 0 14.1674 0H0.833365C0.803363 0 0.776682 0.0125 0.74754 0.0158203C0.708358 0.02 0.672536 0.0266406 0.635034 0.0358202C0.547529 0.0583202 0.468345 0.0924998 0.394201 0.13914C0.37588 0.15082 0.353378 0.15164 0.335877 0.164961C0.329158 0.17 0.326658 0.179179 0.319978 0.184179C0.229153 0.25582 0.153329 0.34332 0.0983256 0.447499C0.0866453 0.469999 0.0841451 0.494179 0.075004 0.517499C0.0483229 0.580819 0.0191807 0.642499 0.00918018 0.712499C0.00500027 0.737499 0.0125007 0.760819 0.0116803 0.784999C0.01086 0.801678 0 0.816678 0 0.833319V17.5C0 17.8975 0.280835 18.2391 0.670036 18.3166L9.0038 19.9833C9.05799 19.995 9.11299 20 9.16713 20C9.35796 20 9.54547 19.9342 9.69548 19.8108C9.88799 19.6525 10.0005 19.4166 10.0005 19.1666V18.3333H14.1674C14.6282 18.3333 15.0008 17.96 15.0008 17.5V12.5C15.0008 12.04 14.6282 11.6667 14.1674 11.6667Z"></path>
							</svg>Выход </button>
						</a>
							
					</div>
				</div>
			</div>			
			`;
	return html
	
}

function donate_form(){
	html = `<div class="form-wrapper" data-v-97f87ae1="" data-v-4cf06aaf="">
	<div class="form-container" data-v-97f87ae1="">
		<div class="popup top-up-popup" data-v-d6e0533f="" data-v-4cf06aaf="">
			<div class="popup-header" data-v-d6e0533f="">
				<h3 data-v-95ef6d7b="" data-v-4cf06aaf="">Пополнение баланса</h3>
				<button class="close-button" data-v-1b43f072="" data-v-d6e0533f="">
					<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-1b43f072="">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
					</svg>
				</button>
			</div>
			<div class="popup-body" data-v-d6e0533f="">
				<div class="payment-select-container top-up-popup-select" data-v-2266da20="" data-v-4cf06aaf="">
					<div class="payment-select reminder-three-2 reminder-two" data-v-2266da20="">
						<div class="select-card payment-select-card" data-v-66efa9a6="" data-v-2266da20="">
							<div class="select-card-icon" data-v-66efa9a6=""><img src="https://cdn.bulldrop.net/payments-methods/MasterCard.svg" data-v-66efa9a6=""></div>
							<div class="select-card-title" data-v-66efa9a6="">Банковские карты</div>
							<div class="select-card-overlay selected" data-v-66efa9a6="">
								<svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-66efa9a6="">
									<path fill-rule="evenodd" clip-rule="evenodd" d="M14.7933 0.287712C15.4872 0.783344 15.6479 1.74764 15.1523 2.44152L7.43238 13.2494C7.15015 13.6445 6.6985 13.8838 6.21307 13.8955C5.72765 13.9072 5.26502 13.6898 4.96415 13.3087L0.3322 7.44156C-0.196181 6.77228 -0.0819578 5.80138 0.587326 5.273C1.25661 4.74462 2.22751 4.85884 2.75589 5.52812L6.11425 9.78204L12.6395 0.64668C13.1351 -0.0472043 14.0994 -0.20792 14.7933 0.287712Z" fill="#E3E3E5"></path>
								</svg>
							</div>
						</div>
						<div class="select-card payment-select-card" data-v-66efa9a6="" data-v-2266da20="">
							<div class="select-card-icon" data-v-66efa9a6=""><img src="https://cdn.bulldrop.net/payments-methods/MasterCard_ym1hyhY.svg" data-v-66efa9a6=""></div>
							<div class="select-card-title" data-v-66efa9a6="">Банковские карты (2 способ)</div>
							<div class="select-card-overlay" data-v-66efa9a6="">
								<!---->
							</div>
						</div>
						<div class="select-card payment-select-card" data-v-66efa9a6="" data-v-2266da20="">
							<div class="select-card-icon" data-v-66efa9a6=""><img src="https://cdn.bulldrop.net/payments-methods/Qiwi.svg" data-v-66efa9a6=""></div>
							<div class="select-card-title" data-v-66efa9a6="">Qiwi</div>
							<div class="select-card-overlay" data-v-66efa9a6="">
								<!---->
							</div>
						</div>
						<div class="select-card payment-select-card" data-v-66efa9a6="" data-v-2266da20="">
							<div class="select-card-icon" data-v-66efa9a6=""><img src="https://cdn.bulldrop.net/payments-methods/MTC.svg" data-v-66efa9a6=""></div>
							<div class="select-card-title" data-v-66efa9a6="">МТС</div>
							<div class="select-card-overlay" data-v-66efa9a6="">
								<!---->
							</div>
						</div>
						<div class="select-card payment-select-card" data-v-66efa9a6="" data-v-2266da20="">
							<div class="select-card-icon" data-v-66efa9a6=""><img src="https://cdn.bulldrop.net/payments-methods/Beeline_2021_1.svg" data-v-66efa9a6=""></div>
							<div class="select-card-title" data-v-66efa9a6="">билайн</div>
							<div class="select-card-overlay" data-v-66efa9a6="">
								<!---->
							</div>
						</div>
					</div>
					<!---->
				</div>
				<div class="sum-input top-up-sum-input" data-v-0306d289="" data-v-4cf06aaf="">
					<label class="form-label input" data-v-0306d289="">Сумма платежа
						<!---->
						<div class="input-wrapper" type="number" step="1" placeholder="0 ₽" data-v-0306d289="">
							<input class="input donate_amount" type="number" step="1" placeholder="0 ₽">
							<!---->
							<!---->
						</div>
					</label>
					<div class="sum-input-icons" data-v-0306d289="">
						<svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="sum-input-icon" data-v-0306d289="">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M-3.05968e-07 7.00027C-3.30904e-07 6.42979 0.462776 5.96734 1.03364 5.96734L12.4712 5.96734L8.26431 1.76332C7.86065 1.35994 7.86065 0.705925 8.26431 0.302539C8.66797 -0.100845 9.32243 -0.100845 9.72609 0.302539L15.6973 6.26961C15.8843 6.45653 16 6.71503 16 7.00027C16 7.29253 15.8785 7.55644 15.6833 7.74434L9.7261 13.6975C9.32243 14.1008 8.66797 14.1008 8.26431 13.6975C7.86065 13.2941 7.86065 12.6401 8.26431 12.2367L12.4707 8.0332L1.03364 8.0332C0.462776 8.0332 -2.81032e-07 7.57074 -3.05968e-07 7.00027Z" fill="#423E6B"></path>
						</svg>
						<svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="sum-input-icon" data-v-0306d289="" style="transform: rotate(180deg); margin-top: 5px;">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M-3.05968e-07 7.00027C-3.30904e-07 6.42979 0.462776 5.96734 1.03364 5.96734L12.4712 5.96734L8.26431 1.76332C7.86065 1.35994 7.86065 0.705925 8.26431 0.302539C8.66797 -0.100845 9.32243 -0.100845 9.72609 0.302539L15.6973 6.26961C15.8843 6.45653 16 6.71503 16 7.00027C16 7.29253 15.8785 7.55644 15.6833 7.74434L9.7261 13.6975C9.32243 14.1008 8.66797 14.1008 8.26431 13.6975C7.86065 13.2941 7.86065 12.6401 8.26431 12.2367L12.4707 8.0332L1.03364 8.0332C0.462776 8.0332 -2.81032e-07 7.57074 -3.05968e-07 7.00027Z" fill="#423E6B"></path>
						</svg>
					</div>
					<label class="form-label input" data-v-0306d289="">Вы получите с учетом комиссии 3.00%
						<!---->
						<div class="input-wrapper completed readonly" data-v-0306d289="">
							<input class="input recieve_amount" disabled="">
							<!---->
							<!---->
						</div>
					</label>
				</div>
				<!---->
				<button class="submit-button inactive blue-4 top-up-popup-submit donate_myButton" data-v-a6b992f9="" data-v-4cf06aaf="">
				<span data-v-4cf06aaf="" style="opacity: 1;">Пополнить баланс</span></button>
				<div class="field-hint top-up-popup-submit-hint" data-v-59a5fbbf="" data-v-4cf06aaf="">Сумма поступит на ваш баланс в течение 3 мин</div>
				<form data-v-4cf06aaf=""></form>
			</div>
		</div>
	</div>
</div>`;
	return html
	
}

function withdraw_form(){
	
	let html = `<div class="form-wrapper" data-v-97f87ae1="" data-v-577bfb2e="">
		<div class="form-container" data-v-97f87ae1="">
			<div class="popup withdraw-gold-form" data-v-d6e0533f="" data-v-577bfb2e="">
				<div class="popup-header" data-v-d6e0533f="">
					<h3 data-v-95ef6d7b="" data-v-577bfb2e="">Вывести золото</h3>
					<button class="close-button" data-v-1b43f072="" data-v-d6e0533f="">
						<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-1b43f072="">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
						</svg>
					</button>
				</div>
				<div class="popup-body" data-v-d6e0533f="">
					<label class="form-label" data-v-577bfb2e="">Сумма вывода
					
						<div class="input-wrapper" type="number" placeholder="0.00 G" maxlength="22" data-v-577bfb2e="">
							<input class="input with-icon withdraw_amount" type="number" placeholder="0.00 G" maxlength="22">
							<div class="input-icon-wrapper">
								<button class="input-icon-button" data-v-aa35eebd="" data-v-577bfb2e="">
									<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-577bfb2e="">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
									</svg>
								</button>
							</div>
							
						</div>
					</label>
					<label class="form-label" data-v-577bfb2e="">Игровой ID
						
						<div class="input-wrapper" placeholder="Введите ID" type="number" step="1" data-v-577bfb2e="">
							<input class="input with-icon gaming_id"  placeholder="Введите ID" type="number" step="1">
							<div class="input-icon-wrapper">
								<button class="input-icon-button" data-v-aa35eebd="" data-v-577bfb2e="">
									<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-577bfb2e="">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
									</svg>
								</button>
							</div>
							<!---->
						</div>
					</label>
					
					
					<label class="form-label uploads_success1" style="display:none" data-v-577bfb2e="">
						
					Загруженный аватар
						<div class="avatar-preview" data-v-577bfb2e="">
						<img class="avatar-preview-image" src="" data-v-577bfb2e="">
							<div class="avatar-preview-text" data-v-577bfb2e=""> Удалить загруженный аватар
								<button data-v-577bfb2e="">
									<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-577bfb2e="">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
									</svg>
								</button>
							</div>
						</div>
					</label>
					
					
					
					<label class="form-label" data-v-577bfb2e="">
						
						Загрузите ваш аватар в игре
						<div class="image-uploader-container uploads_success2" style="display:none" data-v-d6db6527="" data-v-577bfb2e="">
							<div class="image-uploader" data-v-d6db6527="">
								<div class="image-uploader-content" data-v-d6db6527="">
									<div data-v-d6db6527="" class="">Файл загружен
										<svg width="25" height="18" viewBox="0 0 25 18" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-d6db6527="">
											<path d="M24.0986 0.922723C23.356 0.17917 22.1502 0.179639 21.4067 0.922723L9.29114 13.0387L3.90631 7.65394C3.16275 6.91038 1.95747 6.91038 1.21391 7.65394C0.470362 8.39749 0.470362 9.60277 1.21391 10.3463L7.94466 17.0771C8.3162 17.4486 8.80339 17.6349 9.29062 17.6349C9.77785 17.6349 10.2655 17.4491 10.6371 17.0771L24.0986 3.61507C24.8421 2.87203 24.8421 1.66623 24.0986 0.922723Z"></path>
										</svg>
									</div>
								</div>
								<input name="image" accept="image/*" type="file" class="image-uploader-input" data-v-d6db6527="">
							</div>
							
						</div>
						


						<div class="image-uploader-container uploads" data-v-d6db6527="" data-v-577bfb2e="">
							<div class="image-uploader" data-v-d6db6527="">
								<div class="image-uploader-content" data-v-d6db6527="">
									<div data-v-d6db6527="">Загрузить файл
										<svg viewBox="0 0 20 20" data-v-d6db6527="">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M9.424 15.5509C9.40072 15.5318 9.37842 15.5117 9.35715 15.4904L5.11491 11.2483C4.75988 10.8933 4.75988 10.3177 5.11491 9.96268C5.46994 9.60765 6.04557 9.60765 6.40054 9.96268L9.09097 12.653V1.51456C9.09097 1.0125 9.498 0.605469 10.0001 0.605469C10.5021 0.605469 10.9091 1.0125 10.9091 1.51456V12.6531L13.5998 9.96262C13.9548 9.60765 14.5305 9.60771 14.8855 9.96268C15.2405 10.3177 15.2405 10.8933 14.8855 11.2483L10.6429 15.4906C10.6424 15.4911 10.6419 15.4916 10.6413 15.492C10.6409 15.4924 10.6404 15.4928 10.6399 15.4933C10.6196 15.5134 10.5985 15.5326 10.5764 15.5508C10.5694 15.5564 10.5623 15.5616 10.5551 15.5668C10.5514 15.5695 10.5476 15.5722 10.5439 15.575C10.5405 15.5776 10.537 15.5802 10.5336 15.5828C10.5242 15.5899 10.5147 15.5971 10.5048 15.6037C10.4956 15.6099 10.4861 15.6155 10.4766 15.6211C10.4729 15.6232 10.4692 15.6254 10.4656 15.6276C10.4623 15.6296 10.4591 15.6315 10.4558 15.6335C10.4468 15.639 10.4379 15.6445 10.4285 15.6495C10.4185 15.6549 10.4082 15.6596 10.3979 15.6644C10.3945 15.666 10.3912 15.6675 10.3878 15.6691C10.3845 15.6707 10.3812 15.6723 10.3779 15.6739C10.368 15.6786 10.3581 15.6834 10.3479 15.6876C10.3387 15.6914 10.3294 15.6947 10.3201 15.698C10.316 15.6994 10.3119 15.7008 10.3078 15.7023C10.3038 15.7037 10.2999 15.7052 10.296 15.7066C10.2854 15.7105 10.2748 15.7143 10.2639 15.7177C10.2548 15.7204 10.2456 15.7226 10.2364 15.7249C10.232 15.7259 10.2277 15.727 10.2233 15.7281C10.2193 15.7291 10.2152 15.7302 10.2112 15.7312C10.2001 15.7341 10.189 15.737 10.1776 15.7392C10.1653 15.7417 10.153 15.7434 10.1406 15.7451C10.1371 15.7455 10.1336 15.746 10.1301 15.7465C10.1256 15.7472 10.1211 15.7479 10.1165 15.7486C10.1077 15.75 10.0988 15.7514 10.0897 15.7523C10.0599 15.7553 10.03 15.7569 10.0001 15.7569C9.97012 15.7569 9.94018 15.7552 9.91036 15.7523C9.90161 15.7515 9.89303 15.7501 9.88447 15.7487C9.87981 15.748 9.87516 15.7472 9.87048 15.7466C9.86646 15.746 9.86244 15.7454 9.85842 15.7449C9.84637 15.7432 9.83431 15.7416 9.82236 15.7392C9.81133 15.737 9.80053 15.7342 9.78972 15.7314C9.78567 15.7303 9.78163 15.7293 9.77757 15.7283C9.77391 15.7273 9.77024 15.7265 9.76657 15.7256C9.75639 15.7231 9.74619 15.7206 9.73612 15.7176C9.72504 15.7142 9.71428 15.7103 9.70348 15.7063C9.70005 15.7051 9.6966 15.7038 9.69315 15.7026C9.69005 15.7015 9.68696 15.7004 9.68386 15.6993C9.67325 15.6956 9.66264 15.6919 9.65218 15.6876C9.64226 15.6835 9.63263 15.6789 9.62301 15.6742C9.61965 15.6726 9.61628 15.6709 9.61291 15.6693C9.60962 15.6678 9.60632 15.6663 9.60302 15.6648C9.59247 15.6599 9.58193 15.655 9.57163 15.6495C9.55903 15.6427 9.54703 15.635 9.53479 15.6277C9.53124 15.6256 9.52768 15.6235 9.52412 15.6214C9.51448 15.6157 9.50483 15.6101 9.49545 15.6038C9.48476 15.5967 9.47455 15.5889 9.46432 15.5811C9.46139 15.5789 9.45846 15.5767 9.45551 15.5744C9.45177 15.5716 9.44799 15.5689 9.44421 15.5662C9.4374 15.5612 9.43058 15.5563 9.424 15.5509ZM18.1818 10.6064C18.1818 10.1043 18.5888 9.69727 19.0909 9.69727C19.593 9.69727 20 10.1043 20 10.6064V18.4851C20 18.9872 19.593 19.3942 19.0909 19.3942H0.909091C0.40703 19.3942 0 18.9872 0 18.4851V10.6064C0 10.1043 0.40703 9.69727 0.909091 9.69727C1.41115 9.69727 1.81818 10.1043 1.81818 10.6064V17.5761H18.1818V10.6064Z"></path>
										</svg>
									</div>
								</div>
								<input name="image" accept="image/*" id="js-file"  type="file" class="image-uploader-input" data-v-d6db6527="">
							</div>
						</div>
						
						
						<div class="field-hint" data-v-59a5fbbf="" data-v-577bfb2e="">Не используйте стандартные аватарки, измените картинку в игре на любую другую</div>
					</label>
					<label class="form-label" data-v-577bfb2e="">
					
						<span class="flex-span" data-v-16523ca0="" data-v-577bfb2e=""> Выставьте скин M110 "Z-07 M.A.R.K.S.M.A.N." обычный, НЕ статтрек <img src="https://cdn.bulldrop.net/withdrawal_skins/M110_Z-07_M.A.R.K.S.M.A.N..png" class="img mobile-withdraw-skin" data-v-a2b0236e="" data-v-577bfb2e="" style="opacity: 1;"></span>
						<div class="input-wrapper completed readonly skin-price" data-v-577bfb2e="">
							<input class="input with-icon skin-price" disabled="">
						
						</div>
						<div class="field-hint" data-v-59a5fbbf="" data-v-577bfb2e="">Выставлять ровно за эту цену</div>
					</label><img src="/templates/res/images/items/13_12.png" class="img desktop-withdraw-skin" data-v-a2b0236e="" data-v-577bfb2e="" style="opacity: 1;">
					<button class="submit-button withdraw-gold-submit-button" data-v-a6b992f9="" data-v-577bfb2e="">
						<span data-v-577bfb2e="" style="opacity: 1;">Вывести золото</span></button>
				</div>
			</div>
		</div>
	</div>`
	
	return html

}

function promocode_form(){
	
	let html = `<div class="form-wrapper" data-v-97f87ae1="" data-v-548cae99="">
	<div class="form-container" data-v-97f87ae1="">
		<div class="popup" data-v-d6e0533f="" data-v-548cae99="">
			<div class="popup-header" data-v-d6e0533f="">
				<h3 data-v-95ef6d7b="" data-v-548cae99="">Промокод</h3>
				<button class="close-button" data-v-1b43f072="" data-v-d6e0533f="">
					<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-1b43f072="">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
					</svg>
				</button>
			</div>
			<div class="popup-body" data-v-d6e0533f="">
				<div class="info" data-v-548cae99="">
					<p data-v-548cae99=""> Есть промокод? - Вбивай скорей!
						<br data-v-548cae99=""> Присоединяйся к нашей группе ВКонтакте и получи свой первый игровой бонус </p>
				</div>
				<label class="form-label" data-v-548cae99="">
	
					<div class="input-wrapper promocode-input" type="text" placeholder="Введите промокод" data-v-548cae99="">
						<input class="input promocode-input" type="text" placeholder="Введите промокод">
	
					</div>
				</label>
				<button class="submit-button promocode-submit-button" data-v-a6b992f9="" data-v-548cae99="">
					<span data-v-548cae99="" style="opacity: 1;">Получить бонус</span></button>
			</div>
		</div>
	</div>
</div>`
	
	return html

}



$(document).on("click", ".avatar-wrapper, .pc .burger-button, .mobile .burger-button-mobile", function(event){
	
	if($('.pc .burger-button').hasClass('active')){
		$('.pc .burger-button').removeClass('active');
		$('.mobile .burger-button-mobile').removeClass('active');
		$('.inner-container').next().remove()
	}else{
		
		
		
		$('.pc .burger-button').addClass('active');
		$('.mobile .burger-button-mobile').addClass('active');
		$('.inner-container').after(menu(settings))
		$('.my_modal.menu').animate({opacity: 1,transform: "translateY(20px)"}, 50 );
		
	}
	

	
	
});


function closeAll(){
	$('.my_modal').remove()
	$('.pc .burger-button, .mobile .burger-button-mobile').removeClass('active');
	$("html").removeAttr("style")
	$('.form-wrapper').remove()
}

$(document).on("click", ".close-button", function(event){
	closeAll()
});




/* Все, что связано с пополнением баланса */

// Нажимаем на кнопку "Пополнить баланс" и вызываем форму
$(document).on("click", ".control-button.donate, .my_menu_donate", function(event){
	$("html").css("overflow", "hidden");
	$('.page-footer').after(donate_form())
});

$(document).on("click", ".select-card.payment-select-card", function(event){
	$('.select-card-overlay').removeClass('selected');
	$('.select-card-overlay').html('');
	$(this).children('.select-card-overlay').addClass('selected');
	$(this).children('.select-card-overlay').html('<svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-66efa9a6=""><path fill-rule="evenodd" clip-rule="evenodd" d="M14.7933 0.287712C15.4872 0.783344 15.6479 1.74764 15.1523 2.44152L7.43238 13.2494C7.15015 13.6445 6.6985 13.8838 6.21307 13.8955C5.72765 13.9072 5.26502 13.6898 4.96415 13.3087L0.3322 7.44156C-0.196181 6.77228 -0.0819578 5.80138 0.587326 5.273C1.25661 4.74462 2.22751 4.85884 2.75589 5.52812L6.11425 9.78204L12.6395 0.64668C13.1351 -0.0472043 14.0994 -0.20792 14.7933 0.287712Z" fill="#E3E3E5"></path></svg>');
});

$(document).on("change paste keyup", ".input.donate_amount", function(event){
	
	
	let amount = $(this).val()
	let recieve_amount = (amount * 1.11111).toFixed(2)
	
	
	$('.input.recieve_amount').val(recieve_amount+' G');

	
	if(amount > 50)
		$('.form-wrapper .submit-button').removeClass('inactive');
	
	if(amount < 50)
		$('.form-wrapper .submit-button').addClass('inactive');
	
	
});

$(document).on("click", ".donate_myButton", function(event){
	if($(this).hasClass('inactive')){
		return
	}
	let amount = $('.input.donate_amount').val()
	
	if (amount < 150)
		return toastr["error"]('Минимальная сумма пополнения 150 рублей');
	
	toastr["success"]('Переадресация на платежную систему...')
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/payment/create',
        data: {
            amount: amount,
            promo: null
        },
        success: function(data) {

            if(data.response == 'success'){
                
				closeAll()
                window.location.replace(data.url)
                window.location.href = data.url
            }
            if(data.response == 'error'){
                toastr["error"](data.text)
            }
        }
    });
	
});

/* ----------- */


/* Все, что связано с выводом баланса */

// Нажимаем на кнопку "Вывести золото" и вызываем форму
$(document).on("click", ".control-button.withdraw, .my_menu_withdraw", function(event){
	$("html").css("overflow", "hidden");
	$('.page-footer').after(withdraw_form())
});

// Вводим сумму вывода
$(document).on("change paste keyup", ".withdraw_amount", function(event){
	let amount = $(this).val()
	let recieve_amount = (amount * 1.2509).toFixed(2)
	$('.input.skin-price').val(recieve_amount+' G');
});

// Загружаем фото для вывода
$(document).on("change paste keyup", ".image-uploader input[type=file]", function(event){
	if (window.FormData === undefined) {
		alert('В вашем браузере FormData не поддерживается')
	} else {
		var formData = new FormData();
		formData.append('file', $(".image-uploader input[type=file]")[0].files[0]);
 
		$.ajax({
			type: "POST",
			url: '/profile/upload',
			cache: false,
			contentType: false,
			processData: false,
			data: formData,
			dataType : 'json',
			success: function(data){
				if (data.response == 'success') {
					$(".image-uploader-container.uploads").hide()
					$(".uploads_success1").show()
					$(".uploads_success2").show()
					$(".avatar-preview-image").attr('src', '/uploads/' + data.file.file_name + '');
					
				} 
				if (data.response == 'error') {
					toastr["error"](data.text);
				}
			}
		});
	}

});

// Удаляем фотку для вывода
$(document).on("click", ".avatar-preview-text", function(event){
	$(".image-uploader-container.uploads").show()
	$(".uploads_success1").hide()
	$(".uploads_success2").hide()
	$(".image-uploader input[type=file]").val(null)
});

$(document).on("click", ".withdraw-gold-submit-button", function(event){

	let withdraw_amount = $('.withdraw_amount').val()
	let gaming_id = $('.gaming_id').val()
	
	if (withdraw_amount < 100) {
		return toastr["error"]('Вывод возможен от 100 G');
	}
	if (gaming_id.length < 7 || gaming_id.length > 10){
		return toastr["error"]('ID должен содержать 8, 9 цифр');
	}
	if (!$(".image-uploader input[type=file]")[0].files[0]){
		return toastr["error"]('Загрузите аватар!');
	}
	
	
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/profile/withdraw',
        data: {
            withdraw_amount: withdraw_amount,
        },
        success: function(data) {

            if(data.response == 'success'){
                toastr["success"]('ок')
			
            }
            if(data.response == 'error'){
                toastr["error"](data.text)
            }
        }
    });
	
});

/* -------------------------------------- */


/* Все, что связано с промокодом */

// Нажимаем на кнопку "Промокод" и вызываем форму
$(document).on("click", ".my_menu_promocode", function(event){
	event.preventDefault();
	$("html").css("overflow", "hidden");
	$('.page-footer').after(promocode_form())
});

$(document).on("click", ".promocode-submit-button", function(event){


	let promo = $('input.promocode-input').val()
	console.log(promo)
	
    $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/ajax/promo_activate',
        data: {
            promo: promo,
        },
        success: function(data) {

            if(data.response == 'success'){
				updateBalance(data.user.balance);
                toastr["success"](data.text)
			
            }
            if(data.response == 'error'){
                toastr["error"](data.text)
            }
        }
    });
	
});

/* -------------------------------------- */


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
               // $('.profileItemId-'+id).remove();
                //$('.sell-'+id).remove();
                updateBalance(data.user['balance']);

                toastr["success"](data.text);
				closeAll()
            }
            if (data.response == 'error') {
                toastr["error"](data.text);
            }
        }
    });
};

































































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



