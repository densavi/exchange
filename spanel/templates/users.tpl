<div class="d-flex flex-column flex-column-fluid">
	<!--begin::Toolbar-->
	<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
		<!--begin::Toolbar container-->
		<div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack">
			<!--begin::Page title-->
			<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
				<!--begin::Title-->
				<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Users list</h1>
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
					<li class="breadcrumb-item text-muted">Users</li>
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
			<div class="card mb-5 mb-xl-8">
				<!--begin::Header-->
				<div class="card-header border-0 pt-5">
					<div class="card-title">
						<!--begin::Search-->
						<div class="d-flex align-items-center position-relative my-1">
							<form action="users" method="get" style="display: inline-flex;">
								<input name="email" type="email" value="" class="form-control form-control-solid" placeholder="user@mail.com">
								<button class="ms-2 btn btn-light btn-sm px-4">
									<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor"></rect>
										<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="currentColor"></path>
									</svg>
								</button>
							</form>
						</div>
						<!--end::Search-->
					</div>
					
					
					[online]
					<div class="card-toolbar"> 
						<a href="?user=online" class="btn btn-outline btn-outline-dashed btn-outline-success btn-sm px-4">
							<span class="svg-icon svg-icon-2">
								<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M19.0759 3H4.72777C3.95892 3 3.47768 3.83148 3.86067 4.49814L8.56967 12.6949C9.17923 13.7559 9.5 14.9582 9.5 16.1819V19.5072C9.5 20.2189 10.2223 20.7028 10.8805 20.432L13.8805 19.1977C14.2553 19.0435 14.5 18.6783 14.5 18.273V13.8372C14.5 12.8089 14.8171 11.8056 15.408 10.964L19.8943 4.57465C20.3596 3.912 19.8856 3 19.0759 3Z" fill="currentColor"></path>
								</svg>
							</span>Show Online users
						</a> 
					</div>
					[/online]
					[offline]
					<div class="card-toolbar"> 
						<a href="users" class="btn btn-outline btn-outline-dashed btn-outline-danger btn-sm px-4">
							<span class="svg-icon svg-icon-2">
								<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M19.0759 3H4.72777C3.95892 3 3.47768 3.83148 3.86067 4.49814L8.56967 12.6949C9.17923 13.7559 9.5 14.9582 9.5 16.1819V19.5072C9.5 20.2189 10.2223 20.7028 10.8805 20.432L13.8805 19.1977C14.2553 19.0435 14.5 18.6783 14.5 18.273V13.8372C14.5 12.8089 14.8171 11.8056 15.408 10.964L19.8943 4.57465C20.3596 3.912 19.8856 3 19.0759 3Z" fill="currentColor"></path>
								</svg>
							</span>Show Offline users
						</a> 
					</div>
					[/offline]
				</div>
				<!--end::Header-->
				<!--begin::Body-->
				<div class="card-body py-3">
					<!--begin::Table container-->
					<div class="table-responsive">
						<!--begin::Table-->
						<table class="table align-middle gs-0 gy-4 table-row-dashed table-hover">
							<!--begin::Table head-->
							<thead>
								<tr class="fw-bold text-muted">
									<th class="ps-4 min-w-300px rounded-start">User</th>
									<th class="min-w-125px">Domain / Promo</th>
									<th class="min-w-125px">Registration date</th>
									<th class="min-w-200px"></th>
								</tr>
							</thead>
							<!--end::Table head-->
							<!--begin::Table body-->
							<tbody>
								{user_list}
							</tbody>
							<!--end::Table body-->
						</table>
						<!--end::Table-->
						<hr>
						{paginator}
						
						<!-- <p style="font-size: 12px; color: #a3a4bd; font-weight: 400;">You are in page 1 of 5</p>  -->
						<!-- <span style="position: absolute; right: 0%; width: 290px; margin-top: -39px; height: 49px; padding-top: 13px;"> -->
							<!-- <a href="users?page=1" style="border: 1px solid #a3a4b6; padding: 5px; color: #a3a4b6; border-radius: 5px; margin-right: 5px;">FIRST</a> -->
							<!-- <a href="users?page=1" style="border: 1px solid #a3a4b6; padding: 5px; color: #a3a4b6; border-radius: 5px; margin-right: 5px;">PREVIOUS</a> -->
							<!-- <a href="users?page=1" style="border: 1px solid #a3a4b6; padding: 5px; color: #a3a4b6; border-radius: 5px; margin-right: 5px;">NEXT</a> -->
							<!-- <a href="users?page=5" style="border: 1px solid #a3a4b6; padding: 5px; color: #a3a4b6; border-radius: 5px; margin-right: 5px;">LAST</a> -->
						<!-- </span> -->
						
					</div>
					<!--end::Table container-->
				</div>
				<!--begin::Body-->
			</div>
		</div>
		<!--end::Content container-->
	</div>
	<!--end::Content-->
</div>