<!--begin::Content container-->
<div id="kt_app_content_container" class="app-container container-fluid">
	<div class="d-flex flex-column flex-column-fluid">
		<!--begin::Toolbar-->
		<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
			<!--begin::Toolbar container-->
			<div id="kt_app_toolbar_container" class="app-container container-xxl d-flex flex-stack">
				<!--begin::Page title-->
				<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
					<!--begin::Title-->
					<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Support</h1>
					<!--end::Title-->
					<!--begin::Breadcrumb-->
					<ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 my-0 pt-1">
						<!--begin::Item-->
						<li class="breadcrumb-item text-muted"> <a href="index" class="text-muted text-hover-primary">Home</a> </li>
						<!--end::Item-->
						<!--begin::Item-->
						<li class="breadcrumb-item"> <span class="bullet bg-gray-400 w-5px h-2px"></span> </li>
						<!--end::Item-->
						<!--begin::Item-->
						<li class="breadcrumb-item text-muted">Support</li>
						<!--end::Item-->
					</ul>
					<!--end::Breadcrumb-->
				</div>
				<!--end::Page title-->
			</div>
			<!--end::Toolbar container-->
		</div>
		<!--end::Toolbar-->
		<!--begin::Content-->
		<div id="kt_app_content" class="app-content flex-column-fluid">
			<!--begin::Content container-->
			<div id="kt_app_content_container" class="app-container container-xxl">
				<!--begin::Layout-->
				<div class="d-flex flex-column flex-lg-row">
					<!--begin::Sidebar-->
					<div class="flex-column flex-lg-row-auto w-100 w-lg-300px w-xl-400px mb-10 mb-lg-0">
						<!--begin::Contacts-->
						<div class="card card-flush">
							<!--begin::Card header-->
							<div class="card-header pt-7" id="kt_chat_contacts_header">
								<!--begin::Form-->
								<form class="w-100 position-relative" autocomplete="off">
									<!--begin::Icon-->
									<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
									<span class="svg-icon svg-icon-2 svg-icon-lg-1 svg-icon-gray-500 position-absolute top-50 ms-5 translate-middle-y">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor"></rect>
											<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="currentColor"></path>
										</svg>
									</span>
									<!--end::Svg Icon-->
									<!--end::Icon-->
									<!--begin::Input-->
									<input id="support_search_email_input" type="email" value="" class="form-control form-control-solid px-15" placeholder="user@email.com">
									<!--end::Input-->
								</form>
								<!--end::Form-->
							</div>
							<!--end::Card header-->
							<!--begin::Card body-->
							<div class="card-body pt-5" id="kt_chat_contacts_body">
								<!--begin::List-->
								<div class="scroll-y me-n5 pe-5 h-200px h-lg-auto" id="support_dialog_table" style="max-height: 492px;">
									{left_menu}
									
									<!-- <div class="rounded bg-hover-light d-flex flex-stack py-4 border-bottom border-active active" onclick="SupportOpenDialog(140768, `ROTrader`, `henhenseg@gmail.com`, `../assets/img/profile/avatar.svg`, `offline`)"> -->
										
										<!-- <div class="ms-5 d-flex align-items-center"> -->
										
											<!-- <div class="symbol symbol-45px symbol-circle" style="cursor:pointer;"> <img alt="Pic" src="../assets/img/profile/avatar.svg"> </div> -->
											<!-- <div class="ms-5"> <span style="cursor: pointer;" class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2">ROTrader</span> -->
												<!-- <div class="fw-semibold text-muted">henhenseg@gmail.com</div> -->
											<!-- </div> -->
								
										<!-- </div> -->
									<!-- </div> -->
									<!-- <div class="separator separator-dashed d-none" wfd-invisible="true"></div> -->
									
									
									
								
								</div>
								<!--end::List-->
							</div>
							<!--end::Card body-->
						</div>
						<!--end::Contacts-->
					</div>
					<!--end::Sidebar-->
					
		<!--begin::Content-->
													<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
														<!--begin::Messenger-->
														<div class="card" id="kt_chat_messenger">
															<!--begin::Card header-->
															<div class="card-header" id="kt_chat_messenger_header">
																<!--begin::Title-->
																<div class="card-title">
																	<!--begin::User-->
																	<span id="user_profile_img_block" style="margin-right: 10px; display: none">
																		<div class="symbol symbol-45px symbol-circle">
																			<img id="sp_user_profile_img" alt="Pic" src="">
																			<div class="symbol-badge bg-success start-100 top-100 border-4 h-10px w-10px ms-n2 mt-n2" style="display: none;" id="sp_user_online_status"></div>
																		</div>
																	</span>
																	<div id="support_info_block" class="d-flex justify-content-center flex-column me-3" style="display: none !important;">
																	    
																		<a target="_blank" id="a_open_user" href="#" class="fs-4 fw-bold text-gray-900 text-hover-primary me-1 mb-1 lh-1"></a>
																		<!--begin::Info-->
																		<div class="mb-0 lh-1">
																			<span id="a_open_user_email" class="fs-7 fw-semibold text-muted"></span>
																		</div>
																		<!--end::Info-->
																		<button id="remove_support_dialog" class="btn btn-danger" type="button" data-kt-element="send" style="position: absolute; right: 10px;">Remove dialog</button>
																	</div>
																	<!--end::User-->
																</div>
																<!--end::Title-->
												
															</div>
															<!--end::Card header-->
															<!--begin::Card body-->
															<div class="card-body" id="kt_chat_messenger_body">
																<!--begin::Messages-->
