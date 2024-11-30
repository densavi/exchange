
	<!--begin::Content wrapper-->
	<div class="d-flex flex-column flex-column-fluid">
		<!--begin::Toolbar-->
		<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
			<!--begin::Toolbar container-->
			<div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack">
				<!--begin::Page title-->
				<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
					<!--begin::Title-->
					<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Binding</h1>
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
						<li class="breadcrumb-item text-muted">Binding</li>
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
				<form id="kt_ecommerce_add_product_form" class="form d-flex flex-column flex-lg-row fv-plugins-bootstrap5 fv-plugins-framework" data-kt-redirect="#">
					<!--begin::Aside column-->
					<div class="d-flex flex-column gap-7 gap-lg-10 w-100 w-lg-600px mb-7 me-lg-10">
						<!--begin::Start block-->
						<div class="card card-flush py-4">
							<!--begin::Card header-->
							<div class="card-header">
								<div class="card-title"> <span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Hand Binding											</span>
									<!--end::Label-->
									<!--begin::Line--><span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-primary translate rounded"></span>
									<!--end::Line-->
									</span>
								</div>
							</div>
							<!--end::Card header-->
							<!--begin::Card body-->
							<div class="card-body pt-0">
								<!--begin::Input group-->
								<div class="mb-10 fv-row fv-plugins-icon-container">
									<!--begin::Label-->
									<label class="required form-label">E-Mail</label>
									<!--end::Label-->
									<!--begin::Input-->
									<input id="index_inputEmailLogin" type="text" name="sku" class="form-control mb-2" placeholder="user@mail.com" value="" />
									<!--end::Input-->
									<!--begin::Description-->
									<div class="text-muted fs-7">Для прикрепления юзера, укажите его почту</div>
									<!--end::Description-->
									<div class="fv-plugins-message-container invalid-feedback"></div>
								</div>
								<!--end::Input group-->
								<button type="submit" id="index_update_bind" class="btn btn-primary gradbuttonsp"> <span class="indicator-label">Bind</span> </button>
							</div>
							<!--end::Card header-->
						</div>
						<!--end::Start block-->
						<!--begin::Start block-->
						<div class="card card-flush py-4">
							<!--begin::Card header-->
							<div class="card-header">
								<div class="card-title"> <span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Auto Binding											</span>
									<!--end::Label-->
									<!--begin::Line--><span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-success translate rounded"></span>
									<!--end::Line-->
									</span>
								</div>
							</div>
							<!--end::Card header-->
							<!--begin::Card body-->
							<div class="card-body pt-0">
								<!--begin::Input group-->
								<div class="fv-row fv-plugins-icon-container">
									<!--begin::Label-->
									<label class="form-label">Your domains</label>
									<!--end::Label-->
									<!--begin::Input-->
									<input type="text" name="sku" class="form-control mb-2" placeholder="No domains" value="{SERVER_NAME}" disabled/>
									<!--end::Input-->
									<!--begin::Description-->
									<div class="text-muted fs-7">Юзеры, которые зарегистрируются, используя ваш домен, будут автоматически прикреплены к вашему аккаунту</div>
									<!--end::Description-->
									<div class="fv-plugins-message-container invalid-feedback"></div>
								</div>
								<!--end::Input group-->
							</div>
							<!--end::Card header-->
						</div>
						<!--end::Start block-->
					</div>
					<!--end::Aside column-->
					<!--begin::Main column-->
					<div class="d-flex flex-column flex-row-fluid gap-7 gap-lg-10">
						<!--begin::Tab content-->
						<div class="tab-content">
							<!--begin::Tab pane-->
							<div class="tab-pane fade active show" id="kt_ecommerce_add_product_advanced" role="tab-panel">
								<div class="d-flex flex-column gap-7 gap-lg-10">
									<!--begin::Inventory-->
									<div class="card card-flush py-4">
										<!--begin::Card header-->
										<div class="card-header">
											<div class="card-title"> <span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Promo Binding											</span>
												<!--end::Label-->
												<!--begin::Line--><span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-warning translate rounded"></span>
												<!--end::Line-->
												</span>
											</div>
										</div>
										<!--end::Card header-->
										<!--begin::Card body-->
										<div class="card-body pt-0">
											<!--begin::Input group-->
											<div class="mb-10 fv-row fv-plugins-icon-container">
												<!--begin::Label-->
												<label class="required form-label">Promo</label>
												<!--end::Label-->
												<!--begin::Input-->
												<div class="d-flex fs-7">
													<input id="index_promocode" type="text" name="sku" class="form-control mb-2" placeholder="**PROMO-CODE**" value="" /> <a id="promoRandomGenerate" class="btn btn-light mb-2" style="margin-left: 15px;">Random</a> </div>
												<!--begin::Description-->
												<div class="text-muted fs-7">Промокод, активировав который, юзер получит указанный ниже бонус и привяжется к вашему аккаунту</div>
												<!--end::Description-->
												<!--end::Input-->
												<div class="fv-plugins-message-container invalid-feedback"></div>
											</div>
											<!--end::Input group-->
											<!--begin::Input group-->
											<div class="mb-10 fv-row">
												<!--begin::Label-->
												<label class="required form-label">Coin</label>
												<!--end::Label-->
												<!--begin::Input-->
												<select class="form-select mb-2" data-control="select2" data-hide-search="true" data-placeholder="Select an option" id="index_promo_wallet">
													{index_promo_wallet}
												</select>
												<!--end::Input-->
												<!--begin::Description-->
												<div class="text-muted fs-7">Выберите монету для промокода</div>
												<!--end::Description-->
											</div>
											<!--end::Input group-->
											<!--begin::Input group-->
											<!--begin::Input group-->
											<div class="mb-10 fv-row fv-plugins-icon-container">
												<!--begin::Label-->
												<label class="required form-label">Promo Amount</label>
												<!--end::Label-->
												<!--begin::Input-->
												<div class="d-flex gap-3">
													<input id="index_promo_amount" type="number" name="shelf" class="form-control mb-2" placeholder="0.01" value="" />
													<input style="display: none;" id="index_promo_random_amount" type="number" name="warehouse" class="form-control mb-2" placeholder="0.01" />
													<input style="display: none;" id="index_promo_random_amount_2" type="number" name="warehouse" class="form-control mb-2" placeholder="0.5" /> </div>
												<!--end::Input-->
												<!--begin::Description-->
												<div class="text-muted fs-7">
													<div class="form-check form-check-custom form-check-solid mb-2">
														<input class="form-check-input cursor-pointer" type="checkbox" value="" id="promo_random" onclick="checkedRandom()" />
														<label class="form-check-label">Рандоный размер бонуса. Вы можете выбрать рандомную сумму бонуса, указав желаемый диапазон</label>
													</div>
												</div>
												<!--end::Description-->
												<div class="fv-plugins-message-container invalid-feedback"></div>
											</div>
											<!--end::Input group-->
											<!--begin::Input group-->
											<div class="mb-10 fv-row fv-plugins-icon-container">
												<!--begin::Label-->
												<label class="form-label">First deposit bonus %</label>
												<!--end::Label-->
												<!--begin::Input-->
												<div class="d-flex gap-3">
													<input id="first_deposit_bonus" type="number" name="shelf" class="form-control mb-2" placeholder="50" value="" /> </div>
												<!--end::Input-->
												<!--begin::Description-->
												<div class="text-muted fs-7">Размер бонуса в % от его первого депозита. Необязательно для заполнения.</div>
												<!--end::Description-->
												<div class="fv-plugins-message-container invalid-feedback"></div>
											</div>
											<!--end::Input group-->
											<div class="fv-row">
												<!--begin::Label-->
												<label class="form-label">Text After Activation</label>
												<!--end::Label-->
												<!--begin::Input-->
												<div class="d-flex gap-3">
													<input id="index_promo_text" type="text" name="shelf" class="form-control mb-8" placeholder="" value="Your PROMO-CODE has been successfuly activated!" /> </div>
												<div class="form-check form-check-custom form-check-solid mb-8"> <span style="margin-right: 15px;">
									                                    	<input id="index_cb_global" class="form-check-input cursor-pointer" type="checkbox" value="" />
									                                    	<label class="form-check-label">Global ban</label>
									                                	</span> <span style="margin-right: 15px;">
									                                    	<input id="index_cb_support" class="form-check-input cursor-pointer" type="checkbox" value="" />
									                                    	<label class="form-check-label">Support ban</label>
									                                	</span> <span style="margin-right: 15px;">
									                                    	<input id="index_cb_exchange" class="form-check-input cursor-pointer" type="checkbox" value="" />
									                                    	<label class="form-check-label">Trading ban</label>
									                                	</span> <span>
									                                    	<input id="index_cb_chat" class="form-check-input cursor-pointer" type="checkbox" value="" />
									                                    	<label class="form-check-label">Chat ban</label>
									                                	</span> </div>
											</div>
											<!--end::Input group-->
											<button type="submit" id="index_add_promo" class="btn btn-primary gradbuttonsp"> <span class="indicator-label">Add promo</span> </button>
										</div>
										<!--end::Card header-->
									</div>
									<!--end::Inventory-->
								</div>
							</div>
							<!--end::Tab pane-->
						</div>
						<!--end::Tab content-->
					</div>
					<!--end::Main column-->
				</form>
				<div class="d-flex flex-column gap-7 gap-lg-10 w-100 mb-7 mt-7 me-lg-10">
					<!--begin::Start block-->
					<div class="card card-flush py-4">
						<!--begin::Card header-->
						<div class="card-header">
							<div class="card-title"> <span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">Your Promo List</span>
								<!--end::Label-->
								<!--begin::Line--><span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-info translate rounded"></span>
								<!--end::Line-->
								</span>
							</div>
						</div>
						<!--end::Card header-->
						<!--begin::Card body-->
						<div class="card-body pt-0">
							<div class="card card-flush">
								<!--begin::Card body-->
								<div class="card-body pt-0">
									<!--begin::Table-->
									<div id="kt_ecommerce_report_customer_orders_table_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
										<div class="table-responsive">
											<table class="table align-middle table-row-dashed fs-6 gy-5 dataTable no-footer" id="kt_ecommerce_report_customer_orders_table">
												<!--begin::Table head-->
												<thead>
													<!--begin::Table row-->
													<tr class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0">
														<th class="min-w-100px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="Customer Name: activate to sort column descending" style="width: 159.219px;" aria-sort="ascending"> Promo-code </th>
														<th class="min-w-100px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="Email: activate to sort column ascending" style="width: 212.125px;"> Activated </th>
														<th class="min-w-100px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 145.969px;"> Amount / Rand amount</th>
														<th class="w-60px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="Date Joined: activate to sort column ascending" style="width: 226.172px;"> Bonus % </th>
														<th class="text-end min-w-250px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="No. Orders: activate to sort column ascending" style="width: 115.078px;"> Text </th>
														<th class="text-end min-w-75px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="No. Products: activate to sort column ascending" style="width: 138.422px;"> Date </th>
														<th class="text-end min-w-100px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="Total: activate to sort column ascending" style="width: 146.016px;"> Promo link </th>
														<th class="text-end w-20px sorting" tabindex="0" aria-controls="kt_ecommerce_report_customer_orders_table" rowspan="1" colspan="1" aria-label="Total: activate to sort column ascending" style="width: 146.016px;"> # </th>
													</tr>
													<!--end::Table row-->
												</thead>
												<!--end::Table head-->
												<!--begin::Table body-->
												<tbody class="fw-semibold text-gray-600">
													<!--begin::Table row-->
													<!--end::Table row-->
													{promo_list}
												</tbody>
												<!--end::Table body-->
											</table>
										</div>
									</div>
									<!--end::Table-->
								</div>
								<!--end::Card body-->
							</div>
						</div>
						<!--end::Card header-->
					</div>
					<!--end::Start block-->
				</div>
			</div>
			<!--end::Content container-->
		</div>
		<!--end::Content-->
	</div>
	<!--end::Content wrapper-->
	