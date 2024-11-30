<div class="d-flex flex-column flex-column-fluid">

							<!--begin::Content-->
							<div id="kt_app_content" class="app-content flex-column-fluid">
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
													<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Site Chat</h1>
													<!--end::Title-->
													<!--begin::Breadcrumb-->
													<ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 my-0 pt-1">
														<!--begin::Item-->
														<li class="breadcrumb-item text-muted">
															<a href="index" class="text-muted text-hover-primary">Home</a>
														</li>
														<!--end::Item-->
														<!--begin::Item-->
														<li class="breadcrumb-item">
															<span class="bullet bg-gray-400 w-5px h-2px"></span>
														</li>
														<!--end::Item-->
														<!--begin::Item-->
														<li class="breadcrumb-item text-muted">Chat</li>
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

															<!--begin::Card body-->
															<div class="card-body pt-5" id="kt_chat_contacts_body">
																<!--begin::List-->
																<div class="scroll-y me-n5 pe-5 h-200px h-lg-auto" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_toolbar, #kt_app_toolbar, #kt_footer, #kt_app_footer, #kt_chat_contacts_header" data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_contacts_body" data-kt-scroll-offset="5px" style="max-height: 325px;">
																	<!--begin::User-->
																	<div class="d-flex flex-stack py-4">
																		
																		<div class="col-xl-12 fv-row fv-plugins-icon-container">
																			<h5>Bot name</h5>
																			<input id="chat_bot_name" type="text" class="form-control form-control-solid" name="type" placeholder="Jhon">
																			<div class="fv-plugins-message-container invalid-feedback"></div>
																		</div>
																	</div>

																	<div class="d-flex flex-stack py-4">
																		
																		<div class="col-xl-12 fv-row fv-plugins-icon-container">
																			<h5>Message</h5>
																			<input id="chat_message_text" type="text" class="form-control form-control-solid" name="type" placeholder="Hello World!">
																			<div class="fv-plugins-message-container invalid-feedback"></div>
																		</div>
																	</div>

																	<button id="chat_send_btn" class="btn btn-primary" type="button" data-kt-element="send">Send</button>
																	
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
																	<div class="d-flex justify-content-center flex-column me-3">
																		<a href="#" class="fs-4 fw-bold text-gray-900 text-hover-primary me-1 mb-2 lh-1">Chat messages</a>
																	</div>
																	<!--end::User-->
																</div>
																<!--end::Title-->
												
															</div>
															<!--end::Card header-->
															<!--begin::Card body-->
															<div class="card-body" id="kt_chat_messenger_body">
																<!--begin::Messages-->
																<div class="scroll-y me-n5 pe-5 h-300px h-lg-auto" data-kt-element="messages" id="chat_message" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_app_toolbar, #kt_toolbar, #kt_footer, #kt_app_footer, #kt_chat_messenger_header, #kt_chat_messenger_footer" data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_messenger_body" data-kt-scroll-offset="5px" style="max-height: 245px;"><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haruna01 l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 19:51:14</span><span onclick="deleteChatMessage(470509)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, very good</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">prohekss l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 19:53:14</span><span onclick="deleteChatMessage(470510)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, yeah fir</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">bwungpyuh l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 19:55:14</span><span onclick="deleteChatMessage(470511)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">candyguyyy, ok see you</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">minerwatu l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 19:57:14</span><span onclick="deleteChatMessage(470512)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">tigro, yes i have</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">bwungpyuh l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 19:59:14</span><span onclick="deleteChatMessage(470513)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">prohekss, yes maybe good</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haruna01 l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:01:14</span><span onclick="deleteChatMessage(470514)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">minerwatu, i`m doing my task to</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">tigro l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:03:14</span><span onclick="deleteChatMessage(470515)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">minerwatu, wonderfull</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haroldas_t</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:03:41</span><span onclick="deleteChatMessage(470516)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">Yooooo</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">lekiwb27 l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:05:14</span><span onclick="deleteChatMessage(470517)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">some where</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">prohekss l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:07:14</span><span onclick="deleteChatMessage(470518)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, about?</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haruna01 l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:09:14</span><span onclick="deleteChatMessage(470519)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, welcome</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">minerwatu l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:11:14</span><span onclick="deleteChatMessage(470520)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">tigro, ok thanks man</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">lekiwb27 l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:13:14</span><span onclick="deleteChatMessage(470521)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">haruna01, have invest coin?</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">prohekss l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:15:14</span><span onclick="deleteChatMessage(470522)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">some for this</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">bwungpyuh l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:17:14</span><span onclick="deleteChatMessage(470523)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">prohekss, yes good i know</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haruna01 l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:19:14</span><span onclick="deleteChatMessage(470524)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">minerwatu, no i don`t make any trade now</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">minerwatu l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:21:14</span><span onclick="deleteChatMessage(470525)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">haruna01, and just make task right?</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">tigro l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:23:14</span><span onclick="deleteChatMessage(470526)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">minerwatu, yoou welcom ,how long you `ve been here ?</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">prohekss l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:25:14</span><span onclick="deleteChatMessage(470527)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, for good now</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">bwungpyuh l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:27:14</span><span onclick="deleteChatMessage(470528)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, yes maybe than</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haruna01 l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:29:14</span><span onclick="deleteChatMessage(470529)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">minerwatu, what about you</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">cobratoontje</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:31:16</span><span onclick="deleteChatMessage(470530)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, </div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">minerwatu l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:33:14</span><span onclick="deleteChatMessage(470531)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">tigro, maybe 4 or 5th years and you?</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">haruna01 l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:35:14</span><span onclick="deleteChatMessage(470532)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">hangthicamnhung, welcome</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">lekiwb27 l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:37:14</span><span onclick="deleteChatMessage(470533)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">hangthicamnhung, welcome back</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">prohekss l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:39:14</span><span onclick="deleteChatMessage(470534)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">sure thanks now</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">bwungpyuh l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:41:14</span><span onclick="deleteChatMessage(470535)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">cobratoontje, wkwkwk</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">tigro l1</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:43:14</span><span onclick="deleteChatMessage(470536)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">minerwatu, sure it`s very intresting</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">lekiwb27 l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:45:14</span><span onclick="deleteChatMessage(470537)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">for sure ye</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div><div class="d-flex justify-content-start mb-10">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column align-items-start">
                        <!--begin::User-->
                        <div class="d-flex align-items-center mb-2">
                            
                            <!--begin::Details-->
                            <div class="ms-3">
                                <span onclick="getChatUserName(this)" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">prohekss l0</span>
                                <span class="text-muted fs-7 mb-1">(BOT) 2023-05-18 20:47:14</span><span onclick="deleteChatMessage(470538)" class="btn chat_delete_msg" style="color: red; font-size: 12px;">Delete</span>
                            </div>
                            <!--end::Details-->
                        </div>
                        <!--end::User-->
                        <!--begin::Text-->
                        <div class="p-5 rounded bg-light-info text-dark fw-semibold mw-lg-400px text-start" data-kt-element="message-text">lekiwb27, really for now</div>
                        
                        <!--end::Text-->
                    </div>
                    <!--end::Wrapper-->
                </div></div>
																<!--end::Messages-->
															</div>
															<!--end::Card body-->
															
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
							</div>
							<!--end::Content-->
						</div>