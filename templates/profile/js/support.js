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


$("#support_send_photo").change(function(){
	if (window.FormData === undefined) {
		alert('В вашем браузере FormData не поддерживается')
	} else {
		var support_send_photo = $("#support_send_photo").val();
        $(".file-upload-wrapper").attr("data-text", support_send_photo);
		
		
		var formData = new FormData();
		formData.append('file', $("#support_send_photo")[0].files[0]);
 
		// $.ajax({
			// type: "POST",
			// url: '/ajax/UPDATE_PERSONAL_PHOTO1',
			// cache: false,
			// contentType: false,
			// processData: false,
			// data: formData,
			// dataType : 'json',
			// success: function(response){
				// if (response.response == 'success') {
					// //$("#support_send_photo").hide();
					// $('.user_photo_setting').attr('src', response.photo);
				// } else {
					// $('#result22').html(response.error);
				// }
			// }
		// });
	}
});




      $("#send_support").on("click", function(e) {
        e.preventDefault();

        var send_photo = $("#support_send_photo").val();

        // if(send_photo != "") {
          // $("#send_support").attr("disabled", true);
          // $("#send_support").css("opacity", "0.1");
          // $("#send_image_post").click();
        // } else {
			var s_text = $(".chat__message-input").val();
			var formData = new FormData();
			formData.append('file', $("#support_send_photo")[0].files[0]);
			formData.append('support_text', $(".chat__message-input").val());
			


          if(s_text == "") {
              noti("The text field cannot be empty", "error");
          } else if(s_text.length > 500) {
              noti("You have exceeded the character limit (500)", "error");
          } else {
              $.ajax({
                url: "/ajax/SEND_SUPPORT_MESSAGE",
                type: "POST",
                // data: {
                  // support_text: s_text
                // },
				cache: false,
				contentType: false,
				processData: false,
				data: formData,
				dataType : 'json',
                success: function(response) {
                  if(response == "1") {
                    noti("Message sent successfully", "success");
                    $(".chat__message-input").val("");
                    // load messages
                    $("#chat_content").load("/ajax/REFRESH_SUPPORT");
                    // auto scroll top
                    setTimeout(function() {
                      var div = $(".chat__container");
                      div.scrollTop(div.prop('scrollHeight')); 
                    }, 300);
					
					$("#output").css("display", "none");
					$("#support_send_photo").val('')
					
					var output = document.getElementById('output');
					output.src = '';
		  
		  
                  } else if(response == "2") {
                    noti("You have exceeded the character limit (500)", "error");
                  } else if(response == "3") {
                    noti("The text field cannot be empty", "error");
                  } else if(response == "33") {
                    noti("You are temporarily unable to send a message due to the flood!", "error");
                  } else {
                    noti("An unexpected error has occurred, please try again", "error");
                  }

                }
              })
          }
        // }
      });



      // load messages
      $("#chat_content").load("/ajax/REFRESH_SUPPORT");
      // auto scroll top
      setTimeout(function() {
        var div = $(".chat__container");
        div.scrollTop(div.prop('scrollHeight')); 
      }, 300);
      // refresh messages
      setInterval(function() {
        $("#chat_content").load("/ajax/REFRESH_SUPPORT");
      }, 5000);

      if(($("#count_support_message").length > 0)) {
        $("#count_support_message").remove();
      }
   
   
   
        $(".chat__message-button-item").on("click", function() {
            $("#support_send_photo").click();

        });

        var loadFile = function(event) {
          $("#output").css("display", "block");
          var output = document.getElementById('output');
          output.src = URL.createObjectURL(event.target.files[0]);
          output.onload = function() {
            URL.revokeObjectURL(output.src) // free memory
          }
        };
		
		
		