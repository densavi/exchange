<div class="d-flex flex-column flex-column-fluid">
							<!--begin::Toolbar-->
							<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
								<!--begin::Toolbar container-->
								<div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack">
									<!--begin::Page title-->
									<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
										<!--begin::Title-->
										<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Change course</h1>
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
											<li class="breadcrumb-item text-muted">TR Courses</li>
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
								<div id="kt_app_content_container" class="app-container container-fluid">


									<div class="col-xl-12 mb-xl-12">
										<!--begin::List widget 16-->
										<div class="card card-flush h-xl-100">
											<!--begin::Header-->
											<div class="card-header pt-7">
												<!--begin::Title-->
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label fw-bold text-gray-800">Edit trading course</span>
													<span class="text-gray-400 mt-1 fw-semibold fs-6">Visible only to your linked users</span>
												</h3>
												<!--end::Title-->

											</div>
											<!--end::Header-->
											<!--begin::Body-->
											<div class="card-body pt-4 px-0">
												<!--begin::Nav-->
												<ul class="nav nav-pills nav-pills-custom item position-relative mx-9 mb-9" role="tablist">
													<!--begin::Item-->
													<li class="nav-item col-3 mx-0 p-0" role="presentation">
														<!--begin::Link-->
														<a class="nav-link d-flex justify-content-center w-100 border-0 h-100 active" data-bs-toggle="pill" href="#kt_list_widget_16_tab_1" aria-selected="true" role="tab">
															<!--begin::Subtitle-->
															<span class="nav-text text-gray-800 fw-bold fs-6 mb-3">Fast PUMP/DUMP</span>
															<!--end::Subtitle-->
															<!--begin::Bullet-->
															<span class="bullet-custom position-absolute z-index-2 bottom-0 w-100 h-4px bg-primary rounded"></span>
															<!--end::Bullet-->
														</a>
														<!--end::Link-->
													</li>
													<!--end::Item-->
													<!--begin::Item-->
													<li class="nav-item col-3 mx-5 px-0" role="presentation">
														<!--begin::Link-->
														<a class="nav-link d-flex justify-content-center w-100 border-0 h-100" data-bs-toggle="pill" href="#kt_list_widget_16_tab_2" aria-selected="false" role="tab" tabindex="-1">
															<!--begin::Subtitle-->
															<span class="nav-text text-gray-800 fw-bold fs-6 mb-3">Stable PUMP/DUMP [РАБОТАЕТ]</span>
															<!--end::Subtitle-->
															<!--begin::Bullet-->
															<span class="bullet-custom position-absolute z-index-2 bottom-0 w-100 h-4px bg-primary rounded"></span>
															<!--end::Bullet-->
														</a>
														<!--end::Link-->
													</li>
													<!--end::Item-->

													<!--begin::Bullet-->
													<span class="position-absolute z-index-1 bottom-0 w-100 h-4px bg-light rounded"></span>
													<!--end::Bullet-->
												</ul>
												<!--end::Nav-->
												<!--begin::Tab Content-->
												<div class="tab-content px-9 hover-scroll-overlay-y pe-7 me-3 mb-2" style="height: 454px">
													<!--begin::Tap pane-->
													<div class="tab-pane fade active show" id="kt_list_widget_16_tab_1" role="tabpanel">
														



														<div class="d-flex flex-column flex-lg-row">

																<!--begin::Sidebar-->
															<div class="flex-lg-auto min-w-lg-300px">
																<!--begin::Card-->
																<div class="card" data-kt-sticky="true" data-kt-sticky-name="invoice" data-kt-sticky-offset="{default: false, lg: '200px'}" data-kt-sticky-width="{lg: '250px', lg: '300px'}" data-kt-sticky-left="auto" data-kt-sticky-top="150px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95" ;"="">
																	<!--begin::Card body-->
																	<div class="card-body p-10">
																		<!--begin::Input group-->
																		<div class="mb-10">
																			<!--begin::Label-->
																			<label class="form-label fw-bold fs-6 text-gray-700">Currency</label>
																			<!--end::Label-->
																			<!--begin::Select-->
																			<select id="course_pairs" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select form-select-solid">
																				
																				{course_pairs}
																				
																				
																				</select>
																			<!--end::Select-->
																		</div>
																		<!--end::Input group-->
																		<!--begin::Input group-->
																		<div class="mb-10">
																			<!--begin::Label-->
																			<label class="form-label fw-bold fs-6 text-gray-700">Type</label>
																			<!--end::Label-->
																			<!--begin::Select-->
																			<select id="course_edit" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select form-select-solid">
																				<option value="change">Percent</option>
																			</select>
																			<!--end::Select-->
																		</div>
																		<!--end::Input group-->
																		<!--begin::Actions-->
																		<div class="mb-0">
																			<div class="col-lg-12">
																				<label class="form-label fs-6 fw-bold text-gray-700 mb-3">Value</label>
																				<div class="mb-5">
																					<input id="course_amount" type="text" class="form-control form-control-solid" placeholder="-5.5">
																				</div>
																			</div>
																			
																		</div>
																		<!--end::Actions-->
																		<div class="mb-0">
																			<button type="submit" href="#" class="btn btn-primary gradbuttonsp w-100" id="save_edit_course">
																				Add Fast PUMP/DUMP
																			</button>
																		</div>
																		<br><br>	
																		<p style="font-size: 12px; color: #a1a5b7;">Значение заполнять строго по такому формату:<br> -2.47 (DUMP / красный) <br> или 2.47 (PUMP / зеленый)</p>
														                <i style="font-size: 12px; color: #a1a5b7;">Учтите, что, цена будет меняться на указанный <br> процент который будет прибавляться <br> к текущему значению</i>

																	</div>
																	<!--end::Card body-->
																</div>
																<!--end::Card-->
															</div>
															<!--end::Sidebar-->

															<!--begin::Content-->
															<div class="flex-lg-row-fluid mb-10 mb-lg-0 me-lg-7 me-xl-10">
																<!--begin::Card-->
																<div class="card">
																	<!--begin::Card body-->
																	<div class="card-body p-12">
																		<div class="table-responsive">
																			<!--begin::Table-->
																			<table class="table align-middle gs-0 gy-3 table-row-dashed table-striped">
																				<!--begin::Table head-->
																				<thead>
																					<tr class="fw-bold text-muted">
																						<th class="min-w-150px">ID</th>
																						<th class="min-w-140px">Pairs</th>
																						<th class="min-w-120px">Price</th>
																						<th class="min-w-120px">Change</th>
																						<th class="min-w-120px"></th>
																					</tr>
																				</thead>
																				<!--end::Table head-->
																				<!--begin::Table body-->
																				<tbody id="course_edited_table">

														                        <tr>
																						
																					<td class="text-dark fs-6">#1</td>
																					<td class="text-dark fs-6">BTC_USDT</td>
																					<td class="text-dark fs-6">26705.94000000</td>
																					<td class="text-dark fs-6">-1.167%</td>
																					<td class="text-dark fs-6"></td>
																					
																				 </tr>
																							
																					

																				</tbody>
																				<!--end::Table body-->
																			</table>
																			<!--end::Table-->
																		</div>
										</div>
										<!--end::Card body-->
									</div>
									<!--end::Card-->
								</div>
								<!--end::Content-->

							</div>










						</div>
						<!--end::Tap pane-->
						<!--begin::Tap pane-->
						<div class="tab-pane fade" id="kt_list_widget_16_tab_2" role="tabpanel">
							<div class="m-0">
								



								<div class="d-flex flex-column flex-lg-row">

									<!--begin::Sidebar-->
								<div class="flex-lg-auto min-w-lg-300px">
									<!--begin::Card-->
									<div class="card" data-kt-sticky="true" data-kt-sticky-name="invoice" data-kt-sticky-offset="{default: false, lg: '200px'}" data-kt-sticky-width="{lg: '250px', lg: '300px'}" data-kt-sticky-left="auto" data-kt-sticky-top="150px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95" ;"="">
										<!--begin::Card body-->
										<div class="card-body p-10">
											<!--begin::Input group-->
											<div class="mb-10">
													<!--begin::Label-->
												<label class="form-label fw-bold fs-6 text-gray-700">Pairs</label>
												<!--end::Label-->
												<!--begin::Select-->
												<select id="stable_course_pairs" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select form-select-solid">
													{stable_course_pairs}
												</select>
												<!--end::Select-->
											</div>
											<!--end::Input group-->
											<!--begin::Actions-->
											<div class="mb-0">
												<div class="col-lg-12">
													<label class="form-label fs-6 fw-bold text-gray-700 mb-3">In percent (%)</label>
													<div class="mb-5">
														<input id="stable_course_amount" type="text" class="form-control form-control-solid" placeholder="7.2">
													</div>
												</div>
												
											</div>
											<!--end::Actions-->
											<div class="mb-0">
												<button type="submit" href="#" class="btn btn-primary gradbuttonsp w-100" id="save_stable_edit_course">Save Stable PUMP/DUMP</button>
											</div>
											<br><br>	
											<p style="font-size: 12px; color: #a1a5b7;">Введите сумму в процентах которая будет <br>прибавляться к реальному курсу</p>
							                <i style="font-size: 12px; color: #a1a5b7;">Реальный курс берется из Бинанса!</i>

										</div>
										<!--end::Card body-->
									</div>
									<!--end::Card-->
								</div>
								<!--end::Sidebar-->

								<!--begin::Content-->
								<div class="flex-lg-row-fluid mb-10 mb-lg-0 me-lg-7 me-xl-10">
									<!--begin::Card-->
									<div class="card">
										<!--begin::Card body-->
										<div class="card-body p-12">
											<div class="table-responsive">
																			<!--begin::Table-->
																			<table class="table align-middle gs-0 gy-3 table-row-dashed table-striped">
																				<!--begin::Table head-->
																				<thead>
																					<tr class="fw-bold text-muted">
																						<th class="min-w-150px">ID</th>
																						<th class="min-w-140px">Pairs</th>
																						<th class="min-w-120px">Add percent</th>
																						<th class="min-w-120px">#</th>
																					</tr>
																				</thead>
																				<!--end::Table head-->
																				<!--begin::Table body-->
																				<tbody>

																					{stable_course_pairs_list}
														                        

																				</tbody>
																				<!--end::Table body-->
																			</table>
																			<!--end::Table-->
																		</div>
																	</div>
																	<!--end::Card body-->
																</div>
																<!--end::Card-->
															</div>
															<!--end::Content-->

														</div>




														</div>
													</div>
													<!--end::Tap pane-->
												</div>
												<!--end::Tab Content-->
											</div>
											<!--end: Card Body-->
										</div>
										<!--end::List widget 16-->
									</div>


									
								</div>
								<!--end::Content container-->
							</div>
							<!--end::Content-->
						</div>