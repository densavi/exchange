<link rel="stylesheet" href="/templates/res/css/support_chat.css">

  <section class="chat" >

    <div class="container">

        <div class="chat__title">
            <img class="chat__img" src="/templates/res/images/profile/avatar.svg" alt="" >
            <div class="chat__title-name">Live support service</div>
            <span class="support_online" title="Support Online" style="margin-left: 22px; margin-top: -18px;">0</span>
        </div>

        <div class="chat__title chat__title-border">
            <div class="chat__title-name">Chat</div>
        </div>
        <div class="chat__container">
            <div class="chat__content" id="chat_content">


                
            </div>
            
        </div>

        <!-- <div class="chat__type-message"> -->
            <!-- <div class="chat__message-box"> -->
              <!-- <textarea class="chat__message-input"  placeholder="Type a message"></textarea> -->
                <!-- <div class="chat__message-button"> -->
                  <!-- <a href="#" class="chat__message-button-item"></a> -->
                  <!-- <form action="/ajax/SEND_SUPPORT_IMAGE" method="POST" enctype="multipart/form-data"> -->
					  <!-- <input style="display: none;" id="support_send_photo" onchange="loadFile(event)" accept="image/x-png,image/jpeg" name="support_send_image" type="file"> -->
					  <!-- <button id="send_image_post" style="display: none;"></button> -->
                  <!-- </form> -->
                <!-- </div> -->
                <!-- <img id="output"/ style="width: 100px; margin-right: 27px; border: 3px solid #007dfe; border-radius: 10px; height: 49px; display: none;"> -->
            <!-- </div> -->
            <!-- <button id="send_support" class="chat__message-send">Send</button> -->
        <!-- </div> -->
		
		
        <div class="chat__type-message">
            <div class="chat__message-box">
              <textarea class="chat__message-input"  placeholder="Type a message"></textarea>
                <div class="chat__message-button">
                  <a href="#" class="chat__message-button-item"></a>
                  <!-- <form action="/ajax/SEND_SUPPORT_IMAGE" method="POST" enctype="multipart/form-data"> -->
					  <input style="display: none;" id="support_send_photo" onchange="loadFile(event)" accept="image/x-png,image/jpeg" name="support_send_image" type="file">
					  <button id="send_image_post" style="display: none;"></button>
                  <!-- </form> -->
                </div>
                <img id="output" style="width: 100px; margin-right: 27px; border: 3px solid #007dfe; border-radius: 10px; height: 49px; display: none;">
            </div>
            <button id="send_support" class="chat__message-send">Send</button>
        </div>
		
		
		
		
    </div> 


<style>
  .support_online {
    animation: blinker 2s linear infinite;
    background: #7aff00;
    border-radius: 50px;
    padding-left: 2px;
    padding-right: 4px;
    font-size: 7px;
    color: #7aff00;
    position: absolute;
    margin-top: -32px;
    margin-left: 10px;
  }

  @keyframes blinker {
    50% {
      opacity: 0.5;
    }
  }

</style>


  </section>
