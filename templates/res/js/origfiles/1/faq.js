$(document).on("click", ".question-container", function(event){
	
    if ($(this).hasClass('opened')) {
		$(this).next().hide();
    }else{
       $(this).next().show();
    }
	
	$(this).toggleClass('opened');
	
});