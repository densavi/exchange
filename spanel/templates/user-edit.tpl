<div class="d-flex flex-column flex-column-fluid">
		<!--begin::Toolbar-->
		<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
			<!--begin::Toolbar container-->
			<div id="kt_app_toolbar_container" class="app-container container-xxl d-flex flex-stack">
				<!--begin::Page title-->
				<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
					<!--begin::Title-->
					<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">User Profile</h1>
					<!--end::Title-->
					<!--begin::Breadcrumb-->
					<ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 my-0 pt-1">
						<!--begin::Item-->
						<li class="breadcrumb-item text-muted">
							<a class="text-muted text-hover-primary">Home</a>
						</li>
						<!--end::Item-->
						<!--begin::Item-->
						<li class="breadcrumb-item">
							<span class="bullet bg-gray-400 w-5px h-2px"></span>
						</li>
						<!--end::Item-->
						<!--begin::Item-->
						<li class="breadcrumb-item text-muted">User Profile</li>
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
				<!--begin::Navbar-->
				<div class="card mb-6">
					<div class="card-body pt-9 pb-0">
						<!--begin::Details-->
						<div class="d-flex flex-wrap flex-sm-nowrap">
							<!--begin: Pic-->
							<div class="me-7 mb-4">
								<div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
									<img src="{photo}" alt="image">
											{online_status}
									</div>
							</div>
							<!--end::Pic-->
							<!--begin::Info-->
							<div class="flex-grow-1">
								<!--begin::Title-->
								<div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
									<!--begin::User-->
									<div class="d-flex flex-column">
										<!--begin::Name-->
										<div class="d-flex align-items-center mb-2">
											<a class="text-gray-900 fs-2 fw-bold me-1">{username}</a>
											<a>
												<!--begin::Svg Icon | path: icons/duotune/general/gen026.svg-->
												<span class="svg-icon svg-icon-1 svg-icon-primary" title="KYC Verified">
													<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
														<path d="M10.0813 3.7242C10.8849 2.16438 13.1151 2.16438 13.9187 3.7242V3.7242C14.4016 4.66147 15.4909 5.1127 16.4951 4.79139V4.79139C18.1663 4.25668 19.7433 5.83365 19.2086 7.50485V7.50485C18.8873 8.50905 19.3385 9.59842 20.2758 10.0813V10.0813C21.8356 10.8849 21.8356 13.1151 20.2758 13.9187V13.9187C19.3385 14.4016 18.8873 15.491 19.2086 16.4951V16.4951C19.7433 18.1663 18.1663 19.7433 16.4951 19.2086V19.2086C15.491 18.8873 14.4016 19.3385 13.9187 20.2758V20.2758C13.1151 21.8356 10.8849 21.8356 10.0813 20.2758V20.2758C9.59842 19.3385 8.50905 18.8873 7.50485 19.2086V19.2086C5.83365 19.7433 4.25668 18.1663 4.79139 16.4951V16.4951C5.1127 15.491 4.66147 14.4016 3.7242 13.9187V13.9187C2.16438 13.1151 2.16438 10.8849 3.7242 10.0813V10.0813C4.66147 9.59842 5.1127 8.50905 4.79139 7.50485V7.50485C4.25668 5.83365 5.83365 4.25668 7.50485 4.79139V4.79139C8.50905 5.1127 9.59842 4.66147 10.0813 3.7242V3.7242Z" fill="currentColor"></path>
														<path d="M14.8563 9.1903C15.0606 8.94984 15.3771 8.9385 15.6175 9.14289C15.858 9.34728 15.8229 9.66433 15.6185 9.9048L11.863 14.6558C11.6554 14.9001 11.2876 14.9258 11.048 14.7128L8.47656 12.4271C8.24068 12.2174 8.21944 11.8563 8.42911 11.6204C8.63877 11.3845 8.99996 11.3633 9.23583 11.5729L11.3706 13.4705L14.8563 9.1903Z" fill="white"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</a>
										</div>
										<!--end::Name-->
										<!--begin::Info-->
										<div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
											<a class="d-flex align-items-center text-gray-400  me-5 mb-2">
												<!--begin::Svg Icon | path: icons/duotune/communication/com006.svg-->
												
												<span class="svg-icon svg-icon-4 me-1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M21 19H3C2.4 19 2 18.6 2 18V6C2 5.4 2.4 5 3 5H21C21.6 5 22 5.4 22 6V18C22 18.6 21.6 19 21 19Z" fill="currentColor"></path>
														<path d="M21 5H2.99999C2.69999 5 2.49999 5.10005 2.29999 5.30005L11.2 13.3C11.7 13.7 12.4 13.7 12.8 13.3L21.7 5.30005C21.5 5.10005 21.3 5 21 5Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->{email}											</a>
											<a class="d-flex align-items-center text-gray-400 me-5 mb-2">
												<!--begin::Svg Icon | path: icons/duotune/general/gen018.svg-->
												<span class="svg-icon svg-icon-4 me-1">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M18.0624 15.3453L13.1624 20.7453C12.5624 21.4453 11.5624 21.4453 10.9624 20.7453L6.06242 15.3453C4.56242 13.6453 3.76242 11.4453 4.06242 8.94534C4.56242 5.34534 7.46242 2.44534 11.0624 2.04534C15.8624 1.54534 19.9624 5.24534 19.9624 9.94534C20.0624 12.0453 19.2624 13.9453 18.0624 15.3453Z" fill="currentColor"></path>
														<path d="M12.0624 13.0453C13.7193 13.0453 15.0624 11.7022 15.0624 10.0453C15.0624 8.38849 13.7193 7.04535 12.0624 7.04535C10.4056 7.04535 9.06241 8.38849 9.06241 10.0453C9.06241 11.7022 10.4056 13.0453 12.0624 13.0453Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
												
												{location}
												
											</a>
											
										</div>
										<!--end::Info-->
									</div>
									<!--end::User-->
									<!--begin::Actions-->
									<div class="d-flex my-4">
										<a href="#" class="btn btn-primary gradbuttonsp" data-bs-toggle="modal" data-bs-target="#kt_send_support_message">Send support message</a>
									</div>
									<!--end::Actions-->
								</div>
								<!--end::Title-->
								<!--begin::Stats-->
								<div class="d-flex flex-wrap flex-stack">
									<!--begin::Wrapper-->
									<div class="d-flex flex-column flex-grow-1 pe-8">
										<!--begin::Stats-->
										<div class="d-flex flex-wrap">
											<!--begin::Stat-->
											<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
												<!--begin::Number-->
												<div class="d-flex align-items-center">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
													<!-- <span class="svg-icon svg-icon-3 svg-icon-success me-2"> -->
														<!-- <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> -->
															<!-- <rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="currentColor"></rect> -->
															<!-- <path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="currentColor"></path> -->
														<!-- </svg> -->
													<!-- </span> -->
													<!--end::Svg Icon-->
													<div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="4500" data-kt-countup-prefix="$" data-kt-initialized="1">${b_USD}</div>
												</div>
												<!--end::Number-->
												<!--begin::Label-->
												<div class="fw-semibold fs-6 text-gray-400">Total balance</div>
												<!--end::Label-->
											</div>
											<!--end::Stat-->
											<!--begin::Stat--
											
											<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
												<div class="d-flex align-items-center">
													<span class="svg-icon svg-icon-3 svg-icon-success me-2">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="currentColor"></rect>
															<path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="currentColor"></path>
														</svg>
													</span>
													<div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="4500" data-kt-countup-prefix="$" data-kt-initialized="1">$-1</div>
												</div>
												<div class="fw-semibold fs-6 text-gray-400">Deposits</div>
												
											</div>
											<!--end::Stat-->
											<!--begin::Stat--
											<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
												
												<div class="d-flex align-items-center">
													
													<span class="svg-icon svg-icon-3 svg-icon-success me-2">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="currentColor"></rect>
															<path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="currentColor"></path>
														</svg>
													</span>
													
													<div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="2" data-kt-initialized="1">-2</div>
												</div>
											
												<div class="fw-semibold fs-6 text-gray-400">Auth count</div>
									
											</div>
											<!--end::Stat-->
											<!--begin::Stat-->
											<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
												<!--begin::Number-->
												<div class="d-flex align-items-center">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
													<!-- <span class="svg-icon svg-icon-3 svg-icon-success me-2"> -->
														<!-- <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> -->
															<!-- <rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="currentColor"></rect> -->
															<!-- <path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="currentColor"></path> -->
														<!-- </svg> -->
													<!-- </span> -->
													<!--end::Svg Icon-->
													<div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="0" data-kt-countup-prefix="%" data-kt-initialized="1">{today_logs}</div>
												</div>
												<!--end::Number-->
												<!--begin::Label-->
												<div class="fw-semibold fs-6 text-gray-400">Today logs</div>
												<!--end::Label-->
											</div>
											<!--end::Stat-->
										</div>
										<!--end::Stats-->
									</div>
									<!--end::Wrapper-->
									<div class="d-flex align-items-center w-200px w-sm-300px flex-column mt-3">
										<div class="d-flex justify-content-between w-100 mt-auto mb-2">
											<span class="fw-semibold fs-6 text-gray-400">Uses a domain</span>
											<span class="fw-bold fs-6"><span style="color: #21b921;">https://</span>{register_site}</span>
										</div>
										<div class="h-5px mx-3 w-100 bg-light mb-3">
											<div class="bg-success rounded h-5px" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<!--end::Stats-->
							</div>
							<!--end::Info-->
						</div>
						<!--end::Details-->
						<!--begin::Navs-->
						<ul class="nav nav-stretch nav-line-tabs nav-line-tabs-2x border-transparent fs-5 fw-bold">
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu active" onclick="openTab('u_overview', this)">Overview</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_logs', this)">Logs</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_transactions', this)">Transactions [-]</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_addresses', this)">Addresses [-]</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_balance', this)">Balance</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_alert', this)">Alert Pop-Up [-]</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_withdraw_verify', this)">Withdraw verify [-]</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_verify_amount', this)">Verify amount [-]</a>
							</li>
							<!--end::Nav item-->
							<!--begin::Nav item-->
							<li class="nav-item mt-2">
								<a class="nav-link text-active-primary ms-0 me-10 py-5 user_edit_menu" onclick="openTab('u_kyc_request', this)">KYC Request [-]</a>
							</li>
							<!--end::Nav item-->
						</ul>
						<!--begin::Navs-->
					</div>
				</div>
				<!--end::Navbar-->

				<!--begin::Timeline-->
				<div class="card active_card" id="u_overview" style="display: flex;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Overview</h3>
						</div>
						<!--end::Title-->
						<!--begin::Toolbar-->
						<!-- <div class="card-toolbar m-0">
							<ul class="nav nav-tabs nav-line-tabs nav-stretch fs-6 border-0 fw-bold" role="tablist">
								<li class="nav-item" role="presentation">
									<a id="kt_activity_today_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_today" aria-selected="false" tabindex="-1">Today</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_activity_week_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_week" aria-selected="false" tabindex="-1">Week</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_activity_month_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_month" aria-selected="false" tabindex="-1">Month</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_activity_year_tab" class="nav-link justify-content-center text-active-gray-800 text-hover-gray-800 active" data-bs-toggle="tab" role="tab" href="#kt_activity_year" aria-selected="true">2022</a>
								</li>
							</ul>
						</div> -->
						<!--end::Toolbar-->
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<!--begin::Tab panel-->
							<!-- <div id="kt_activity_today" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_activity_today_tab">
								<div class="timeline">
									Todayyy
								</div>
							</div>
							<div id="kt_activity_week" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_activity_week_tab">
								<div class="timeline">
									Weeeeeek
								</div>
							</div>
							<div id="kt_activity_month" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_activity_month_tab">
								<div class="timeline">
									Monthhh
								</div>
							</div> -->
							<div class="card-body p-0 tab-pane fade show active">
								<div class="timeline">

									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Username</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="inputFirstName" class="form-control form-control-solid" placeholder="" value="{username}" disabled="">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Email</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="userEmailInput" class="form-control form-control-solid" placeholder="" value="{email}" disabled="">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>
									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Password</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="userPasswordInput" class="form-control form-control-solid" placeholder="" value="{password}" disabled="">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Phone</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="userPhoneInput" class="form-control form-control-solid" placeholder="" value="{phone}" disabled="">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>
									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">IP at registration</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input class="form-control form-control-solid" placeholder="" id="inputFirstName" value="{reg_ip}" disabled="">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Date registration</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input class="form-control form-control-solid" placeholder="" id="inputFirstName" value="{register_date}" disabled="">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>
									<div class="row g-9 mb-5">
																				<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="global_checked" type="checkbox" {global_checked}>
												<span style="color: red;" class="fw-semibold ps-2 fs-6">Global Ban [Р]</span>
												<div class="fv-plugins-message-container valid-feedback">Красный экран смерти. Весь сайт будет не доступен. Написать в саппорт нельзя</div>
											
											</label>
											<div class="fv-plugins-message-container invalid-feedback"></div>
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="chat_checked" type="checkbox" {chat_checked}>
												<span class="fw-semibold ps-2 fs-6">Chat Ban [Р]</span>
												<div class="fv-plugins-message-container valid-feedback">Запрещает писать в чат на странице <a href="/trading" target="_blank">трейдинга</a></div>
												
											</label>
											<div class="fv-plugins-message-container invalid-feedback"></div>
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="transfer_checked" type="checkbox" {transfer_checked}>
												<span class="fw-semibold ps-2 fs-6">Transfer Ban [Р]</span>
												<div class="fv-plugins-message-container valid-feedback">Запрещает отправлять бабки другим юзерам на странице <a href="/profile/transfer" target="_blank">Трансфера</a></div>
											
											</label>
											<div class="fv-plugins-message-container invalid-feedback"></div>
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="trading_checked" type="checkbox" {trading_checked}>
												<span class="fw-semibold ps-2 fs-6">Trading Ban [Р]</span>
												<div class="fv-plugins-message-container valid-feedback">Запрещает торговать на странице <a href="/trading" target="_blank">трейдинга</a></div>
												</label>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="support_checked" type="checkbox" {support_checked}>
												<span class="fw-semibold ps-2 fs-6">Support Ban [Р]</span>
												<div class="fv-plugins-message-container valid-feedback">Запрещает писать в саппорт на странице <a href="/profile/support" target="_blank">Саппорт</a></div>
												
											
											</label>
											<div class="fv-plugins-message-container invalid-feedback"></div>
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="invest_checked" type="checkbox" {invest_checked}>
												<span class="fw-semibold ps-2 fs-6">Invest Ban [Р]</span>
												<div class="fv-plugins-message-container valid-feedback">Запрещает вкидывать бабки под % на странице <a href="/profile/invest" target="_blank">Инвестиции</a></div>
											</label>
											<div class="fv-plugins-message-container invalid-feedback"></div>
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="status_2fa_checked" type="checkbox" {status_2fa_checked}>
												<span style="color: green;" class="fw-semibold ps-2 fs-6">Enable 2FA [-]</span>
											</label>
											<div class="fv-plugins-message-container invalid-feedback"></div>
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="chat_enter_checked" type="checkbox" {chat_enter_checked}>
												<span style="color: green;" class="fw-semibold ps-2 fs-6">Allowed to write in chat [-]</span>
											</label>
										</div>
										<!--end::Col-->
									</div>
									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5 mt-12">
												<input class="form-check-input" id="bonus_checked" type="checkbox" disabled="" {bonus_checked}>
												<span style="color: orange;" class="fw-semibold ps-2 fs-6">Active first deposit bonus</span>
											</label>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Bonus (%)</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="bonusPercentInput" class="form-control form-control-solid" placeholder="" value="{first_deposit_bonus}" type="number">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>
									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="w_true_checked" type="checkbox" {w_true_checked}>
												<span style="color: blue;" class="fw-semibold ps-2 fs-6">Fake Withdraw [Pending modal]</span>
											</label>
										</div>
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
												<input class="form-check-input" id="w_true_confirmed_checked" type="checkbox" {w_true_confirmed_checked}>
												<span style="color: #19af55;" class="fw-semibold ps-2 fs-6">Fake Withdraw [Confirmed modal]</span>
												<div class="fv-plugins-message-container invalid-feedback">Если включено - будет действовать не смотря на остальные настройки</div>
											</label>
										</div>
									</div>

									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="fs-5 fw-semibold mb-2 mt-5">Withdraw error</label>
											
											<textarea cols="47" rows="30" data-height="300" data-provider="summernote" name="post_body" id="userDefaultErrorArea">{withdraw_error}</textarea>
											<script>
				                              $('#userDefaultErrorArea').summernote({
				                                placeholder: 'Enter withdraw..',
				                                tabsize: 6,
				                                height: 220,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['view', ['link', 'codeview', 'help']]
				                                ]
				                              });
				                            </script>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="fs-5 fw-semibold mb-2 mt-5">Trading error [-]</label>
											
											<textarea cols="47" rows="30" data-height="300" data-provider="summernote" name="post_body" id="userDefaultErrorArea2">{trading_error}<br></textarea>
				                            

										   <script>
				                              $('#userDefaultErrorArea2').summernote({
				                                placeholder: 'Enter trading..',
				                                tabsize: 6,
				                                height: 220,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['view', ['link', 'codeview', 'help']]
				                                ]
				                              });
				                            </script>
										</div>
										<!--end::Col-->
									</div>

									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="fs-5 fw-semibold mb-2 mt-5">Chat error [-]</label>
											<textarea cols="47" rows="30" data-height="300" data-provider="summernote" name="post_body" id="userDefaultErrorArea3">{chat_error}</textarea>
				                            
											<script>
				                              $('#userDefaultErrorArea3').summernote({
				                                placeholder: 'Enter chat..',
				                                tabsize: 6,
				                                height: 220,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['view', ['link', 'codeview', 'help']]
				                                ]
				                              });
				                            </script>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="fs-5 fw-semibold mb-2 mt-5">P2P error [-]</label>
											<textarea cols="47" rows="30" data-height="300" data-provider="summernote" name="post_body" id="userDefaultErrorArea4">{p2p_error}</textarea>
											
											<script>
				                              $('#userDefaultErrorArea4').summernote({
				                                placeholder: 'Enter P2P..',
				                                tabsize: 6,
				                                height: 220,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['view', ['link', 'codeview', 'help']]
				                                ]
				                              });
				                            </script>
										</div>
										<!--end::Col-->
									</div>

									<input type="hidden" id="userEditId" value="{user_id}">
									<span class="btn btn-sm btn-primary me-2 mt-10" id="userSaveInformation">Save all changes</span>
									<a onclick="location.reload()" class="btn btn-sm btn-light me-2 mt-10" id="kt_user_follow_button"><span class="indicator-label">Reset</span></a>


								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->
				<!--begin::Timeline-->
				<div class="card" id="u_logs" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Logs</h3>
						</div>
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<div class="card-body p-0 tab-pane fade show active">
								<div class="timeline">
									<!--begin::Table container-->
									<div class="table-responsive">
										<!--begin::Table-->
										<table class="table table-row-bordered table-row-gray-100 align-middle gs-0 gy-3 table-hover">
											<!--begin::Table head-->
											<thead>
												<tr class="fw-bold text-muted">
														<th class="min-w-120px">Actions</th>
													<th class="min-w-120px">IP</th>
													<th class="min-w-120px">Date</th>
												</tr>
											</thead>
											<!--end::Table head-->
											<!--begin::Table body-->
											<tbody>
												{logs}
												
												 
											</tbody>
											<!--end::Table body-->
										</table>
										<!--end::Table-->
									</div>
									<!--end::Table container-->
								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->
				<!--begin::Timeline-->
				<div class="card" id="u_transactions" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Transactions</h3>
						</div>
						<!--end::Title-->
						<!--begin::Toolbar-->
						<div class="card-toolbar m-0">
							<ul class="nav nav-tabs nav-line-tabs nav-stretch fs-6 border-0 fw-bold" role="tablist">
								<li class="nav-item" role="presentation">
									<a id="kt_activity_today_tab" class="nav-link justify-content-center text-active-gray-800 active" data-bs-toggle="tab" role="tab" href="#kt_activity_today" aria-selected="true" tabindex="-1">Deposits</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_activity_week_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_week" aria-selected="false" tabindex="-1">Withdraws</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_activity_month_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_activity_month" aria-selected="false" tabindex="-1">Invest</a>
								</li>
							</ul>
						</div>
						<!--end::Toolbar-->
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<!--begin::Tab panel-->
							<div id="kt_activity_today" class="card-body p-0 tab-pane fade show active" role="tabpanel" aria-labelledby="kt_activity_today_tab">
								<div class="timeline">
									
									<!--begin::Table container-->
									<div class="table-responsive">
										<!--begin::Table-->
										<table class="table table-row-bordered table-row-gray-100 align-middle gs-0 gy-3">
											<!--begin::Table head-->
											<thead>
												<tr class="fw-bold text-muted">
													<th class="min-w-150px">Status</th>
													<th class="min-w-140px">Amount</th>
													<th class="min-w-120px">Address</th>
													<th class="min-w-120px">Date</th>
												</tr>
											</thead>
											<!--end::Table head-->
											<!--begin::Table body-->
											<tbody>

					                        


												

											</tbody>
											<!--end::Table body-->
										</table>
										<!--end::Table-->
									</div>
									<!--end::Table container-->

								</div>
							</div>
							<div id="kt_activity_week" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_activity_week_tab">
								<div class="timeline">
									<!--begin::Table container-->
									<div class="table-responsive">
										<!--begin::Table-->
										<table class="table table-row-bordered table-row-gray-100 align-middle gs-0 gy-3">
											<!--begin::Table head-->
											<thead>
												<tr class="fw-bold text-muted">
													<th class="min-w-150px">Status</th>
													<th class="min-w-140px">Amount</th>
													<th class="min-w-120px">To the address</th>
													<th class="min-w-120px">Memo</th>
													<th class="min-w-120px">Date</th>
												</tr>
											</thead>
											<!--end::Table head-->
											<!--begin::Table body-->
											<tbody>

					                        <tr>
													
															<td>
																<span class="badge badge-secondary addtobadgestat">Completed</span>
															</td>
															<td class="text-dark fs-6">2 eth</td>
															<td class="text-dark fs-6">0x5323BF3F84f5C3003FB81531E6Daa7980A762250</td>
															<td class="text-dark fs-6">0</td>
															<td class="text-dark fs-6">2023-04-27 21:09:20</td>
															<td class="text-dark fw-bold text-hover-primary fs-6"><span class="btn btn-light-dark btn-sm px-4 me-2" onclick="editWithdraw(283007)" data-bs-toggle="modal" data-bs-target="#kt_edit_withdraw_transaction">Edit</span><span class="btn btn-light-danger btn-sm px-4 me-2" onclick="deleteWithdraw(283007)">Delete</span></td>
															
														  </tr>

												

											</tbody>
											<!--end::Table body-->
										</table>
										<!--end::Table-->
									</div>
									<!--end::Table container-->
								</div>
							</div>
							<div id="kt_activity_month" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_activity_month_tab">
								<div class="timeline">
									<!--begin::Table container-->
									<div class="table-responsive">
										<!--begin::Table-->
										<table class="table table-row-bordered table-row-gray-100 align-middle gs-0 gy-3">
											<!--begin::Table head-->
											<thead>
												<tr class="fw-bold text-muted">
													<th class="min-w-150px">Plan</th>
													<th class="min-w-140px">Amount</th>
													<th class="min-w-120px">Profit</th>
													<th class="min-w-120px">Total</th>
													<th class="min-w-120px">Created</th>
													<th class="min-w-120px">Status</th>
												</tr>
											</thead>
											<!--end::Table head-->
											<!--begin::Table body-->
											<tbody>

					                        <tr>
													
															<td>
																<span class="addtobadgestat badge badge-light-primary">3 month</span>
															</td>
															<td class="text-dark  fs-6">31.2152 ltc</td>
															<td class="text-dark  fs-6">78.038000 ltc</td>
															<td class="text-dark  fs-6">109.253200 ltc</td>
															<td class="text-dark  fs-6">2023-04-27 21:07:13</td>
															<td class="text-dark  fs-6">active</td>
															
														  </tr>

											</tbody>
											<!--end::Table body-->
										</table>
										<!--end::Table-->
									</div>
									<!--end::Table container-->
								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->
				<!--begin::Timeline-->
				<div class="card" id="u_addresses" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Deposit addresses</h3>
						</div>
						<!--end::Title-->
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<!--begin::Tab panel-->
							<div class="card-body p-0 tab-pane fade show active">
								<div class="timeline">
									
													                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc ADA mr-5"></i> ADA</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="DdzFFzCqrhsiMqx5GcXtv4LctZLyGSaXCjUHvzKP7CFQKNbdwAvn5MkT1CXgrCX5KEp5kkDigkF5uajjeXx7op8Hfqmxht51wUNSfEjL" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc BCH mr-5"></i> BCH</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="qp08tdq26hn8t0gvr7r42rz7vucdq9242qmyq0d4v5" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc BNB mr-5"></i> BNB</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="bnb1hnay88qmuctpt443htge4ktk5aq26rvet2w4d4" type="text" disabled="">
				                        				                        <input class="form-control input-type-1" value="Memo: 10000094306" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc BNB mr-5"></i> BNB20</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0x18e866a6b3f3a68dbb84e9c4872709f2953cacb4" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc BTC mr-5"></i> BTC</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="3CiydkyXqStGyretvGdVGWA9kR2HZPxPQr" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc BTG mr-5"></i> BTG</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="ANF2qbx7veBxNvLcpKirQxDknqvnACaZpa" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc BUSD mr-5"></i> BUSD</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0x033f198e6e142db666879e6ef904995d9b0a75f6" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc DASH mr-5"></i> DASH</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="XuXCbSj1eRERpRFTcM4cjgf4xxrR9irr1m" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc DOGE mr-5"></i> DOGE</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="DQE3h8zeHgZWfPsYHbgoZaE2kYUg4KqP9u" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc EOS mr-5"></i> EOS</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="iltbnuvenfmc" type="text" disabled="">
				                        				                        <input class="form-control input-type-1" value="Memo: 10000088289" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc ETC mr-5"></i> ETC</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0x06ccb52ab9c2d167cbb04afb4a233d975e9d4306" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc ETH mr-5"></i> ETH</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0xce7a28940508c5db1a02302b8a47ec4704ca623c" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc LINK mr-5"></i> LINK</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0x0ccf763e05beda79e933f9cc90ecb02c64943d96" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc LTC mr-5"></i> LTC</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="LZzVVv3mMtBwfEu6Aych1rcaxda6sdYNSP" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc SHIB mr-5"></i> SHIB</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0x30ce53adb12990a01f03e33c74e8ad05d5116f65" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc SOL mr-5"></i> SOL</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="3xjCHT56UEGKgCu8osJi7w7bkLowmwJ4zLpSGNzwwrcg" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc TRX mr-5"></i> TRX</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="THvqfHhCS7Jtg6jFMnvDDXtoTrvVaW7AAL" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc USDT mr-5"></i> USDT</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0x9a1f5867f2f6f2f68c9d2b0dd3235372cde3aa49" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc USDT mr-5"></i> USDTBEP</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="0xf21bc41ec98e834371b9859a96577469f17df87a" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc USDT mr-5"></i> USDTTRC</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="TPXPj5eATYRToKbgTyiKt5b9dPBQCeHFAU" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc XLM mr-5"></i> XLM</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="GDYLFW5IXD7FFN6YMF5UU2PSDUPLCZFFMBTKEM352A54XSHQDHWLIX33" type="text" disabled="">
				                        				                        <input class="form-control input-type-1" value="Memo: 10000090819" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc XMR mr-5"></i> XMR</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="4JAQdrzRt2jUECxCCnKd2LPcgkQVZeSaQLTDsQ933WcBFRd2dKs2tgaDEgX3AUpquXCtiZLENFH7V9pJQmnSqHvYBHuXf1yyU2aHFQWJLy" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc XTZ mr-5"></i> XTZ</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="tz1NHotw2xnUVM7DpbBDJWgHrEzajGsPBi9d" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  				                    <br>
				                    <div class="form-group">
				                      <label for="inputFirstName" class="col-lg-2 control-label"><i class="cc ZEC mr-5"></i> ZEC</label>

				                      <div class="col-lg-10">
				                        <input class="form-control input-type-1" value="t1gWvkUTmojzDqC94iMJhiJqsU9dz8FncKy" type="text" disabled="">
				                        				                      </div>
				                    </div>
				                  
								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->
				<!--begin::Timeline-->
				<div class="card" id="u_balance" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Balance</h3>
						</div>
						<!--end::Title-->
						<!--begin::Toolbar-->
						<div class="card-toolbar m-0">
							<ul class="nav nav-tabs nav-line-tabs nav-stretch fs-6 border-0 fw-bold" role="tablist">
								<li class="nav-item" role="presentation">
									<a id="kt_balance_view_tab" class="nav-link justify-content-center text-active-gray-800 active" data-bs-toggle="tab" role="tab" href="#kt_balance_view" aria-selected="true" tabindex="-1">View</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_balance_send_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_balance_send" aria-selected="false" tabindex="-1">Send [-]</a>
								</li>
							</ul>
						</div>
						<!--end::Toolbar-->
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<!--begin::Tab panel-->
							<div id="kt_balance_view" class="card-body p-0 tab-pane fade show active" role="tabpanel" aria-labelledby="kt_balance_view_tab">
								<div class="timeline">
									{balance_list}
								</div>
							</div>
							<div id="kt_balance_send" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_balance_send_tab">
								<div class="timeline">
									

									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Wallet</label>
											<!--end::Label-->
											<select id="userBalanceWallet" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select form-select-solid select2-hidden-accessible" data-select2-id="select2-data-userBalanceWallet" tabindex="-1" aria-hidden="true" data-kt-initialized="1">
												
					                              <option value="btc" data-select2-id="select2-data-2-umv8">Bitcoin</option>

					                            
					                              <option value="eth">Ethereum</option>

					                            
					                              <option value="ltc">Litecoin</option>

					                            
					                              <option value="usdt">USDT ERC-20</option>

					                            
					                              <option value="trx">Tron</option>

					                            
					                              <option value="usdc">USD Coin ERC-20</option>

					                            
					                              <option value="bnb">BNB BEP-2</option>

					                            
					                              <option value="bch">Bitcoin Cash</option>

					                            
					                              <option value="doge">Dogecoin</option>

					                            
					                              <option value="xmr">Monero</option>

					                            
					                              <option value="xlm">Stellar</option>

					                            
					                              <option value="xtz">Tezos</option>

					                            
					                              <option value="eos">EOS</option>

					                            
					                              <option value="shib">SHIBA INU BEP-20</option>

					                            
					                              <option value="link">Chainlink ERC-20</option>

					                            
					                              <option value="btg">Bitcoin Gold</option>

					                            
					                              <option value="etc">Ethereum Classic</option>

					                            
					                              <option value="xrp">Ripple</option>

					                            
					                              <option value="ada">Cardano</option>

					                            
					                              <option value="dash">Dash</option>

					                            
					                              <option value="zec">Zcash</option>

					                            
					                              <option value="sol">SOL</option>

					                            
					                              <option value="luna">LUNA</option>

					                            
					                              <option value="ape">APE</option>

					                            
					                              <option value="lunc">LUNC</option>

					                            
					                              <option value="dot">DOT</option>

					                            
					                              <option value="matic">MATIC</option>

					                            
					                              <option value="near">NEAR</option>

					                            
					                              <option value="twt">TWT</option>

					                            
					                              <option value="rvn">RVN</option>

					                            
					                              <option value="woo">WOO</option>

					                            
					                              <option value="paxg">PAXG</option>

					                            
					                              <option value="alpaca">ALPACA</option>

					                            
					                              <option value="gno">GNO</option>

					                            
					                              <option value="gal">GAL</option>

					                            
					                              <option value="astr">ASTR</option>

					                            
					                              <option value="nexo">NEXO</option>

					                            
					                              <option value="loka">LOKA</option>

					                            
					                              <option value="fil">FIL</option>

					                            
					                              <option value="dnt">DNT</option>

					                            
					                              <option value="ocean">OCEAN</option>

					                            
					                              <option value="comp">COMP</option>

					                            
					                              <option value="tomo">TOMO</option>

					                            
					                              <option value="pundix">PUNDIX</option>

					                            
					                              <option value="key">KEY</option>

					                            
					                              <option value="vite">VITE</option>

					                            
					                              <option value="hnt">HNT</option>

					                            
					                              <option value="bat">BAT</option>

					                            
					                              <option value="gala">GALA</option>

					                            
					                              <option value="rad">RAD</option>

					                            
					                              <option value="ankr">ANKR</option>

					                            
					                              <option value="wing">WING</option>

					                            
					                              <option value="bake">BAKE</option>

					                            
					                              <option value="strax">STRAX</option>

					                            
					                              <option value="perp">PERP</option>

					                            
					                              <option value="epx">EPX</option>

					                            
					                              <option value="yfi">YFI</option>

					                            
					                              <option value="nmr">NMR</option>

					                            
					                              <option value="pyr">PYR</option>

					                            
					                              <option value="srm">SRM</option>

					                            
					                              <option value="bond">BOND</option>

					                            
					                              <option value="jst">JST</option>

					                            
					                              <option value="powr">POWR</option>

					                            
					                              <option value="fida">FIDA</option>

					                            
					                              <option value="voxel">VOXEL</option>

					                            
					                              <option value="mana">MANA</option>

					                            
					                              <option value="rare">RARE</option>

					                            
					                              <option value="adx">ADX</option>

					                            
					                              <option value="ont">ONT</option>

					                            
					                              <option value="sand">SAND</option>

					                            
					                              <option value="cocos">COCOS</option>

					                            
					                              <option value="alice">ALICE</option>

					                            
					                              <option value="mtl">MTL</option>

					                            
					                              <option value="flm">FLM</option>

					                            
					                              <option value="mdx">MDX</option>

					                            
					                              <option value="qtum">QTUM</option>

					                            
					                              <option value="bnt">BNT</option>

					                            
					                              <option value="xvs">XVS</option>

					                            
					                              <option value="bico">BICO</option>

					                            
					                              <option value="uma">UMA</option>

					                            
					                              <option value="loca">LOCA</option>

					                            
					                              <option value="clv">CLV</option>

					                            
					                              <option value="akro">AKRO</option>

					                            
					                              <option value="lsk">LSK</option>

					                            
					                              <option value="dock">DOCK</option>

					                            
					                              <option value="rep">REP</option>

					                            
					                              <option value="beam">BEAM</option>

					                            
					                              <option value="cfx">CFX</option>

					                            
					                              <option value="celo">CELO</option>

					                            
					                              <option value="iotx">IOTX</option>

					                            
					                              <option value="crv">CRV</option>

					                            
					                              <option value="mith">MITH</option>

					                            
					                              <option value="celr">CELR</option>

					                            
					                              <option value="oxt">OXT</option>

					                            
					                              <option value="fio">FIO</option>

					                            
					                              <option value="scrt">SCRT</option>

					                            
					                              <option value="audio">AUDIO</option>

					                            
					                              <option value="chz">CHZ</option>

					                            
					                              <option value="busd">BUSD</option>

					                            
					                              <option value="arb">ARB</option>

					                            
					                              <option value="mln">MLN</option>

					                            
					                              <option value="atm">ATM</option>

					                            
					                              <option value="orn">ORN</option>

					                            
					                              <option value="bifi">BIFI</option>

					                            
					                              <option value="multi">MULTI</option>

					                            
					                              <option value="ctsi">CTSI</option>

					                            
					                              <option value="farm">FARM</option>

					                            
					                              <option value="asr">ASR</option>

					                            
					                              <option value="trb">TRB</option>

					                            
					                              <option value="wbtc">WBTC</option>

					                            
					                              <option value="ghst">GHST</option>

					                            
					                              <option value="for">FOR</option>

					                            
					                              <option value="xno">XNO</option>

					                            
					                              <option value="ong">ONG</option>

					                            
					                              <option value="ark">ARK</option>

					                            
					                              <option value="wan">WAN</option>

					                            
					                              <option value="bts">BTS</option>

					                            
					                              <option value="fun">FUN</option>

					                            
					                              <option value="snt">SNT</option>

					                            
					                              <option value="dia">DIA</option>

					                            
					                              <option value="alcx">ALCX</option>

					                            
					                              <option value="hard">HARD</option>

					                            
					                              <option value="glm">GLM</option>

					                            
					                              <option value="exp">EXP</option>

					                            
					                              <option value="cream">CREAM</option>

					                            
					                              <option value="qcc">QCC</option>

					                            
					                              <option value="wnxm">WNXM</option>

					                            
					                              <option value="troy">TROY</option>

					                            
					                              <option value="stpt">STPT</option>

					                            
					                              <option value="firo">FIRO</option>

					                            
					                              <option value="front">FRONT</option>

					                            
					                              <option value="wrx">WRX</option>

					                            
					                              <option value="dcr">DCR</option>

					                            
					                              <option value="cos">COS</option>

					                            
					                              <option value="mbl">MBL</option>

					                            
					                              <option value="sun">SUN</option>

					                            
					                              <option value="xvg">XVG</option>

					                            											</select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-1-72e5" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-userBalanceWallet-container" aria-controls="select2-userBalanceWallet-container"><span class="select2-selection__rendered" id="select2-userBalanceWallet-container" role="textbox" aria-readonly="true" title="Bitcoin">Bitcoin</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Method of enrollment</label>
											<!--end::Label-->
											<select id="userBalanceMethod" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select form-select-solid select2-hidden-accessible" data-select2-id="select2-data-userBalanceMethod" tabindex="-1" aria-hidden="true" data-kt-initialized="1">
												<option value="deposit" data-select2-id="select2-data-4-1ar2">Deposit</option>
					                            <option value="withdraw">Withdraw</option>
					                            <option value="bonus">Bonus</option>
					                            <option value="set">Set</option>
											</select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-3-34bt" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-userBalanceMethod-container" aria-controls="select2-userBalanceMethod-container"><span class="select2-selection__rendered" id="select2-userBalanceMethod-container" role="textbox" aria-readonly="true" title="Deposit">Deposit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>

									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Amount</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="userBalanceAmount" class="form-control form-control-solid" placeholder="0.5" type="number">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Date</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="userBalanceDate" class="form-control form-control-solid" placeholder="" value="2023-05-18 17:44:22">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback"></div>
										</div>
										<!--end::Col-->
									</div>
									<div class="mb-0">
										<button type="submit" href="#" class="btn btn-primary w-100" id="userBalanceSave">
											<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
											<span class="svg-icon svg-icon-3">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="currentColor"></path>
													<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="currentColor"></path>
												</svg>
											</span>
											<!--end::Svg Icon-->Save
										</button>
									</div>


								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->

				<!--begin::Timeline-->
				<div class="card" id="u_alert" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Send alert pop-up</h3>
						</div>
						<!--end::Title-->
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<!--begin::Tab panel-->
							<div class="card-body p-0 tab-pane fade show active">
								<div class="timeline">
									
									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<label class="fs-5 fw-semibold mb-2 mt-5">Message</label>
											<textarea cols="47" rows="30" data-height="300" data-provider="summernote" name="post_body" id="userSendMessage" style="display: none;"></textarea><div class="note-editor note-frame"><div class="note-dropzone"><div class="note-dropzone-message"></div></div><div class="note-toolbar" role="toolbar"><div class="note-btn-group note-style"><div class="note-btn-group"><button type="button" class="note-btn dropdown-toggle" tabindex="-1" data-toggle="dropdown" aria-label="Style"><i class="note-icon-magic"></i> <span class="note-icon-caret"></span></button><div class="note-dropdown-menu dropdown-style" role="list" aria-label="Style"><a class="note-dropdown-item" href="#" data-value="p" role="listitem" aria-label="p"><p>Normal</p></a><a class="note-dropdown-item" href="#" data-value="blockquote" role="listitem" aria-label="blockquote"><blockquote>Quote</blockquote></a><a class="note-dropdown-item" href="#" data-value="pre" role="listitem" aria-label="pre"><pre>Code</pre></a><a class="note-dropdown-item" href="#" data-value="h1" role="listitem" aria-label="h1"><h1>Header 1</h1></a><a class="note-dropdown-item" href="#" data-value="h2" role="listitem" aria-label="h2"><h2>Header 2</h2></a><a class="note-dropdown-item" href="#" data-value="h3" role="listitem" aria-label="h3"><h3>Header 3</h3></a><a class="note-dropdown-item" href="#" data-value="h4" role="listitem" aria-label="h4"><h4>Header 4</h4></a><a class="note-dropdown-item" href="#" data-value="h5" role="listitem" aria-label="h5"><h5>Header 5</h5></a><a class="note-dropdown-item" href="#" data-value="h6" role="listitem" aria-label="h6"><h6>Header 6</h6></a></div></div></div><div class="note-btn-group note-font"><button type="button" class="note-btn note-btn-bold" tabindex="-1" aria-label="Bold (CTRL+B)"><i class="note-icon-bold"></i></button><button type="button" class="note-btn note-btn-underline" tabindex="-1" aria-label="Underline (CTRL+U)"><i class="note-icon-underline"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Remove Font Style (CTRL+\)"><i class="note-icon-eraser"></i></button></div><div class="note-btn-group note-color"><div class="note-btn-group note-color note-color-all"><button type="button" class="note-btn note-current-color-button" tabindex="-1" aria-label="Recent Color" data-backcolor="#FFFF00" data-forecolor="#000000"><i class="note-icon-font note-recent-color" style="background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);"></i></button><button type="button" class="note-btn dropdown-toggle" tabindex="-1" data-toggle="dropdown" aria-label="More Color"> <span class="note-icon-caret"></span></button><div class="note-dropdown-menu" role="list"><div class="note-palette"><div class="note-palette-title">Background Color</div><div><button type="button" class="note-color-reset btn btn-light btn-default" data-event="backColor" data-value="transparent">Transparent</button></div><div class="note-holder" data-event="backColor"><!-- back colors --><div class="note-color-palette"><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#000000" data-event="backColor" data-value="#000000" data-title="Black" aria-label="Black" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#424242" data-event="backColor" data-value="#424242" data-title="Tundora" aria-label="Tundora" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#636363" data-event="backColor" data-value="#636363" data-title="Dove Gray" aria-label="Dove Gray" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#9C9C94" data-event="backColor" data-value="#9C9C94" data-title="Star Dust" aria-label="Star Dust" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#CEC6CE" data-event="backColor" data-value="#CEC6CE" data-title="Pale Slate" aria-label="Pale Slate" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#EFEFEF" data-event="backColor" data-value="#EFEFEF" data-title="Gallery" aria-label="Gallery" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#F7F7F7" data-event="backColor" data-value="#F7F7F7" data-title="Alabaster" aria-label="Alabaster" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="White" aria-label="White" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#FF0000" data-event="backColor" data-value="#FF0000" data-title="Red" aria-label="Red" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FF9C00" data-event="backColor" data-value="#FF9C00" data-title="Orange Peel" aria-label="Orange Peel" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFF00" data-event="backColor" data-value="#FFFF00" data-title="Yellow" aria-label="Yellow" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#00FF00" data-event="backColor" data-value="#00FF00" data-title="Green" aria-label="Green" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#00FFFF" data-event="backColor" data-value="#00FFFF" data-title="Cyan" aria-label="Cyan" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#0000FF" data-event="backColor" data-value="#0000FF" data-title="Blue" aria-label="Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#9C00FF" data-event="backColor" data-value="#9C00FF" data-title="Electric Violet" aria-label="Electric Violet" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FF00FF" data-event="backColor" data-value="#FF00FF" data-title="Magenta" aria-label="Magenta" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#F7C6CE" data-event="backColor" data-value="#F7C6CE" data-title="Azalea" aria-label="Azalea" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFE7CE" data-event="backColor" data-value="#FFE7CE" data-title="Karry" aria-label="Karry" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFEFC6" data-event="backColor" data-value="#FFEFC6" data-title="Egg White" aria-label="Egg White" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#D6EFD6" data-event="backColor" data-value="#D6EFD6" data-title="Zanah" aria-label="Zanah" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#CEDEE7" data-event="backColor" data-value="#CEDEE7" data-title="Botticelli" aria-label="Botticelli" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#CEE7F7" data-event="backColor" data-value="#CEE7F7" data-title="Tropical Blue" aria-label="Tropical Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#D6D6E7" data-event="backColor" data-value="#D6D6E7" data-title="Mischka" aria-label="Mischka" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#E7D6DE" data-event="backColor" data-value="#E7D6DE" data-title="Twilight" aria-label="Twilight" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#E79C9C" data-event="backColor" data-value="#E79C9C" data-title="Tonys Pink" aria-label="Tonys Pink" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFC69C" data-event="backColor" data-value="#FFC69C" data-title="Peach Orange" aria-label="Peach Orange" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFE79C" data-event="backColor" data-value="#FFE79C" data-title="Cream Brulee" aria-label="Cream Brulee" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#B5D6A5" data-event="backColor" data-value="#B5D6A5" data-title="Sprout" aria-label="Sprout" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#A5C6CE" data-event="backColor" data-value="#A5C6CE" data-title="Casper" aria-label="Casper" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#9CC6EF" data-event="backColor" data-value="#9CC6EF" data-title="Perano" aria-label="Perano" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#B5A5D6" data-event="backColor" data-value="#B5A5D6" data-title="Cold Purple" aria-label="Cold Purple" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#D6A5BD" data-event="backColor" data-value="#D6A5BD" data-title="Careys Pink" aria-label="Careys Pink" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#E76363" data-event="backColor" data-value="#E76363" data-title="Mandy" aria-label="Mandy" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#F7AD6B" data-event="backColor" data-value="#F7AD6B" data-title="Rajah" aria-label="Rajah" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFD663" data-event="backColor" data-value="#FFD663" data-title="Dandelion" aria-label="Dandelion" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#94BD7B" data-event="backColor" data-value="#94BD7B" data-title="Olivine" aria-label="Olivine" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#73A5AD" data-event="backColor" data-value="#73A5AD" data-title="Gulf Stream" aria-label="Gulf Stream" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#6BADDE" data-event="backColor" data-value="#6BADDE" data-title="Viking" aria-label="Viking" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#8C7BC6" data-event="backColor" data-value="#8C7BC6" data-title="Blue Marguerite" aria-label="Blue Marguerite" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#C67BA5" data-event="backColor" data-value="#C67BA5" data-title="Puce" aria-label="Puce" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#CE0000" data-event="backColor" data-value="#CE0000" data-title="Guardsman Red" aria-label="Guardsman Red" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#E79439" data-event="backColor" data-value="#E79439" data-title="Fire Bush" aria-label="Fire Bush" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#EFC631" data-event="backColor" data-value="#EFC631" data-title="Golden Dream" aria-label="Golden Dream" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#6BA54A" data-event="backColor" data-value="#6BA54A" data-title="Chelsea Cucumber" aria-label="Chelsea Cucumber" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#4A7B8C" data-event="backColor" data-value="#4A7B8C" data-title="Smalt Blue" aria-label="Smalt Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#3984C6" data-event="backColor" data-value="#3984C6" data-title="Boston Blue" aria-label="Boston Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#634AA5" data-event="backColor" data-value="#634AA5" data-title="Butterfly Bush" aria-label="Butterfly Bush" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#A54A7B" data-event="backColor" data-value="#A54A7B" data-title="Cadillac" aria-label="Cadillac" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#9C0000" data-event="backColor" data-value="#9C0000" data-title="Sangria" aria-label="Sangria" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#B56308" data-event="backColor" data-value="#B56308" data-title="Mai Tai" aria-label="Mai Tai" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#BD9400" data-event="backColor" data-value="#BD9400" data-title="Buddha Gold" aria-label="Buddha Gold" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#397B21" data-event="backColor" data-value="#397B21" data-title="Forest Green" aria-label="Forest Green" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#104A5A" data-event="backColor" data-value="#104A5A" data-title="Eden" aria-label="Eden" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#085294" data-event="backColor" data-value="#085294" data-title="Venice Blue" aria-label="Venice Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#311873" data-event="backColor" data-value="#311873" data-title="Meteorite" aria-label="Meteorite" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#731842" data-event="backColor" data-value="#731842" data-title="Claret" aria-label="Claret" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#630000" data-event="backColor" data-value="#630000" data-title="Rosewood" aria-label="Rosewood" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#7B3900" data-event="backColor" data-value="#7B3900" data-title="Cinnamon" aria-label="Cinnamon" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#846300" data-event="backColor" data-value="#846300" data-title="Olive" aria-label="Olive" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#295218" data-event="backColor" data-value="#295218" data-title="Parsley" aria-label="Parsley" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#083139" data-event="backColor" data-value="#083139" data-title="Tiber" aria-label="Tiber" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#003163" data-event="backColor" data-value="#003163" data-title="Midnight Blue" aria-label="Midnight Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#21104A" data-event="backColor" data-value="#21104A" data-title="Valentino" aria-label="Valentino" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#4A1031" data-event="backColor" data-value="#4A1031" data-title="Loulou" aria-label="Loulou" data-toggle="button" tabindex="-1"></button></div></div></div><div><button type="button" class="note-color-select btn btn-light btn-default" data-event="openPalette" data-value="backColorPicker">Select</button><input type="color" id="backColorPicker" class="note-btn note-color-select-btn" value="#FFFF00" data-event="backColorPalette"></div><div class="note-holder-custom" id="backColorPalette" data-event="backColor"><div class="note-color-palette"><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="backColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button></div></div></div></div><div class="note-palette"><div class="note-palette-title">Text Color</div><div><button type="button" class="note-color-reset btn btn-light btn-default" data-event="removeFormat" data-value="foreColor">Reset to default</button></div><div class="note-holder" data-event="foreColor"><!-- fore colors --><div class="note-color-palette"><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#000000" data-event="foreColor" data-value="#000000" data-title="Black" aria-label="Black" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#424242" data-event="foreColor" data-value="#424242" data-title="Tundora" aria-label="Tundora" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#636363" data-event="foreColor" data-value="#636363" data-title="Dove Gray" aria-label="Dove Gray" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#9C9C94" data-event="foreColor" data-value="#9C9C94" data-title="Star Dust" aria-label="Star Dust" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#CEC6CE" data-event="foreColor" data-value="#CEC6CE" data-title="Pale Slate" aria-label="Pale Slate" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#EFEFEF" data-event="foreColor" data-value="#EFEFEF" data-title="Gallery" aria-label="Gallery" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#F7F7F7" data-event="foreColor" data-value="#F7F7F7" data-title="Alabaster" aria-label="Alabaster" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="White" aria-label="White" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#FF0000" data-event="foreColor" data-value="#FF0000" data-title="Red" aria-label="Red" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FF9C00" data-event="foreColor" data-value="#FF9C00" data-title="Orange Peel" aria-label="Orange Peel" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFF00" data-event="foreColor" data-value="#FFFF00" data-title="Yellow" aria-label="Yellow" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#00FF00" data-event="foreColor" data-value="#00FF00" data-title="Green" aria-label="Green" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#00FFFF" data-event="foreColor" data-value="#00FFFF" data-title="Cyan" aria-label="Cyan" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#0000FF" data-event="foreColor" data-value="#0000FF" data-title="Blue" aria-label="Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#9C00FF" data-event="foreColor" data-value="#9C00FF" data-title="Electric Violet" aria-label="Electric Violet" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FF00FF" data-event="foreColor" data-value="#FF00FF" data-title="Magenta" aria-label="Magenta" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#F7C6CE" data-event="foreColor" data-value="#F7C6CE" data-title="Azalea" aria-label="Azalea" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFE7CE" data-event="foreColor" data-value="#FFE7CE" data-title="Karry" aria-label="Karry" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFEFC6" data-event="foreColor" data-value="#FFEFC6" data-title="Egg White" aria-label="Egg White" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#D6EFD6" data-event="foreColor" data-value="#D6EFD6" data-title="Zanah" aria-label="Zanah" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#CEDEE7" data-event="foreColor" data-value="#CEDEE7" data-title="Botticelli" aria-label="Botticelli" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#CEE7F7" data-event="foreColor" data-value="#CEE7F7" data-title="Tropical Blue" aria-label="Tropical Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#D6D6E7" data-event="foreColor" data-value="#D6D6E7" data-title="Mischka" aria-label="Mischka" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#E7D6DE" data-event="foreColor" data-value="#E7D6DE" data-title="Twilight" aria-label="Twilight" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#E79C9C" data-event="foreColor" data-value="#E79C9C" data-title="Tonys Pink" aria-label="Tonys Pink" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFC69C" data-event="foreColor" data-value="#FFC69C" data-title="Peach Orange" aria-label="Peach Orange" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFE79C" data-event="foreColor" data-value="#FFE79C" data-title="Cream Brulee" aria-label="Cream Brulee" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#B5D6A5" data-event="foreColor" data-value="#B5D6A5" data-title="Sprout" aria-label="Sprout" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#A5C6CE" data-event="foreColor" data-value="#A5C6CE" data-title="Casper" aria-label="Casper" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#9CC6EF" data-event="foreColor" data-value="#9CC6EF" data-title="Perano" aria-label="Perano" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#B5A5D6" data-event="foreColor" data-value="#B5A5D6" data-title="Cold Purple" aria-label="Cold Purple" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#D6A5BD" data-event="foreColor" data-value="#D6A5BD" data-title="Careys Pink" aria-label="Careys Pink" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#E76363" data-event="foreColor" data-value="#E76363" data-title="Mandy" aria-label="Mandy" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#F7AD6B" data-event="foreColor" data-value="#F7AD6B" data-title="Rajah" aria-label="Rajah" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFD663" data-event="foreColor" data-value="#FFD663" data-title="Dandelion" aria-label="Dandelion" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#94BD7B" data-event="foreColor" data-value="#94BD7B" data-title="Olivine" aria-label="Olivine" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#73A5AD" data-event="foreColor" data-value="#73A5AD" data-title="Gulf Stream" aria-label="Gulf Stream" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#6BADDE" data-event="foreColor" data-value="#6BADDE" data-title="Viking" aria-label="Viking" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#8C7BC6" data-event="foreColor" data-value="#8C7BC6" data-title="Blue Marguerite" aria-label="Blue Marguerite" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#C67BA5" data-event="foreColor" data-value="#C67BA5" data-title="Puce" aria-label="Puce" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#CE0000" data-event="foreColor" data-value="#CE0000" data-title="Guardsman Red" aria-label="Guardsman Red" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#E79439" data-event="foreColor" data-value="#E79439" data-title="Fire Bush" aria-label="Fire Bush" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#EFC631" data-event="foreColor" data-value="#EFC631" data-title="Golden Dream" aria-label="Golden Dream" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#6BA54A" data-event="foreColor" data-value="#6BA54A" data-title="Chelsea Cucumber" aria-label="Chelsea Cucumber" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#4A7B8C" data-event="foreColor" data-value="#4A7B8C" data-title="Smalt Blue" aria-label="Smalt Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#3984C6" data-event="foreColor" data-value="#3984C6" data-title="Boston Blue" aria-label="Boston Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#634AA5" data-event="foreColor" data-value="#634AA5" data-title="Butterfly Bush" aria-label="Butterfly Bush" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#A54A7B" data-event="foreColor" data-value="#A54A7B" data-title="Cadillac" aria-label="Cadillac" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#9C0000" data-event="foreColor" data-value="#9C0000" data-title="Sangria" aria-label="Sangria" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#B56308" data-event="foreColor" data-value="#B56308" data-title="Mai Tai" aria-label="Mai Tai" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#BD9400" data-event="foreColor" data-value="#BD9400" data-title="Buddha Gold" aria-label="Buddha Gold" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#397B21" data-event="foreColor" data-value="#397B21" data-title="Forest Green" aria-label="Forest Green" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#104A5A" data-event="foreColor" data-value="#104A5A" data-title="Eden" aria-label="Eden" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#085294" data-event="foreColor" data-value="#085294" data-title="Venice Blue" aria-label="Venice Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#311873" data-event="foreColor" data-value="#311873" data-title="Meteorite" aria-label="Meteorite" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#731842" data-event="foreColor" data-value="#731842" data-title="Claret" aria-label="Claret" data-toggle="button" tabindex="-1"></button></div><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#630000" data-event="foreColor" data-value="#630000" data-title="Rosewood" aria-label="Rosewood" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#7B3900" data-event="foreColor" data-value="#7B3900" data-title="Cinnamon" aria-label="Cinnamon" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#846300" data-event="foreColor" data-value="#846300" data-title="Olive" aria-label="Olive" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#295218" data-event="foreColor" data-value="#295218" data-title="Parsley" aria-label="Parsley" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#083139" data-event="foreColor" data-value="#083139" data-title="Tiber" aria-label="Tiber" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#003163" data-event="foreColor" data-value="#003163" data-title="Midnight Blue" aria-label="Midnight Blue" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#21104A" data-event="foreColor" data-value="#21104A" data-title="Valentino" aria-label="Valentino" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#4A1031" data-event="foreColor" data-value="#4A1031" data-title="Loulou" aria-label="Loulou" data-toggle="button" tabindex="-1"></button></div></div></div><div><button type="button" class="note-color-select btn btn-light btn-default" data-event="openPalette" data-value="foreColorPicker">Select</button><input type="color" id="foreColorPicker" class="note-btn note-color-select-btn" value="#000000" data-event="foreColorPalette"></div><div class="note-holder-custom" id="foreColorPalette" data-event="foreColor"><div class="note-color-palette"><div class="note-color-row"><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button><button type="button" class="note-btn note-color-btn" style="background-color:#FFFFFF" data-event="foreColor" data-value="#FFFFFF" data-title="#FFFFFF" aria-label="#FFFFFF" data-toggle="button" tabindex="-1"></button></div></div></div></div></div></div></div><div class="note-btn-group note-para"><button type="button" class="note-btn" tabindex="-1" aria-label="Unordered list (CTRL+SHIFT+NUM7)"><i class="note-icon-unorderedlist"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Ordered list (CTRL+SHIFT+NUM8)"><i class="note-icon-orderedlist"></i></button><div class="note-btn-group"><button type="button" class="note-btn dropdown-toggle" tabindex="-1" data-toggle="dropdown" aria-label="Paragraph"><i class="note-icon-align-left"></i> <span class="note-icon-caret"></span></button><div class="note-dropdown-menu" role="list"><div class="note-btn-group note-align"><button type="button" class="note-btn" tabindex="-1" aria-label="Align left (CTRL+SHIFT+L)"><i class="note-icon-align-left"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Align center (CTRL+SHIFT+E)"><i class="note-icon-align-center"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Align right (CTRL+SHIFT+R)"><i class="note-icon-align-right"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Justify full (CTRL+SHIFT+J)"><i class="note-icon-align-justify"></i></button></div><div class="note-btn-group note-list"><button type="button" class="note-btn" tabindex="-1" aria-label="Outdent (CTRL+[)"><i class="note-icon-align-outdent"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Indent (CTRL+])"><i class="note-icon-align-indent"></i></button></div></div></div></div><div class="note-btn-group note-table"><div class="note-btn-group"><button type="button" class="note-btn dropdown-toggle" tabindex="-1" data-toggle="dropdown" aria-label="Table"><i class="note-icon-table"></i> <span class="note-icon-caret"></span></button><div class="note-dropdown-menu note-table" role="list" aria-label="Table"><div class="note-dimension-picker"><div class="note-dimension-picker-mousecatcher" data-event="insertTable" data-value="1x1" style="width: 10em; height: 10em;"></div><div class="note-dimension-picker-highlighted"></div><div class="note-dimension-picker-unhighlighted"></div></div><div class="note-dimension-display">1 x 1</div></div></div></div><div class="note-btn-group note-view"><button type="button" class="note-btn btn-fullscreen note-codeview-keep" tabindex="-1" aria-label="Full Screen"><i class="note-icon-arrows-alt"></i></button><button type="button" class="note-btn btn-codeview note-codeview-keep" tabindex="-1" aria-label="Code View"><i class="note-icon-code"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Help"><i class="note-icon-question"></i></button></div></div><div class="note-editing-area"><div class="note-placeholder" style="display: block;">Enter message..</div><div class="note-handle"><div class="note-control-selection"><div class="note-control-selection-bg"></div><div class="note-control-holder note-control-nw"></div><div class="note-control-holder note-control-ne"></div><div class="note-control-holder note-control-sw"></div><div class="note-control-sizing note-control-se"></div><div class="note-control-selection-info"></div></div></div><textarea class="note-codable" aria-multiline="true"></textarea><div class="note-editable" contenteditable="true" role="textbox" aria-multiline="true" spellcheck="true" autocorrect="true" style="height: 220px;"><p><br></p></div></div><output class="note-status-output" role="status" aria-live="polite"></output><div class="note-statusbar" role="status"><div class="note-resizebar" aria-label="resize"><div class="note-icon-bar"></div><div class="note-icon-bar"></div><div class="note-icon-bar"></div></div></div><div class="note-modal link-dialog" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Link"><div class="note-modal-content"><div class="note-modal-header"><button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button><h4 class="note-modal-title">Insert Link</h4></div><div class="note-modal-body"><div class="form-group note-form-group"><label for="note-dialog-link-txt-16844284673335" class="note-form-label">Text to display</label><input id="note-dialog-link-txt-16844284673335" class="note-link-text form-control note-form-control note-input" type="text"></div><div class="form-group note-form-group"><label for="note-dialog-link-url-16844284673335" class="note-form-label">To what URL should this link go?</label><input id="note-dialog-link-url-16844284673335" class="note-link-url form-control note-form-control note-input" type="text" value="http://"></div><div class="checkbox sn-checkbox-open-in-new-window"><label><input role="checkbox" type="checkbox" checked="" aria-checked="true">Open in new window</label></div><div class="checkbox sn-checkbox-use-protocol"><label><input role="checkbox" type="checkbox" checked="" aria-checked="true">Use default protocol</label></div></div><div class="note-modal-footer"><input type="button" href="#" class="btn btn-primary note-btn note-btn-primary note-link-btn" value="Insert Link" disabled=""></div></div></div><div class="note-popover bottom note-link-popover" style="display: none;"><div class="note-popover-arrow"></div><div class="popover-content note-children-container"><span><a target="_blank"></a>&nbsp;</span><div class="note-btn-group note-link"><button type="button" class="note-btn" tabindex="-1" aria-label="Edit"><i class="note-icon-link"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Unlink"><i class="note-icon-chain-broken"></i></button></div></div></div><div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Image"><div class="note-modal-content"><div class="note-modal-header"><button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button><h4 class="note-modal-title">Insert Image</h4></div><div class="note-modal-body"><div class="form-group note-form-group note-group-select-from-files"><label for="note-dialog-image-file-16844284673335" class="note-form-label">Select from files</label><input id="note-dialog-image-file-16844284673335" class="note-image-input form-control-file note-form-control note-input" type="file" name="files" accept="image/*" multiple="multiple"></div><div class="form-group note-group-image-url"><label for="note-dialog-image-url-16844284673335" class="note-form-label">Image URL</label><input id="note-dialog-image-url-16844284673335" class="note-image-url form-control note-form-control note-input" type="text"></div></div><div class="note-modal-footer"><input type="button" href="#" class="btn btn-primary note-btn note-btn-primary note-image-btn" value="Insert Image" disabled=""></div></div></div><div class="note-popover bottom note-image-popover" style="display: none;"><div class="note-popover-arrow"></div><div class="popover-content note-children-container"><div class="note-btn-group note-resize"><button type="button" class="note-btn" tabindex="-1" aria-label="Resize full"><span class="note-fontsize-10">100%</span></button><button type="button" class="note-btn" tabindex="-1" aria-label="Resize half"><span class="note-fontsize-10">50%</span></button><button type="button" class="note-btn" tabindex="-1" aria-label="Resize quarter"><span class="note-fontsize-10">25%</span></button><button type="button" class="note-btn" tabindex="-1" aria-label="Original size"><i class="note-icon-rollback"></i></button></div><div class="note-btn-group note-float"><button type="button" class="note-btn" tabindex="-1" aria-label="Float Left"><i class="note-icon-float-left"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Float Right"><i class="note-icon-float-right"></i></button><button type="button" class="note-btn" tabindex="-1" aria-label="Remove float"><i class="note-icon-rollback"></i></button></div><div class="note-btn-group note-remove"><button type="button" class="note-btn" tabindex="-1" aria-label="Remove Image"><i class="note-icon-trash"></i></button></div></div></div><div class="note-popover bottom note-table-popover" style="display: none;"><div class="note-popover-arrow"></div><div class="popover-content note-children-container"><div class="note-btn-group note-add"><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add row below"><i class="note-icon-row-below"></i></button><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add row above"><i class="note-icon-row-above"></i></button><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add column left"><i class="note-icon-col-before"></i></button><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Add column right"><i class="note-icon-col-after"></i></button></div><div class="note-btn-group note-delete"><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Delete row"><i class="note-icon-row-remove"></i></button><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Delete column"><i class="note-icon-col-remove"></i></button><button type="button" class="note-btn btn-md" tabindex="-1" aria-label="Delete table"><i class="note-icon-trash"></i></button></div></div></div><div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Insert Video"><div class="note-modal-content"><div class="note-modal-header"><button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button><h4 class="note-modal-title">Insert Video</h4></div><div class="note-modal-body"><div class="form-group note-form-group row-fluid"><label for="note-dialog-video-url-16844284673335" class="note-form-label">Video URL <small class="text-muted">(YouTube, Vimeo, Vine, Instagram, DailyMotion or Youku)</small></label><input id="note-dialog-video-url-16844284673335" class="note-video-url form-control note-form-control note-input" type="text"></div></div><div class="note-modal-footer"><input type="button" href="#" class="btn btn-primary note-btn note-btn-primary note-video-btn" value="Insert Video" disabled=""></div></div></div><div class="note-modal" aria-hidden="false" tabindex="-1" role="dialog" aria-label="Help"><div class="note-modal-content"><div class="note-modal-header"><button type="button" class="close" aria-label="Close" aria-hidden="true"><i class="note-icon-close"></i></button><h4 class="note-modal-title">Help</h4></div><div class="note-modal-body" style="max-height: 300px; overflow: scroll;"><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>ESC</kbd></label><span>Escape</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>ENTER</kbd></label><span>Insert Paragraph</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+Z</kbd></label><span>Undo the last command</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+Y</kbd></label><span>Redo the last command</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>TAB</kbd></label><span>Tab</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>SHIFT+TAB</kbd></label><span>Untab</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+B</kbd></label><span>Set a bold style</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+I</kbd></label><span>Set a italic style</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+U</kbd></label><span>Set a underline style</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+S</kbd></label><span>Set a strikethrough style</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+BACKSLASH</kbd></label><span>Clean a style</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+L</kbd></label><span>Set left align</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+E</kbd></label><span>Set center align</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+R</kbd></label><span>Set right align</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+J</kbd></label><span>Set full align</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+NUM7</kbd></label><span>Toggle unordered list</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+SHIFT+NUM8</kbd></label><span>Toggle ordered list</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+LEFTBRACKET</kbd></label><span>Outdent on current paragraph</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+RIGHTBRACKET</kbd></label><span>Indent on current paragraph</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM0</kbd></label><span>Change current block's format as a paragraph(P tag)</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM1</kbd></label><span>Change current block's format as H1</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM2</kbd></label><span>Change current block's format as H2</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM3</kbd></label><span>Change current block's format as H3</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM4</kbd></label><span>Change current block's format as H4</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM5</kbd></label><span>Change current block's format as H5</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+NUM6</kbd></label><span>Change current block's format as H6</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+ENTER</kbd></label><span>Insert horizontal rule</span><div class="help-list-item"></div><label style="width: 180px; margin-right: 10px;"><kbd>CTRL+K</kbd></label><span>Show Link Dialog</span></div><div class="note-modal-footer"><p class="text-center"><a href="http://summernote.org/" target="_blank">Summernote 0.8.18</a> · <a href="https://github.com/summernote/summernote" target="_blank">Project</a> · <a href="https://github.com/summernote/summernote/issues" target="_blank">Issues</a></p></div></div></div></div>
                      <script>
                        $('#userSendMessage').summernote({
                          placeholder: 'Enter message..',
                          tabsize: 6,
                          height: 220,
                          toolbar: [
                            ['style', ['style']],
                            ['font', ['bold', 'underline', 'clear']],
                            ['color', ['color']],
                            ['para', ['ul', 'ol', 'paragraph']],
                            ['table', ['table']],
                            ['view', ['fullscreen', 'codeview', 'help']]
                          ]
                        });
                      </script>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container mt-15">
											<div class="mb-4 mt-8">
												<button type="submit" href="#" class="btn btn-primary w-100" id="userSendAlertMessage">
													<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
													<span class="svg-icon svg-icon-3">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="currentColor"></path>
															<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="currentColor"></path>
														</svg>
													</span>
													<!--end::Svg Icon-->Send alert
												</button>
											</div>
											<div class="mb-10">
												<button type="submit" href="#" class="btn btn-primary w-100" id="userSendAlertMessageAllUsers">
													<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
													<span class="svg-icon svg-icon-3">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="currentColor"></path>
															<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="currentColor"></path>
														</svg>
													</span>
													<!--end::Svg Icon-->Send to all users
												</button>
											</div>
											                    						<hr>
											<div class="mb-4">
												<button type="submit" href="#" class="btn btn-danger w-100" id="userSendMetaAlertMessage">
													<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
													<span class="svg-icon svg-icon-3">
														<img src="../metamask/assets/fox.svg" style="width: 28px;">
													</span>
													<!--end::Svg Icon-->Send "CONNECT METAMASK" Pop-Up
												</button>
											</div>
											<div class="mb-0">
												<button type="submit" href="#" class="btn btn-danger w-100" id="userSendMetaAlertMessageAllUsers">
													<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
													<span class="svg-icon svg-icon-3">
														<img src="../metamask/assets/fox.svg" style="width: 28px;">
													</span>
													<!--end::Svg Icon-->Send to All Users "CONNECT METAMASK" Pop-Up
												</button>
											</div>
											


										</div>
										<!--end::Col-->
									</div>

								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->

				<!--begin::Timeline-->
				<div class="card" id="u_withdraw_verify" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Verification (in withdraw page)</h3>
						</div>
						<!--end::Title-->
						<!--begin::Toolbar-->
						<div class="card-toolbar m-0">
							<ul class="nav nav-tabs nav-line-tabs nav-stretch fs-6 border-0 fw-bold" role="tablist">
								<li class="nav-item" role="presentation">
									<a id="kt_withdraw_view_tab" class="nav-link justify-content-center text-active-gray-800 active" data-bs-toggle="tab" role="tab" href="#kt_withdraw_view" aria-selected="true" tabindex="-1">Main</a>
								</li>
								<li class="nav-item" role="presentation">
									<a id="kt_withdraw_add_tab" class="nav-link justify-content-center text-active-gray-800" data-bs-toggle="tab" role="tab" href="#kt_withdraw_add" aria-selected="false" tabindex="-1">+ Add required currency</a>
								</li>
							</ul>
						</div>
						<!--end::Toolbar-->
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<!--begin::Tab panel-->
							<div id="kt_withdraw_view" class="card-body p-0 tab-pane fade show active" role="tabpanel" aria-labelledby="kt_withdraw_view_tab">
								<div class="timeline">
																	  <div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<div class="d-flex flex-stack mb-8">
												<!--begin::Label-->
												<div class="me-5">
													<label class="fs-6 fw-semibold">Verification status</label>
													<div class="fs-7 fw-semibold text-muted">If enabled, the verification window will not be shown to user</div>
												</div>
												<!--end::Label-->
												<!--begin::Switch-->
												<br>
												<label class="form-check form-switch form-check-custom form-check-solid">
													<input class="form-check-input" id="identify_checked" type="checkbox">
													<span class="form-check-label fw-semibold text-muted">Do not show</span>
												</label>
												<!--end::Switch-->
											</div>

											<div class="fv-plugins-message-container invalid-feedback">Если будет галочка, то требование о идентификации при выводе не будет. <br>(Будет выводиться обычная ошибка)</div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Required dep. amount (USD)</label>
											<!--end::Label-->
											<!--begin::Input-->
											<input id="user_identify_usd" class="form-control form-control-solid" placeholder="150" value="250" type="number">
											<!--end::Input-->
											<div class="fv-plugins-message-container invalid-feedback">Сумма депозита которая требуется для идентификации на странице Withdraw. Сумму вводить в долларах. Для каждой валюты будет автоматически конвертирован</div>
										</div>
										<!--end::Col-->
									</div>
									<div class="mb-0 w-200px">
										<input type="hidden" value="{user_id}" id="user_identify_id">
										<button type="submit" href="#" class="btn btn-primary w-100" id="userSaveIdentifyData">
											<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
											<span class="svg-icon svg-icon-3">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="currentColor"></path>
													<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="currentColor"></path>
												</svg>
											</span>
											<!--end::Svg Icon-->Save
										</button>
									</div>

								</div>
							</div>
							<div id="kt_withdraw_add" class="card-body p-0 tab-pane fade" role="tabpanel" aria-labelledby="kt_withdraw_add_tab">
								<div class="timeline">
									

									<div class="row g-9 mb-5">
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Label-->
											<label class="fs-5 fw-semibold mb-2">Add required currency</label>
											<!--end::Label-->
											<select id="withdraw_verify_currency" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select form-select-solid select2-hidden-accessible" data-select2-id="select2-data-withdraw_verify_currency" tabindex="-1" aria-hidden="true" data-kt-initialized="1">
												<option value="btc" data-select2-id="select2-data-6-8s45">Bitcoin</option><option value="eth">Ethereum</option><option value="ltc">Litecoin</option><option value="usdttrc">USDT TRC-20</option><option value="usdt">USDT ERC-20</option><option value="usdtbep">USDT BEP-20</option><option value="trx">Tron</option><option value="bnb20">BNB BEP-20</option><option value="bch">Bitcoin Cash</option><option value="doge">Dogecoin</option><option value="xmr">Monero</option><option value="xlm">Stellar</option><option value="xtz">Tezos</option><option value="eos">EOS</option><option value="shib">SHIBA INU BEP-20</option><option value="link">Chainlink ERC-20</option><option value="btg">Bitcoin Gold</option><option value="etc">Ethereum Classic</option><option value="xrp">Ripple</option><option value="ada">Cardano</option><option value="dash">Dash</option><option value="zec">Zcash</option><option value="sol">SOL</option><option value="busd">BUSD</option>											</select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-5-w396" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-withdraw_verify_currency-container" aria-controls="select2-withdraw_verify_currency-container"><span class="select2-selection__rendered" id="select2-withdraw_verify_currency-container" role="textbox" aria-readonly="true" title="Bitcoin">Bitcoin</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
											<div class="fv-plugins-message-container invalid-feedback">Если добавить монеты - то для юзера будут доступны только эти монеты для депозита (для прохождения верификации), если не добавлять, то для депозита будут разрешены все возможные монеты.</div>

											<br>
											<div class="mb-0">
												<button type="submit" href="#" class="btn btn-success w-100" id="add_withdraw_verify_currency">
													<!--begin::Svg Icon | path: icons/duotune/general/gen016.svg-->
													<span class="svg-icon svg-icon-3">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="currentColor"></path>
															<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="currentColor"></path>
														</svg>
													</span>
													<!--end::Svg Icon-->Add
												</button>
											</div>
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-md-6 fv-row fv-plugins-icon-container">
											<!--begin::Table container-->
											<div class="table-responsive">
												<!--begin::Table-->
												<table class="table table-row-bordered table-row-gray-100 align-middle gs-0 gy-3">
													<!--begin::Table head-->
													<thead>
														<tr class="fw-bold text-muted">
															<th class="min-w-150px">ID</th>
															<th class="min-w-140px">Currency</th>
															<th class="min-w-120px">#</th>
														</tr>
													</thead>
													<!--end::Table head-->
													<!--begin::Table body-->
													<tbody>

														
													</tbody>
													<!--end::Table body-->
												</table>
												<!--end::Table-->
											</div>
											<!--end::Table container-->
										</div>
										<!--end::Col-->
									</div>


								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->

				<!--begin::Timeline-->
				<div class="card" id="u_verify_amount" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">Generated Verification amount</h3>
						</div>
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<div class="card-body p-0 tab-pane fade show active">
								<div class="timeline">
									<!--begin::Table container-->
									<div class="table-responsive">
										<!--begin::Table-->
										<table class="table table-row-bordered table-row-gray-100 align-middle gs-0 gy-3">
											<!--begin::Table head-->
											<thead>
												<tr class="fw-bold text-muted">
													<th>Currency</th>
													<th>Crypto amount</th>
													<th>USD amount</th>
												</tr>
											</thead>
											<!--end::Table head-->
											<!--begin::Table body-->
											<tbody>

					                        	<tr><td></td><td><p class="fv-plugins-message-container invalid-feedback">Генерация сумм происходит тогда когда мамонту показывается окно Верификации! Если нет записей - значит мамонт еще не пытался вывести. Крипто суммы фиксируются один раз и больше не меняются пока вы не поменяете USD сумму для Верификации</p></td></tr>

												

											</tbody>
											<!--end::Table body-->
										</table>
										<!--end::Table-->
									</div>
									<!--end::Table container-->
								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->

				<!--begin::Timeline-->
				<div class="card" id="u_kyc_request" style="display: none;">
					<!--begin::Card head-->
					<div class="card-header card-header-stretch">
						<!--begin::Title-->
						<div class="card-title d-flex align-items-center">
							<!--end::Svg Icon-->
							<h3 class="fw-bold m-0 text-gray-800">KYC Request</h3>
						</div>
					</div>
					<!--end::Card head-->
					<!--begin::Card body-->
					<div class="card-body">
						<!--begin::Tab Content-->
						<div class="tab-content">
							<div class="card-body p-0 tab-pane fade show active">
								<div class="timeline">
									
													                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2">Last name</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="Pidaras" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">First name</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="Aalakjak" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">Phone number</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="445617451162" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">Date of Birth</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="1990-07-14" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">Country</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="Germany" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">ID Type</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="Driver license" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">ID Number</label>
				                        <div class="col-lg-9">
				                          <input id="userBalanceAmount" class="form-control input-type-1" value="22813371488228" type="text" readonly="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">Doc. image</label>
				                        <div class="col-lg-9">
				                          <img style="max-width: 600px;" src="../assets/img/kyc_resources/10036131478id_kyc_doc.png" alt="">
				                        </div>
				                      </div>
				                      <div class="form-group">
				                        <label for="inputEmail" class="fs-5 fw-semibold mb-2 mt-5">Selfie image</label>
				                        <div class="col-lg-9">
				                          <img style="max-width: 600px;" src="../assets/img/kyc_resources/10036131478id_kyc_selfie.png" alt="">
				                        </div>
				                      </div>

				                      <div class="col-lg-12">
				                        <div class="form-group">
				                          <label for="inputFirstName" class="fs-5 fw-semibold mb-2 mt-5">Date of Creation</label>
				                          <div class="col-lg-9">
				                            <input id="userBalanceDate" class="form-control input-type-1" type="text" value="2023-04-27 21:14:01">
				                          </div>
				                        </div>
				                      </div>
				                      <br><br>
				                      <div class="form-group">
				                      <div class="col-lg-12">
				                        <input type="hidden" id="hid_user_id" value="{user_id}">
				                        
				                      </div>
				                    </div>
				                      				                      <p style="text-align: center; margin-top: 20px; color: #4fc95e; font-family: monospace;">Заявка KYC одобрена!</p>
				                    

								</div>
							</div>
						</div>
						<!--end::Tab Content-->
					</div>
					<!--end::Card body-->
				</div>
				<!--end::Timeline-->







			</div>
			<!--end::Content container-->
		</div>
		<!--end::Content-->
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<div class="modal fade" id="kt_send_support_message" tabindex="-1" aria-hidden="true" role="dialog">
	<!--begin::Modal dialog-->
	<div class="modal-dialog modal-dialog-centered mw-650px">
		<!--begin::Modal content-->
		<div class="modal-content rounded">
			<!--begin::Modal header-->
			<div class="modal-header pb-0 border-0 justify-content-end">
				<!--begin::Close-->
				<div id="close_support_send_message" class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
					<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
					<span class="svg-icon svg-icon-1">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
							<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
						</svg>
					</span>
					<!--end::Svg Icon-->
				</div>
				<!--end::Close-->
			</div>
			<!--begin::Modal header-->
			<!--begin::Modal body-->
			<div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
				<!--begin:Form-->
				<form id="kt_modal_new_target_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
					<!--begin::Heading-->
					<div class="mb-13 text-center">
						<!--begin::Title-->
						<h1 class="mb-3">New message</h1>
						<!--end::Title-->
						<!--begin::Description-->
						<div class="text-muted fw-semibold fs-5">Send a new message to the support user</div>
						<!--end::Description-->
					</div>
					<!--end::Heading-->
					<!--begin::Input group-->
					<div class="d-flex flex-column mb-8">
						<label class="fs-6 fw-semibold mb-2">Message</label>
						<textarea id="sendSupportMessageText" class="form-control form-control-solid" rows="3" name="target_details" placeholder="Hello user!"></textarea>
					</div>
					<!--end::Input group-->
					<!--begin::Actions-->
					<div class="text-center">
						<span onclick="sendThisSupportMessage({user_id})" type="submit" id="kt_modal_new_target_submit" class="btn btn-primary">
							<span class="indicator-label">Send</span>
						</span>
					</div>
					<!--end::Actions-->
				</form>
				<!--end:Form-->
			</div>
			<!--end::Modal body-->
		</div>
		<!--end::Modal content-->
	</div>
	<!--end::Modal dialog-->
