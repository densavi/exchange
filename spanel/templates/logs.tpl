<div class="d-flex flex-column flex-column-fluid">
							<!--begin::Toolbar-->
							<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
								<!--begin::Toolbar container-->
								<div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack">
									<!--begin::Page title-->
									<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
										<!--begin::Title-->
										<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Users logs</h1>
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
											<li class="breadcrumb-item text-muted">Logs</li>
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


									<div class="card pt-4">
										<!--begin::Card header-->
										<div class="card-header border-0">
											<!--begin::Card title-->
											<div class="card-title">
												<h2>Logs</h2>
											</div>
											<!--end::Card title-->
											
										</div>
										<!--end::Card header-->
										<!--begin::Card body-->
										<div class="card-body py-0">
											<!--begin::Table wrapper-->
											<div class="table-responsive">
												<!--begin::Table-->
												<table class="table table-hover align-middle table-row-dashed fs-6 gy-5" id="kt_table_customers_logs">
												    <thead>
														<tr class="fw-bold text-muted">
															
															<th class="min-w-120px">User</th>
															<th class="min-w-120px">Log</th>
															<th class="min-w-120px">Date</th>
															<th class="min-w-100px">IP</th>
														</tr>
													</thead>
													<!--begin::Table body-->
													<tbody>{spanel_logs}</tbody>
													<!--end::Table body-->
													
												</table>
												{paginator}
												<!--end::Table-->
											</div>
											
											<!--end::Table wrapper-->
										</div>
										
										<!--end::Card body-->
									</div>

									
								</div>
								
								<!--end::Content container-->
							</div>
							<!--end::Content-->
						</div>