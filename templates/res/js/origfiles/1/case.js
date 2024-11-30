

function win_form(item){
	
	html = `
<div class="form-wrapper" data-v-cb505d6c="">
	<div class="form-container" data-v-cb505d6c="">
		<div class="popup" data-v-d6e0533f="" data-v-e586cb79="">
			<div class="popup-header" data-v-d6e0533f="">
				<h3 data-v-95ef6d7b="" data-v-e586cb79="">Поздравляем! Ваш выигрыш!</h3>
				<button class="close-button" data-v-1b43f072="" data-v-d6e0533f="">
					<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-1b43f072="">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M7.15679 7.34321C7.64601 6.85399 8.50214 6.69674 9.16608 7.36068L13.8136 12.0082L18.4613 7.36061C19.1252 6.69667 19.9639 6.83645 20.4705 7.34314C20.9598 7.83236 21.117 8.68848 20.4531 9.35242L15.8054 14L20.453 18.6476C21.117 19.3116 20.9597 20.1677 20.4705 20.6569C19.9638 21.1636 19.1251 21.3034 18.4612 20.6394L13.8136 15.9919L9.16613 20.6394C8.50219 21.3033 7.64606 21.1461 7.15684 20.6568C6.65015 20.1502 6.51038 19.3115 7.17431 18.6476L11.8218 14.0001L7.17426 9.3525C6.51033 8.68856 6.6501 7.8499 7.15679 7.34321Z"></path>
					</svg>
				</button>
			</div>
			<div class="popup-body" data-v-d6e0533f="">
				<div class="won-items-container" data-v-7376db0c="" data-v-e586cb79="">
<div class="won-item" data-v-dd89001a="" data-v-e586cb79=""><img src="/templates/res/images/items/${item.image}" alt="${item.name}" class="inventory-item-img" data-v-7ddd4d3d="" data-v-dd89001a="" style="opacity: 1;">
						<div class="inventory-item-price" data-v-63f3c84f="" data-v-dd89001a="">${item.price_gold} G</div>
						<div class="inventory-item-name-container ${item.quality_color}" data-v-b44767cb="" data-v-dd89001a="">
							<div class="inventory-item-name" data-v-b44767cb="">${item.name}</div>
							<div class="inventory-item-quality-line" data-v-b44767cb=""></div>
						</div>
					</div>
				</div>
				<div class="submit-buttons-container-small submit-buttons-container" data-v-881ea8db="" data-v-e586cb79="">
					<button class="submit-button" data-v-a6b992f9="" data-v-e586cb79="" onclick="sell_item(${item.user_item_id})">
						<span data-v-e586cb79="" style="opacity: 1;"> Продать за <span class="price" data-v-e586cb79="">${item.price_gold} G</span></span>
					</button>
					<button onclick="closeAll()" class="submit-button" data-v-a6b992f9="" data-v-e586cb79="">Забрать <span data-v-e586cb79="">выигрыш</span></button>
				</div>
			</div>
		</div>
	</div>
 </div>`
	
	return html
	
	
}