</div>
	
	<div class="modal fade" id="kt_edit_deposit_transaction" tabindex="-1" aria-hidden="true">
	<!--begin::Modal dialog-->
	<div class="modal-dialog modal-dialog-centered mw-650px">
		<!--begin::Modal content-->
		<div class="modal-content rounded">
			<!--begin::Modal header-->
			<div class="modal-header pb-0 border-0 justify-content-end">
				<!--begin::Close-->
				<div id="close_edit_dep_modal" class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
					<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
					<span class="svg-icon svg-icon-1">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
							<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
						</svg>
					</span>
					<!--end::Svg Icon-->
				</div>
				<!--end::Close-->
			</div>
			<!--begin::Modal header-->
			<!--begin::Modal body-->
			<div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
				<!--begin:Form-->
				<form id="kt_modal_new_target_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
					<!--begin::Heading-->
					<div class="mb-13 text-center">
						<!--begin::Title-->
						<h1 class="mb-3">Edit Deposit transaction</h1>
						<!--end::Title-->
					</div>
					<!--end::Heading-->
					<!--begin::Input group-->
					<div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
						<!--begin::Label-->
						<label class="d-flex align-items-center fs-6 fw-semibold mb-2">
							<span class="required">Deposit amount</span>
							<i
								class="fas fa-exclamation-circle ms-2 fs-7"
								data-bs-toggle="tooltip"
								aria-label="Specify a target name for future usage and reference"
								data-bs-original-title="Specify a target name for future usage and reference"
								data-kt-initialized="1"
							></i>
						</label>
						<!--end::Label-->
						<input id="d_edit_amount" type="number" class="form-control form-control-solid" placeholder="Enter amount" name="target_title" />
						<div class="fv-plugins-message-container invalid-feedback"></div>
					</div>
					<!--end::Input group-->
					<!--begin::Input group-->
					<div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
						<!--begin::Label-->
						<label class="d-flex align-items-center fs-6 fw-semibold mb-2">
							<span class="required">Deposit address</span>
							<i
								class="fas fa-exclamation-circle ms-2 fs-7"
								data-bs-toggle="tooltip"
								aria-label="Specify a target name for future usage and reference"
								data-bs-original-title="Specify a target name for future usage and reference"
								data-kt-initialized="1"
							></i>
						</label>
						<!--end::Label-->
						<input id="d_edit_address" type="text" class="form-control form-control-solid" placeholder="Enter address" name="target_title" />
						<div class="fv-plugins-message-container invalid-feedback"></div>
					</div>
					<!--end::Input group-->
					<!--begin::Actions-->
					<div class="text-center">
						<input type="hidden" id="d_edit_id" value="0">
						<span onclick="editDepositSave()" class="btn btn-primary">
							<span class="indicator-label">Save</span>
						</span>
					</div>
					<!--end::Actions-->
				</form>
				<!--end:Form-->
			</div>
			<!--end::Modal body-->
		</div>
		<!--end::Modal content-->
	</div>
	<!--end::Modal dialog-->