<div class="scroll-y me-n5 pe-5 h-300px h-lg-auto" id="support_chat_block" style="max-height: 644px!important;">

	<h6 style="color: #565674; text-align: center; font-size: 13px;margin-bottom: 25%;
	margin-top: 25%;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-rocket-takeoff mb-2" viewBox="0 0 16 16">
	<path d="M9.752 6.193c.599.6 1.73.437 2.528-.362.798-.799.96-1.932.362-2.531-.599-.6-1.73-.438-2.528.361-.798.8-.96 1.933-.362 2.532Z"/>
	<path d="M15.811 3.312c-.363 1.534-1.334 3.626-3.64 6.218l-.24 2.408a2.56 2.56 0 0 1-.732 1.526L8.817 15.85a.51.51 0 0 1-.867-.434l.27-1.899c.04-.28-.013-.593-.131-.956a9.42 9.42 0 0 0-.249-.657l-.082-.202c-.815-.197-1.578-.662-2.191-1.277-.614-.615-1.079-1.379-1.275-2.195l-.203-.083a9.556 9.556 0 0 0-.655-.248c-.363-.119-.675-.172-.955-.132l-1.896.27A.51.51 0 0 1 .15 7.17l2.382-2.386c.41-.41.947-.67 1.524-.734h.006l2.4-.238C9.005 1.55 11.087.582 12.623.208c.89-.217 1.59-.232 2.08-.188.244.023.435.06.57.093.067.017.12.033.16.045.184.06.279.13.351.295l.029.073a3.475 3.475 0 0 1 .157.721c.055.485.051 1.178-.159 2.065Zm-4.828 7.475.04-.04-.107 1.081a1.536 1.536 0 0 1-.44.913l-1.298 1.3.054-.38c.072-.506-.034-.993-.172-1.418a8.548 8.548 0 0 0-.164-.45c.738-.065 1.462-.38 2.087-1.006ZM5.205 5c-.625.626-.94 1.351-1.004 2.09a8.497 8.497 0 0 0-.45-.164c-.424-.138-.91-.244-1.416-.172l-.38.054 1.3-1.3c.245-.246.566-.401.91-.44l1.08-.107-.04.039Zm9.406-3.961c-.38-.034-.967-.027-1.746.163-1.558.38-3.917 1.496-6.937 4.521-.62.62-.799 1.34-.687 2.051.107.676.483 1.362 1.048 1.928.564.565 1.25.941 1.924 1.049.71.112 1.429-.067 2.048-.688 3.079-3.083 4.192-5.444 4.556-6.987.183-.771.18-1.345.138-1.713a2.835 2.835 0 0 0-.045-.283 3.078 3.078 0 0 0-.3-.041Z"/>
	<path d="M7.009 12.139a7.632 7.632 0 0 1-1.804-1.352A7.568 7.568 0 0 1 3.794 8.86c-1.102.992-1.965 5.054-1.839 5.18.125.126 3.936-.896 5.054-1.902Z"/>
	</svg><br>Please, select the dialog</h6>