/*

setInterval(function(){
	open_case(1)
}, 1000);

*/
function open_case(id) {
	$(`.open-button`).attr('disabled', true);

    $.ajax({
        url: "/open/open",
        data: {
            id: id
        },
        method: "POST",
        dataType: "json",
        success: function(data) {
            if(data.response == 'success') {
				
				if(!$('.control-button.volume').hasClass('off')){
					var caseOpenSound = new Audio;
					caseOpenSound.src = "/templates/res/audio/game-start.mp3", caseOpenSound.volume = .2;
					caseOpenSound.play()
				}
				updateBalance(data.user['balance'])
				
				
				
				
                $(".horizontal-roulette-inner-wrapper").html(`
				<div class="horizontal-roulette-inner-container" data-v-02c92661=""> 
					<div class="horizontal-roulette-block" data-v-27e60c71="" data-v-02c92661="">
						${data.roulette}
					</div>
				</div>
				`)
                //$(".horizontal-roulette-block.new1").html(data.roulette)

				window_width = $('.horizontal-roulette-inner-container').width() // Ширина окна, в котором крутятся кейсы

                var element = $(".horizontal-roulette-block").children()[0];
                var marginLeft = parseInt(getComputedStyle(element, true).marginLeft);
                var marginRight = parseInt(getComputedStyle(element, true).marginRight);
                var element_width = element.offsetWidth + marginLeft + marginRight;
              
       
                let posmItem = data.item.win_id;
				
				
				
				if($('.control-button.quick-open').hasClass('inactive'))
					var durationTime = 4000;
				else
					var durationTime = 500;
				
				// console.log('marginLeft: ' + marginLeft);
				// console.log('marginRight: ' + marginRight);
				// console.log('Ширина окна: ' + window_width);
                // console.log('Ширина одного элемента в рулетке: ' + element_width);
				
				
				console.log('Мой шанс: '+data.chance+' Шанс рандома: '+data.randChance+'   Цена: '+data.item.price_gold+'    max_award: '+data.max_award+'     max_asset: '+data.max_asset+'   ');
            

		
				let posmLeft = element_width  * posmItem - window_width / 2 + element_width / 2;

				$(".horizontal-roulette-inner-container").css({
					transform: 'translate3d(' + (-posmLeft) + 'px, 0px, 0px)',
					transition: 'all '+durationTime+'ms cubic-bezier(0.32, 0.64, 0.45, 1) 0s'
				})



				$(`.horizontal-roulette-item:eq('${posmItem}') .roulette-item-name-container`).attr('class', 'roulette-item-name-container '+data.item['quality_color']+'');
				$(`.horizontal-roulette-item:eq('${posmItem}') .roulette-item-name`).text(data.item['name'])
				$(`.horizontal-roulette-item:eq('${posmItem}') img`).attr('src', '/templates/res/images/items/' + data.item['image'] + '');
				


				setTimeout(function() {
					
					if(!$('.control-button.volume').hasClass('off')){
						var caseCloseSound = new Audio;
						caseCloseSound.src = "/templates/res/audio/getItem.mp3", caseCloseSound.volume = 1;
						caseCloseSound.play()
					}
					
					if(!$('.auto_sell').hasClass('inactive'))
						sell_item(data.item.user_item_id)

					if($('.auto_sell').hasClass('inactive')){
						$("html").css("overflow", "hidden");
						$("body").append(win_form(data.item));
					}
					$(`.open-button`).attr('disabled', false);
				}, durationTime+200);


            }
            if(data.response == 'error') {
				$(`.open-button`).attr('disabled', false);
                return toastr["error"](data.text);
            }
			
        }
    });
}


$(document).on("click", ".control-button.quick-open", function(event) {
	$.ajax({
		url: "/open/open_mode",
		data: {
			mode: $(this).hasClass('inactive')
		},
		method: "POST",
		dataType: "json",
		success: function(data) {
			 if (data.response == 'success') {
               // toastr["success"](data.text);
            }
            if (data.response == 'error') {
                // toastr["error"](data.text);
            }
		}
	})
	
	$(this).toggleClass('inactive');
});


$(document).on("click", ".auto_sell", function(event) {
	$.ajax({
		url: "/open/sale_mode",
		data: {
			mode: $(this).hasClass('inactive')
		},
		method: "POST",
		dataType: "json",
		success: function(data) {
			 if (data.response == 'success') {
               // toastr["success"](data.text);
            }
            if (data.response == 'error') {
                // toastr["error"](data.text);
            }
		}
	})
	
	$(this).toggleClass('inactive');
});