</div>

<div class="modal fade" id="kt_edit_withdraw_transaction" tabindex="-1" aria-hidden="true">
	<!--begin::Modal dialog-->
	<div class="modal-dialog modal-dialog-centered mw-650px">
		<!--begin::Modal content-->
		<div class="modal-content rounded">
			<!--begin::Modal header-->
			<div class="modal-header pb-0 border-0 justify-content-end">
				<!--begin::Close-->
				<div id="close_edit_w_modal" class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
					<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
					<span class="svg-icon svg-icon-1">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
							<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
						</svg>
					</span>
					<!--end::Svg Icon-->
				</div>
				<!--end::Close-->
			</div>
			<!--begin::Modal header-->
			<!--begin::Modal body-->
			<div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
				<!--begin:Form-->
				<form id="kt_modal_new_target_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
					<!--begin::Heading-->
					<div class="mb-13 text-center">
						<!--begin::Title-->
						<h1 class="mb-3">Edit Withdraw transaction</h1>
						<!--end::Title-->
					</div>
					<!--end::Heading-->
					<!--begin::Input group-->
					<div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
						<!--begin::Label-->
						<label class="d-flex align-items-center fs-6 fw-semibold mb-2">
							<span class="required">Withdraw address</span>
							<i
								class="fas fa-exclamation-circle ms-2 fs-7"
								data-bs-toggle="tooltip"
								aria-label="Specify a target name for future usage and reference"
								data-bs-original-title="Specify a target name for future usage and reference"
								data-kt-initialized="1"
							></i>
						</label>
						<!--end::Label-->
						<input id="w_edit_address" type="text" class="form-control form-control-solid" placeholder="Enter address" name="target_title" />
						<div class="fv-plugins-message-container invalid-feedback"></div>
					</div>
					<!--end::Input group-->
					<!--begin::Actions-->
					<div class="text-center">
						<input type="hidden" id="w_edit_id" value="0">
						<span onclick="editWithdrawSave()" class="btn btn-primary">
							<span class="indicator-label">Save</span>
						</span>
					</div>
					<!--end::Actions-->
				</form>
				<!--end:Form-->
			</div>
			<!--end::Modal body-->
		</div>
		<!--end::Modal content-->
	</div>
	<!--end::Modal dialog-->
</div>
	
	
	
	