</div>
																<!--end::Messages-->
															</div>
															<!--end::Card body-->
															<!--begin::Card footer-->
															<div class="card-footer pt-4" id="kt_chat_messenger_footer">
																<!--begin::Input-->
																<textarea class="form-control form-control-solid mb-3 tasupadd" rows="2" data-kt-element="input" placeholder="Type a message" id="Support_ChatMessage"></textarea>
																<!--end::Input-->
																<!--begin:Toolbar-->
																<div class="d-flex flex-stack">
																	<!--begin::Actions-->
																	
																<!-- <div class="d-flex align-items-center me-2"> -->
																	
																	<!-- <form id="send_image_form" style="display: none;" action="ajax/ajax_panel?get_action=SP_SEND_SUPPORT_IMAGE" enctype="multipart/form-data" method="post"> -->
																		<!-- <span id="a_open_image_upload" class="btn btn-sm btn-icon btn-light-primary me-1" type="button" data-bs-toggle="tooltip" aria-label="Coming soon" data-bs-original-title="Coming soon" data-kt-initialized="1"> -->
																			<!-- <i class="bi bi-paperclip fs-3"></i> -->
																		<!-- </span> -->
																		  <!-- <div class="input-group"> -->
																			  <!-- <div class="custom-file"> -->
																				  <!-- <input style="display: none;" accept="image/x-png,image/jpeg" name="sp_support_image" type="file" class="custom-file-input" id="sp_send_support_image"> -->
																			  <!-- </div> -->
																		  <!-- </div> -->
																		  <!-- <input type="hidden" name="sp_sup_id" id="sp_sup_id" value=""> -->
																		  <!-- <input type="submit" style="display: none;" id="hidden_submit_button"> -->
																	<!-- </form> -->
																<!-- </div> -->
																	
																	
																	<!--end::Actions-->
																	<!--begin::Send-->
																	<button id="Support_ChatMessage_send" class="btn btn-primary" type="button" data-kt-element="send">Send</button>
																	<!--end::Send-->
																</div>
																<!--end::Toolbar-->
															</div>
															<!--end::Card footer-->
														</div>
														<!--end::Messenger-->
													</div>
													<!--end::Content-->			
					
					
					
				</div>
				<!--end::Layout-->
			</div>
			<!--end::Content container-->
		</div>
		<!--end::Content-->
	</div>
</div>
<!--end::Content container-->




		<input type="hidden" value="" id="refresh_user_id">
		<input type="hidden" id="support_user_id_hidden" value="">

		<input type="hidden" id="support_msg_id" value="">
		<input type="hidden" id="support_msg_user" value="">





<script>
  setInterval(function() {
    var hiddenUserId = $("#support_user_id_hidden").val();
    if(hiddenUserId != '') {
      $("#support_chat_block").load("ajax/GET_PANEL_SUPPORT?support_user_id=" + hiddenUserId);
    }
  }, 5000)

  setInterval(function() {
    var refresh_user_id = $("#refresh_user_id").val();
    if(refresh_user_id != "" ) {
      $("#support_chat_block").load("ajax/GET_PANEL_SUPPORT?support_user_id=" + refresh_user_id);
      setTimeout(function() {
        var div = $("#support_chat_block");
        div.scrollTop(div.prop('scrollHeight')); 
      }, 500);
    }

  }, 1000);

  $("#a_open_image_upload").click(function(e) {
  	e.preventDefault();

  	$("#sp_send_support_image").click();
  })
</script>