$(document).on("click", ".control-button.volume", function(event){

	if($(this).hasClass('off')){
		$('.control-button.volume').html('<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-4c85a6c9=""><g clip-path="url(#clip0_1194_1660)"><path d="M15.2478 15.6239C15.0047 15.6239 14.7611 15.5358 14.5686 15.3576C14.1634 14.9824 14.1391 14.3497 14.5143 13.9445C15.2578 13.1416 15.6672 12.0964 15.6672 11.0014C15.6672 9.90647 15.2578 8.86126 14.5143 8.05834C14.1391 7.65309 14.1634 7.02038 14.5686 6.64518C14.9739 6.26988 15.6066 6.2943 15.9818 6.69947C17.0686 7.87322 17.6672 9.40105 17.6672 11.0014C17.6672 12.6018 17.0686 14.1296 15.9818 15.3034C15.7847 15.5162 15.5166 15.6239 15.2478 15.6239Z"></path><path d="M17.9258 18.6084C17.6694 18.6084 17.413 18.5104 17.2177 18.3145C16.8277 17.9235 16.8286 17.2903 17.2196 16.9004C18.7984 15.3259 19.6679 13.2306 19.6679 11.0005C19.6679 8.77042 18.7984 6.67513 17.2196 5.10063C16.8286 4.71067 16.8277 4.07746 17.2177 3.68646C17.6077 3.29534 18.2408 3.29455 18.6319 3.68451C20.5897 5.63696 21.6679 8.23517 21.6679 11.0005C21.6679 13.7658 20.5897 16.364 18.6319 18.3165C18.4368 18.5111 18.1813 18.6084 17.9258 18.6084Z"></path><path d="M4.45898 7H2.16732C1.15478 7 0.333984 7.82079 0.333984 8.83333V13.1667C0.333984 14.1792 1.15478 15 2.16732 15H4.45898C4.57403 15 4.66732 14.9067 4.66732 14.7917V7.20833C4.66732 7.09329 4.57403 7 4.45898 7Z"></path><path d="M12 2.66797H11C10.7805 2.66797 10.567 2.74022 10.3926 2.87359L6.08179 6.17009C6.03025 6.20951 6 6.27068 6 6.33559V15.6671C6 15.7319 6.03025 15.7931 6.08179 15.8326L10.3926 19.129C10.567 19.2624 10.7805 19.3347 11 19.3347H12C12.5523 19.3347 13 18.887 13 18.3347V3.66797C13 3.11568 12.5523 2.66797 12 2.66797Z"></path></g><defs><clipPath id="clip0_1194_1660"><rect width="21.3333" height="21.3333" transform="translate(0.333984 0.333984)"></rect></clipPath></defs></svg>');
		
	}else{
		$('.control-button.volume').html('<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg" data-v-4c85a6c9="" style="transform: translateX(2px);"><g clip-path="url(#clip0_1074_2166)"><path d="M17.8883 9.99999L19.7254 8.16292C20.0914 7.79679 20.0914 7.20323 19.7254 6.8371C19.3592 6.47097 18.7657 6.47097 18.3995 6.8371L16.5625 8.67417L14.7254 6.8371C14.3593 6.47097 13.7657 6.47097 13.3996 6.8371C13.0335 7.20323 13.0335 7.79679 13.3996 8.16292L15.2366 9.99999L13.3996 11.8371C13.0335 12.2032 13.0335 12.7967 13.3996 13.1629C13.5826 13.346 13.8225 13.4375 14.0625 13.4375C14.3024 13.4375 14.5423 13.346 14.7254 13.1629L16.5625 11.3258L18.3995 13.1629C18.5826 13.346 18.8225 13.4375 19.0625 13.4375C19.3024 13.4375 19.5423 13.346 19.7254 13.1629C20.0915 12.7968 20.0915 12.2032 19.7254 11.8371L17.8883 9.99999Z" fill="white"></path><path d="M3.86719 6.25H1.71875C0.769492 6.25 0 7.01949 0 7.96875V12.0312C0 12.9805 0.769492 13.75 1.71875 13.75H3.86719C3.97504 13.75 4.0625 13.6625 4.0625 13.5547V6.44531C4.0625 6.33746 3.97504 6.25 3.86719 6.25Z" fill="white"></path><path d="M10.9375 2.1875H10C9.79418 2.1875 9.59406 2.25523 9.43055 2.38027L5.38918 5.47074C5.34086 5.5077 5.3125 5.56504 5.3125 5.6259V14.3741C5.3125 14.435 5.34086 14.4923 5.38918 14.5293L9.43055 17.6197C9.59406 17.7448 9.79418 17.8125 10 17.8125H10.9375C11.4553 17.8125 11.875 17.3928 11.875 16.875V3.125C11.875 2.60723 11.4553 2.1875 10.9375 2.1875Z" fill="white"></path></g><defs><clipPath id="clip0_1074_2166"><rect width="20" height="20" fill="white"></rect></clipPath></defs></svg>');
	}
	
	
	
	$.ajax({
		url: "/open/sound_mode",
		data: {
			mode: $(this).hasClass('off')
		},
		method: "POST",
		dataType: "json",
		success: function(data) {}
	})

	
	$(this).toggleClass('off');
	
});











