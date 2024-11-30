

count_cheked()



$(document).on("click", ".check-all", function(event){
	
	
	$(this).toggleClass('active');
	

	let button_all_checked = $(this).hasClass('active')

	
	$('.inventory-item').each(function(i, obj) {
		
		
		let is_checked = $(this).hasClass('checked')
		
		if(button_all_checked & !is_checked){
			$(this).addClass('checked')
			$(this).children('.check').addClass('checked')
		}
		
		if(!button_all_checked & is_checked){
			$(this).removeClass('checked')
			$(this).children('.check').removeClass('checked')
		
		}
		
		
	
		
	});
	
	
	count_cheked()
	
	
});


$(document).on("click", ".inventory-item", function(event){
	
	
	$(this).toggleClass('checked');
	$(this).children('.check').toggleClass('checked');
	
	count_cheked()

	
	
});



function count_cheked(){
	let price = 0
	let count = 0
	let total = 0
	$('.inventory-item').each(function(i, obj) {
		if($(this).hasClass('checked')){
			price += parseFloat($(this).attr('data-price').replace(',','.').replace(' ',''))
			//console.log(price)
			count++
		}
		total++
	});
	
	$('.detail.total_item').text('Всего в инвентаре: '+total)
	
	if(count > 0){
		$('.detail.count_cheked').show()
		$('.sell-button').show()
		
		$('.detail.count_cheked').text('Выбрано предметов: '+count)
		$('.sell-button').html('Продать за: <span data-v-217f1746="">'+price.toFixed(2)+' G</span>')
	}else{
		$('.detail.count_cheked').hide()
		$('.sell-button').hide()
	}
}


$(document).on("click", ".sell-button", function(event){
	let ids = [];


	$('.inventory-item').each(function(i, obj) {
		if($(this).hasClass('checked')){
			id = parseFloat($(this).attr('data-id'))
			ids.push(id);
			
		
		}
	});

	
	
	
	  $.ajax({
        type: 'POST',
        dataType: 'json',
        url: '/item/sellArray',
        data: {
            ids: ids,
        },
        success: function(data) {

            if(data.response == 'success'){
				updateBalance(data.user.balance)
				
				$('.inventory-item').each(function(i, obj) {
					if($(this).hasClass('checked')){
						id = parseFloat($(this).attr('data-id'))
						$(".items-container").find("[data-id='" + id + "']").remove()
					}
				});
				count_cheked()
                toastr["success"](data.text)
            }
            if(data.response == 'error'){
                toastr["error"](data.text)
            }
        }
    });
	
	
	
	
	
	
	
	
});















