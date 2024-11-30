<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head><base href=""/>
        <title>Binding | Partner Panel</title>
		<meta charset="utf-8" />
		<meta name="description" content="Partner Panel" />
		<meta name="keywords" content="Partner Panel" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Partner Panel" />
		<meta property="og:site_name" content="Partner Panel" />
		<link rel="shortcut icon" href="/spanel/templates/res/images/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="/spanel/templates/res/css/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/spanel/templates/res/css/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="/spanel/templates/res/css/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/spanel/templates/res/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/spanel/templates/res/css/spcustom.css" rel="stylesheet" type="text/css" />
		<link href="/spanel/templates/res/css/toastr.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="/spanel/templates/res/css/morris.css">
		<script src="/spanel/templates/res/js/jquery-3.4.1.min.js"></script>
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
		<!--end::Global Stylesheets Bundle-->
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default" >
		
		<!--
		<script>
		  setInterval(function() {
		    $.ajax({
		      url: "../ajax/function",
		      type: "POST",
		      data: {
		        action: "REQUEST_TOKEN"
		      },
		      success: function(response) {
		        if(response == "timeout") {
		          setTimeout(function() {
		            location.replace("../logout");
		          }, 200);
		        }
		      }
		    })
		  }, 5000);
		</script>
		-->
		
		<!--begin::Theme mode setup on page load-->
		<script>
		var defaultThemeMode = "light"; 
		var themeMode; 
		if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-theme-mode")) { themeMode = document.documentElement.getAttribute("data-theme-mode"); } else { if ( localStorage.getItem("data-theme") !== null ) { themeMode = localStorage.getItem("data-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::App-->
		<div class="d-flex flex-column flex-root app-root" id="kt_app_root">
			<!--begin::Page-->
			<div class="app-page flex-column flex-column-fluid" id="kt_app_page">
				<!--begin::Header-->
				<div id="kt_app_header" class="app-header">
					<!--begin::Header container-->
					<div class="app-container container-fluid d-flex align-items-stretch justify-content-between" id="kt_app_header_container">
						<!--begin::Sidebar mobile toggle-->
						<div class="d-flex align-items-center d-lg-none ms-n3 me-1 me-md-2" title="Show sidebar menu">
							<div class="btn btn-icon btn-active-color-primary w-35px h-35px" id="kt_app_sidebar_mobile_toggle">
								<!--begin::Svg Icon | path: icons/duotune/abstract/abs015.svg-->
								<span class="svg-icon svg-icon-2 svg-icon-md-1">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M21 7H3C2.4 7 2 6.6 2 6V4C2 3.4 2.4 3 3 3H21C21.6 3 22 3.4 22 4V6C22 6.6 21.6 7 21 7Z" fill="currentColor" />
										<path opacity="0.3" d="M21 14H3C2.4 14 2 13.6 2 13V11C2 10.4 2.4 10 3 10H21C21.6 10 22 10.4 22 11V13C22 13.6 21.6 14 21 14ZM22 20V18C22 17.4 21.6 17 21 17H3C2.4 17 2 17.4 2 18V20C2 20.6 2.4 21 3 21H21C21.6 21 22 20.6 22 20Z" fill="currentColor" />
									</svg>
								</span>
								<!--end::Svg Icon-->
							</div>
						</div>
						<!--end::Sidebar mobile toggle-->
						<!--begin::Mobile logo-->
						<div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
							<a href="#" class="d-lg-none">
								<img alt="Logo" src="/spanel/templates/res/images/default-small.svg" class="h-30px" />
							</a>
						</div>
						<!--end::Mobile logo-->
						<!--begin::Header wrapper-->
						<div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1" id="kt_app_header_wrapper" style="flex-grow: 0 !important;">
	
							<!--begin::Navbar-->
							<div class="app-navbar flex-shrink-0">


								<!--begin::Theme mode-->
								<div class="app-navbar-item ms-1 ms-md-3">
									<!--begin::Menu toggle-->
									<a href="#" class="btn btn-icon btn-custom btn-icon-muted btn-active-light btn-active-color-primary w-30px h-30px w-md-40px h-md-40px" data-kt-menu-trigger="{default:'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
										<!--begin::Svg Icon | path: icons/duotune/general/gen060.svg-->
										<span class="svg-icon theme-light-show svg-icon-2">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M11.9905 5.62598C10.7293 5.62574 9.49646 5.9995 8.44775 6.69997C7.39903 7.40045 6.58159 8.39619 6.09881 9.56126C5.61603 10.7263 5.48958 12.0084 5.73547 13.2453C5.98135 14.4823 6.58852 15.6185 7.48019 16.5104C8.37186 17.4022 9.50798 18.0096 10.7449 18.2557C11.9818 18.5019 13.2639 18.3757 14.429 17.8931C15.5942 17.4106 16.5901 16.5933 17.2908 15.5448C17.9915 14.4962 18.3655 13.2634 18.3655 12.0023C18.3637 10.3119 17.6916 8.69129 16.4964 7.49593C15.3013 6.30056 13.6808 5.62806 11.9905 5.62598Z" fill="currentColor" />
												<path d="M22.1258 10.8771H20.627C20.3286 10.8771 20.0424 10.9956 19.8314 11.2066C19.6204 11.4176 19.5018 11.7038 19.5018 12.0023C19.5018 12.3007 19.6204 12.5869 19.8314 12.7979C20.0424 13.0089 20.3286 13.1274 20.627 13.1274H22.1258C22.4242 13.1274 22.7104 13.0089 22.9214 12.7979C23.1324 12.5869 23.2509 12.3007 23.2509 12.0023C23.2509 11.7038 23.1324 11.4176 22.9214 11.2066C22.7104 10.9956 22.4242 10.8771 22.1258 10.8771Z" fill="currentColor" />
												<path d="M11.9905 19.4995C11.6923 19.5 11.4064 19.6187 11.1956 19.8296C10.9848 20.0405 10.8663 20.3265 10.866 20.6247V22.1249C10.866 22.4231 10.9845 22.7091 11.1953 22.9199C11.4062 23.1308 11.6922 23.2492 11.9904 23.2492C12.2886 23.2492 12.5746 23.1308 12.7854 22.9199C12.9963 22.7091 13.1147 22.4231 13.1147 22.1249V20.6247C13.1145 20.3265 12.996 20.0406 12.7853 19.8296C12.5745 19.6187 12.2887 19.5 11.9905 19.4995Z" fill="currentColor" />
												<path d="M4.49743 12.0023C4.49718 11.704 4.37865 11.4181 4.16785 11.2072C3.95705 10.9962 3.67119 10.8775 3.37298 10.8771H1.87445C1.57603 10.8771 1.28984 10.9956 1.07883 11.2066C0.867812 11.4176 0.749266 11.7038 0.749266 12.0023C0.749266 12.3007 0.867812 12.5869 1.07883 12.7979C1.28984 13.0089 1.57603 13.1274 1.87445 13.1274H3.37299C3.6712 13.127 3.95706 13.0083 4.16785 12.7973C4.37865 12.5864 4.49718 12.3005 4.49743 12.0023Z" fill="currentColor" />
												<path d="M11.9905 4.50058C12.2887 4.50012 12.5745 4.38141 12.7853 4.17048C12.9961 3.95954 13.1147 3.67361 13.1149 3.3754V1.87521C13.1149 1.57701 12.9965 1.29103 12.7856 1.08017C12.5748 0.869313 12.2888 0.750854 11.9906 0.750854C11.6924 0.750854 11.4064 0.869313 11.1955 1.08017C10.9847 1.29103 10.8662 1.57701 10.8662 1.87521V3.3754C10.8664 3.67359 10.9849 3.95952 11.1957 4.17046C11.4065 4.3814 11.6923 4.50012 11.9905 4.50058Z" fill="currentColor" />
												<path d="M18.8857 6.6972L19.9465 5.63642C20.0512 5.53209 20.1343 5.40813 20.1911 5.27163C20.2479 5.13513 20.2772 4.98877 20.2774 4.84093C20.2775 4.69309 20.2485 4.54667 20.192 4.41006C20.1355 4.27344 20.0526 4.14932 19.948 4.04478C19.8435 3.94024 19.7194 3.85734 19.5828 3.80083C19.4462 3.74432 19.2997 3.71531 19.1519 3.71545C19.0041 3.7156 18.8577 3.7449 18.7212 3.80167C18.5847 3.85845 18.4607 3.94159 18.3564 4.04633L17.2956 5.10714C17.1909 5.21147 17.1077 5.33543 17.0509 5.47194C16.9942 5.60844 16.9649 5.7548 16.9647 5.90264C16.9646 6.05048 16.9936 6.19689 17.0501 6.33351C17.1066 6.47012 17.1895 6.59425 17.294 6.69878C17.3986 6.80332 17.5227 6.88621 17.6593 6.94272C17.7959 6.99923 17.9424 7.02824 18.0902 7.02809C18.238 7.02795 18.3844 6.99865 18.5209 6.94187C18.6574 6.88509 18.7814 6.80195 18.8857 6.6972Z" fill="currentColor" />
												<path d="M18.8855 17.3073C18.7812 17.2026 18.6572 17.1195 18.5207 17.0627C18.3843 17.006 18.2379 16.9767 18.0901 16.9766C17.9423 16.9764 17.7959 17.0055 17.6593 17.062C17.5227 17.1185 17.3986 17.2014 17.2941 17.3059C17.1895 17.4104 17.1067 17.5345 17.0501 17.6711C16.9936 17.8077 16.9646 17.9541 16.9648 18.1019C16.9649 18.2497 16.9942 18.3961 17.0509 18.5326C17.1077 18.6691 17.1908 18.793 17.2955 18.8974L18.3563 19.9582C18.4606 20.0629 18.5846 20.146 18.721 20.2027C18.8575 20.2595 19.0039 20.2887 19.1517 20.2889C19.2995 20.289 19.4459 20.26 19.5825 20.2035C19.7191 20.147 19.8432 20.0641 19.9477 19.9595C20.0523 19.855 20.1351 19.7309 20.1916 19.5943C20.2482 19.4577 20.2772 19.3113 20.277 19.1635C20.2769 19.0157 20.2476 18.8694 20.1909 18.7329C20.1341 18.5964 20.051 18.4724 19.9463 18.3681L18.8855 17.3073Z" fill="currentColor" />
												<path d="M5.09528 17.3072L4.0345 18.368C3.92972 18.4723 3.84655 18.5963 3.78974 18.7328C3.73294 18.8693 3.70362 19.0156 3.70346 19.1635C3.7033 19.3114 3.7323 19.4578 3.78881 19.5944C3.84532 19.7311 3.92822 19.8552 4.03277 19.9598C4.13732 20.0643 4.26147 20.1472 4.3981 20.2037C4.53473 20.2602 4.68117 20.2892 4.82902 20.2891C4.97688 20.2889 5.12325 20.2596 5.25976 20.2028C5.39627 20.146 5.52024 20.0628 5.62456 19.958L6.68536 18.8973C6.79007 18.7929 6.87318 18.6689 6.92993 18.5325C6.98667 18.396 7.01595 18.2496 7.01608 18.1018C7.01621 17.954 6.98719 17.8076 6.93068 17.671C6.87417 17.5344 6.79129 17.4103 6.68676 17.3058C6.58224 17.2012 6.45813 17.1183 6.32153 17.0618C6.18494 17.0053 6.03855 16.9763 5.89073 16.9764C5.74291 16.9766 5.59657 17.0058 5.46007 17.0626C5.32358 17.1193 5.19962 17.2024 5.09528 17.3072Z" fill="currentColor" />
												<path d="M5.09541 6.69715C5.19979 6.8017 5.32374 6.88466 5.4602 6.94128C5.59665 6.9979 5.74292 7.02708 5.89065 7.02714C6.03839 7.0272 6.18469 6.99815 6.32119 6.94164C6.45769 6.88514 6.58171 6.80228 6.68618 6.69782C6.79064 6.59336 6.87349 6.46933 6.93 6.33283C6.9865 6.19633 7.01556 6.05003 7.01549 5.9023C7.01543 5.75457 6.98625 5.60829 6.92963 5.47184C6.87301 5.33539 6.79005 5.21143 6.6855 5.10706L5.6247 4.04626C5.5204 3.94137 5.39643 3.8581 5.25989 3.80121C5.12335 3.74432 4.97692 3.71493 4.82901 3.71472C4.68109 3.71452 4.53458 3.7435 4.39789 3.80001C4.26119 3.85652 4.13699 3.93945 4.03239 4.04404C3.9278 4.14864 3.84487 4.27284 3.78836 4.40954C3.73185 4.54624 3.70287 4.69274 3.70308 4.84066C3.70329 4.98858 3.73268 5.135 3.78957 5.27154C3.84646 5.40808 3.92974 5.53205 4.03462 5.63635L5.09541 6.69715Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
										<!--begin::Svg Icon | path: icons/duotune/general/gen061.svg-->
										<span class="svg-icon theme-dark-show svg-icon-2">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M19.0647 5.43757C19.3421 5.43757 19.567 5.21271 19.567 4.93534C19.567 4.65796 19.3421 4.43311 19.0647 4.43311C18.7874 4.43311 18.5625 4.65796 18.5625 4.93534C18.5625 5.21271 18.7874 5.43757 19.0647 5.43757Z" fill="currentColor" />
												<path d="M20.0692 9.48884C20.3466 9.48884 20.5714 9.26398 20.5714 8.98661C20.5714 8.70923 20.3466 8.48438 20.0692 8.48438C19.7918 8.48438 19.567 8.70923 19.567 8.98661C19.567 9.26398 19.7918 9.48884 20.0692 9.48884Z" fill="currentColor" />
												<path d="M12.0335 20.5714C15.6943 20.5714 18.9426 18.2053 20.1168 14.7338C20.1884 14.5225 20.1114 14.289 19.9284 14.161C19.746 14.034 19.5003 14.0418 19.3257 14.1821C18.2432 15.0546 16.9371 15.5156 15.5491 15.5156C12.2257 15.5156 9.48884 12.8122 9.48884 9.48886C9.48884 7.41079 10.5773 5.47137 12.3449 4.35752C12.5342 4.23832 12.6 4.00733 12.5377 3.79251C12.4759 3.57768 12.2571 3.42859 12.0335 3.42859C7.32556 3.42859 3.42857 7.29209 3.42857 12C3.42857 16.7079 7.32556 20.5714 12.0335 20.5714Z" fill="currentColor" />
												<path d="M13.0379 7.47998C13.8688 7.47998 14.5446 8.15585 14.5446 8.98668C14.5446 9.26428 14.7693 9.48891 15.0469 9.48891C15.3245 9.48891 15.5491 9.26428 15.5491 8.98668C15.5491 8.15585 16.225 7.47998 17.0558 7.47998C17.3334 7.47998 17.558 7.25535 17.558 6.97775C17.558 6.70015 17.3334 6.47552 17.0558 6.47552C16.225 6.47552 15.5491 5.76616 15.5491 4.93534C15.5491 4.65774 15.3245 4.43311 15.0469 4.43311C14.7693 4.43311 14.5446 4.65774 14.5446 4.93534C14.5446 5.76616 13.8688 6.47552 13.0379 6.47552C12.7603 6.47552 12.5357 6.70015 12.5357 6.97775C12.5357 7.25535 12.7603 7.47998 13.0379 7.47998Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</a>
									<!--begin::Menu toggle-->
									<!--begin::Menu-->
									<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-title-gray-700 menu-icon-muted menu-active-bg menu-state-color fw-semibold py-4 fs-base w-150px" data-kt-menu="true" data-kt-element="theme-mode-menu">
										<!--begin::Menu item-->
										<div class="menu-item px-3 my-0">
											<a href="#" class="menu-link px-3 py-2" data-kt-element="mode" data-kt-value="light">
												<span class="menu-icon" data-kt-element="icon">
													<!--begin::Svg Icon | path: icons/duotune/general/gen060.svg-->
													<span class="svg-icon svg-icon-3">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path d="M11.9905 5.62598C10.7293 5.62574 9.49646 5.9995 8.44775 6.69997C7.39903 7.40045 6.58159 8.39619 6.09881 9.56126C5.61603 10.7263 5.48958 12.0084 5.73547 13.2453C5.98135 14.4823 6.58852 15.6185 7.48019 16.5104C8.37186 17.4022 9.50798 18.0096 10.7449 18.2557C11.9818 18.5019 13.2639 18.3757 14.429 17.8931C15.5942 17.4106 16.5901 16.5933 17.2908 15.5448C17.9915 14.4962 18.3655 13.2634 18.3655 12.0023C18.3637 10.3119 17.6916 8.69129 16.4964 7.49593C15.3013 6.30056 13.6808 5.62806 11.9905 5.62598Z" fill="currentColor" />
															<path d="M22.1258 10.8771H20.627C20.3286 10.8771 20.0424 10.9956 19.8314 11.2066C19.6204 11.4176 19.5018 11.7038 19.5018 12.0023C19.5018 12.3007 19.6204 12.5869 19.8314 12.7979C20.0424 13.0089 20.3286 13.1274 20.627 13.1274H22.1258C22.4242 13.1274 22.7104 13.0089 22.9214 12.7979C23.1324 12.5869 23.2509 12.3007 23.2509 12.0023C23.2509 11.7038 23.1324 11.4176 22.9214 11.2066C22.7104 10.9956 22.4242 10.8771 22.1258 10.8771Z" fill="currentColor" />
															<path d="M11.9905 19.4995C11.6923 19.5 11.4064 19.6187 11.1956 19.8296C10.9848 20.0405 10.8663 20.3265 10.866 20.6247V22.1249C10.866 22.4231 10.9845 22.7091 11.1953 22.9199C11.4062 23.1308 11.6922 23.2492 11.9904 23.2492C12.2886 23.2492 12.5746 23.1308 12.7854 22.9199C12.9963 22.7091 13.1147 22.4231 13.1147 22.1249V20.6247C13.1145 20.3265 12.996 20.0406 12.7853 19.8296C12.5745 19.6187 12.2887 19.5 11.9905 19.4995Z" fill="currentColor" />
															<path d="M4.49743 12.0023C4.49718 11.704 4.37865 11.4181 4.16785 11.2072C3.95705 10.9962 3.67119 10.8775 3.37298 10.8771H1.87445C1.57603 10.8771 1.28984 10.9956 1.07883 11.2066C0.867812 11.4176 0.749266 11.7038 0.749266 12.0023C0.749266 12.3007 0.867812 12.5869 1.07883 12.7979C1.28984 13.0089 1.57603 13.1274 1.87445 13.1274H3.37299C3.6712 13.127 3.95706 13.0083 4.16785 12.7973C4.37865 12.5864 4.49718 12.3005 4.49743 12.0023Z" fill="currentColor" />
															<path d="M11.9905 4.50058C12.2887 4.50012 12.5745 4.38141 12.7853 4.17048C12.9961 3.95954 13.1147 3.67361 13.1149 3.3754V1.87521C13.1149 1.57701 12.9965 1.29103 12.7856 1.08017C12.5748 0.869313 12.2888 0.750854 11.9906 0.750854C11.6924 0.750854 11.4064 0.869313 11.1955 1.08017C10.9847 1.29103 10.8662 1.57701 10.8662 1.87521V3.3754C10.8664 3.67359 10.9849 3.95952 11.1957 4.17046C11.4065 4.3814 11.6923 4.50012 11.9905 4.50058Z" fill="currentColor" />
															<path d="M18.8857 6.6972L19.9465 5.63642C20.0512 5.53209 20.1343 5.40813 20.1911 5.27163C20.2479 5.13513 20.2772 4.98877 20.2774 4.84093C20.2775 4.69309 20.2485 4.54667 20.192 4.41006C20.1355 4.27344 20.0526 4.14932 19.948 4.04478C19.8435 3.94024 19.7194 3.85734 19.5828 3.80083C19.4462 3.74432 19.2997 3.71531 19.1519 3.71545C19.0041 3.7156 18.8577 3.7449 18.7212 3.80167C18.5847 3.85845 18.4607 3.94159 18.3564 4.04633L17.2956 5.10714C17.1909 5.21147 17.1077 5.33543 17.0509 5.47194C16.9942 5.60844 16.9649 5.7548 16.9647 5.90264C16.9646 6.05048 16.9936 6.19689 17.0501 6.33351C17.1066 6.47012 17.1895 6.59425 17.294 6.69878C17.3986 6.80332 17.5227 6.88621 17.6593 6.94272C17.7959 6.99923 17.9424 7.02824 18.0902 7.02809C18.238 7.02795 18.3844 6.99865 18.5209 6.94187C18.6574 6.88509 18.7814 6.80195 18.8857 6.6972Z" fill="currentColor" />
															<path d="M18.8855 17.3073C18.7812 17.2026 18.6572 17.1195 18.5207 17.0627C18.3843 17.006 18.2379 16.9767 18.0901 16.9766C17.9423 16.9764 17.7959 17.0055 17.6593 17.062C17.5227 17.1185 17.3986 17.2014 17.2941 17.3059C17.1895 17.4104 17.1067 17.5345 17.0501 17.6711C16.9936 17.8077 16.9646 17.9541 16.9648 18.1019C16.9649 18.2497 16.9942 18.3961 17.0509 18.5326C17.1077 18.6691 17.1908 18.793 17.2955 18.8974L18.3563 19.9582C18.4606 20.0629 18.5846 20.146 18.721 20.2027C18.8575 20.2595 19.0039 20.2887 19.1517 20.2889C19.2995 20.289 19.4459 20.26 19.5825 20.2035C19.7191 20.147 19.8432 20.0641 19.9477 19.9595C20.0523 19.855 20.1351 19.7309 20.1916 19.5943C20.2482 19.4577 20.2772 19.3113 20.277 19.1635C20.2769 19.0157 20.2476 18.8694 20.1909 18.7329C20.1341 18.5964 20.051 18.4724 19.9463 18.3681L18.8855 17.3073Z" fill="currentColor" />
															<path d="M5.09528 17.3072L4.0345 18.368C3.92972 18.4723 3.84655 18.5963 3.78974 18.7328C3.73294 18.8693 3.70362 19.0156 3.70346 19.1635C3.7033 19.3114 3.7323 19.4578 3.78881 19.5944C3.84532 19.7311 3.92822 19.8552 4.03277 19.9598C4.13732 20.0643 4.26147 20.1472 4.3981 20.2037C4.53473 20.2602 4.68117 20.2892 4.82902 20.2891C4.97688 20.2889 5.12325 20.2596 5.25976 20.2028C5.39627 20.146 5.52024 20.0628 5.62456 19.958L6.68536 18.8973C6.79007 18.7929 6.87318 18.6689 6.92993 18.5325C6.98667 18.396 7.01595 18.2496 7.01608 18.1018C7.01621 17.954 6.98719 17.8076 6.93068 17.671C6.87417 17.5344 6.79129 17.4103 6.68676 17.3058C6.58224 17.2012 6.45813 17.1183 6.32153 17.0618C6.18494 17.0053 6.03855 16.9763 5.89073 16.9764C5.74291 16.9766 5.59657 17.0058 5.46007 17.0626C5.32358 17.1193 5.19962 17.2024 5.09528 17.3072Z" fill="currentColor" />
															<path d="M5.09541 6.69715C5.19979 6.8017 5.32374 6.88466 5.4602 6.94128C5.59665 6.9979 5.74292 7.02708 5.89065 7.02714C6.03839 7.0272 6.18469 6.99815 6.32119 6.94164C6.45769 6.88514 6.58171 6.80228 6.68618 6.69782C6.79064 6.59336 6.87349 6.46933 6.93 6.33283C6.9865 6.19633 7.01556 6.05003 7.01549 5.9023C7.01543 5.75457 6.98625 5.60829 6.92963 5.47184C6.87301 5.33539 6.79005 5.21143 6.6855 5.10706L5.6247 4.04626C5.5204 3.94137 5.39643 3.8581 5.25989 3.80121C5.12335 3.74432 4.97692 3.71493 4.82901 3.71472C4.68109 3.71452 4.53458 3.7435 4.39789 3.80001C4.26119 3.85652 4.13699 3.93945 4.03239 4.04404C3.9278 4.14864 3.84487 4.27284 3.78836 4.40954C3.73185 4.54624 3.70287 4.69274 3.70308 4.84066C3.70329 4.98858 3.73268 5.135 3.78957 5.27154C3.84646 5.40808 3.92974 5.53205 4.03462 5.63635L5.09541 6.69715Z" fill="currentColor" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</span>
												<span class="menu-title">Light</span>
											</a>
										</div>
										<!--end::Menu item-->
										<!--begin::Menu item-->
										<div class="menu-item px-3 my-0">
											<a href="#" class="menu-link px-3 py-2" data-kt-element="mode" data-kt-value="dark">
												<span class="menu-icon" data-kt-element="icon">
													<!--begin::Svg Icon | path: icons/duotune/general/gen061.svg-->
													<span class="svg-icon svg-icon-3">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path d="M19.0647 5.43757C19.3421 5.43757 19.567 5.21271 19.567 4.93534C19.567 4.65796 19.3421 4.43311 19.0647 4.43311C18.7874 4.43311 18.5625 4.65796 18.5625 4.93534C18.5625 5.21271 18.7874 5.43757 19.0647 5.43757Z" fill="currentColor" />
															<path d="M20.0692 9.48884C20.3466 9.48884 20.5714 9.26398 20.5714 8.98661C20.5714 8.70923 20.3466 8.48438 20.0692 8.48438C19.7918 8.48438 19.567 8.70923 19.567 8.98661C19.567 9.26398 19.7918 9.48884 20.0692 9.48884Z" fill="currentColor" />
															<path d="M12.0335 20.5714C15.6943 20.5714 18.9426 18.2053 20.1168 14.7338C20.1884 14.5225 20.1114 14.289 19.9284 14.161C19.746 14.034 19.5003 14.0418 19.3257 14.1821C18.2432 15.0546 16.9371 15.5156 15.5491 15.5156C12.2257 15.5156 9.48884 12.8122 9.48884 9.48886C9.48884 7.41079 10.5773 5.47137 12.3449 4.35752C12.5342 4.23832 12.6 4.00733 12.5377 3.79251C12.4759 3.57768 12.2571 3.42859 12.0335 3.42859C7.32556 3.42859 3.42857 7.29209 3.42857 12C3.42857 16.7079 7.32556 20.5714 12.0335 20.5714Z" fill="currentColor" />
															<path d="M13.0379 7.47998C13.8688 7.47998 14.5446 8.15585 14.5446 8.98668C14.5446 9.26428 14.7693 9.48891 15.0469 9.48891C15.3245 9.48891 15.5491 9.26428 15.5491 8.98668C15.5491 8.15585 16.225 7.47998 17.0558 7.47998C17.3334 7.47998 17.558 7.25535 17.558 6.97775C17.558 6.70015 17.3334 6.47552 17.0558 6.47552C16.225 6.47552 15.5491 5.76616 15.5491 4.93534C15.5491 4.65774 15.3245 4.43311 15.0469 4.43311C14.7693 4.43311 14.5446 4.65774 14.5446 4.93534C14.5446 5.76616 13.8688 6.47552 13.0379 6.47552C12.7603 6.47552 12.5357 6.70015 12.5357 6.97775C12.5357 7.25535 12.7603 7.47998 13.0379 7.47998Z" fill="currentColor" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</span>
												<span class="menu-title">Dark</span>
											</a>
										</div>
										<!--end::Menu item-->
										<!--begin::Menu item-->
										<div class="menu-item px-3 my-0">
											<a href="#" class="menu-link px-3 py-2" data-kt-element="mode" data-kt-value="system">
												<span class="menu-icon" data-kt-element="icon">
													<!--begin::Svg Icon | path: icons/duotune/general/gen062.svg-->
													<span class="svg-icon svg-icon-3">
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path fill-rule="evenodd" clip-rule="evenodd" d="M1.34375 3.9463V15.2178C1.34375 16.119 2.08105 16.8563 2.98219 16.8563H8.65093V19.4594H6.15702C5.38853 19.4594 4.75981 19.9617 4.75981 20.5757V21.6921H19.2403V20.5757C19.2403 19.9617 18.6116 19.4594 17.8431 19.4594H15.3492V16.8563H21.0179C21.919 16.8563 22.6562 16.119 22.6562 15.2178V3.9463C22.6562 3.04516 21.9189 2.30786 21.0179 2.30786H2.98219C2.08105 2.30786 1.34375 3.04516 1.34375 3.9463ZM12.9034 9.9016C13.241 9.98792 13.5597 10.1216 13.852 10.2949L15.0393 9.4353L15.9893 10.3853L15.1297 11.5727C15.303 11.865 15.4366 12.1837 15.523 12.5212L16.97 12.7528V13.4089H13.9851C13.9766 12.3198 13.0912 11.4394 12 11.4394C10.9089 11.4394 10.0235 12.3198 10.015 13.4089H7.03006V12.7528L8.47712 12.5211C8.56345 12.1836 8.69703 11.8649 8.87037 11.5727L8.0107 10.3853L8.96078 9.4353L10.148 10.2949C10.4404 10.1215 10.759 9.98788 11.0966 9.9016L11.3282 8.45467H12.6718L12.9034 9.9016ZM16.1353 7.93758C15.6779 7.93758 15.3071 7.56681 15.3071 7.1094C15.3071 6.652 15.6779 6.28122 16.1353 6.28122C16.5926 6.28122 16.9634 6.652 16.9634 7.1094C16.9634 7.56681 16.5926 7.93758 16.1353 7.93758ZM2.71385 14.0964V3.90518C2.71385 3.78023 2.81612 3.67796 2.94107 3.67796H21.0589C21.1839 3.67796 21.2861 3.78023 21.2861 3.90518V14.0964C15.0954 14.0964 8.90462 14.0964 2.71385 14.0964Z" fill="currentColor" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</span>
												<span class="menu-title">System</span>
											</a>
										</div>
										<!--end::Menu item-->
									</div>
									<!--end::Menu-->
								</div>
								<!--end::Theme mode-->
								<!--begin::User menu-->
								<div class="app-navbar-item ms-1 ms-md-3" id="kt_header_user_menu_toggle">
									<!--begin::Menu wrapper-->
									<div class="cursor-pointer symbol symbol-30px symbol-md-40px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
										<img src="{photo}" alt="user" />
									</div>
									<!--begin::User account menu-->
									<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px" data-kt-menu="true">
										<!--begin::Menu item-->
										<div class="menu-item px-3">
											<div class="menu-content d-flex align-items-center px-3">
												<!--begin::Avatar-->
												<div class="symbol symbol-50px me-5">
													<img alt="Logo" src="{photo}" />
												</div>
												<!--end::Avatar-->
												<!--begin::Username-->
												<div class="d-flex flex-column">
													<div class="fw-bold d-flex align-items-center fs-5">{username}													<span class="badge badge-light-success fw-bold fs-8 px-2 py-1 ms-2">Worker</span></div>
													<a href="#" class="fw-semibold text-muted text-hover-primary fs-7">{email}</a>
												</div>
												<!--end::Username-->
											</div>
										</div>
										<!--end::Menu item-->
										<!--begin::Menu separator-->
										<div class="separator my-2"></div>
										<!--end::Menu separator-->
										<!--begin::Menu item-->
										<div class="menu-item px-5">
											<a href="../profile/wallet" class="menu-link px-5">My Profile</a>
										</div>
										<!--end::Menu item-->
				
										<!--begin::Menu separator-->
										<div class="separator my-2"></div>
										<!--end::Menu separator-->
										<!--begin::Menu item-->
										<div class="menu-item px-5" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="left-start" data-kt-menu-offset="-15px, 0">
											<a href="#" class="menu-link px-5">
												<span class="menu-title position-relative">Language												<span class="fs-8 rounded bg-light px-3 py-2 position-absolute translate-middle-y top-50 end-0">English
												<img class="w-15px h-15px rounded-1 ms-2" src="/spanel/templates/res/images/united-states.svg" alt="" /></span></span>
											</a>
											<!--begin::Menu sub-->
											<div class="menu-sub menu-sub-dropdown w-175px py-4">
												<!--begin::Menu item-->
												<div class="menu-item px-3">
													<a href="#" class="menu-link d-flex px-5 active">
													<span class="symbol symbol-20px me-4">
														<img class="rounded-1" src="/spanel/templates/res/images/united-states.svg" alt="" />
													</span>English</a>
												</div>
												<!--end::Menu item-->
											</div>
											<!--end::Menu sub-->
										</div>
										<!--end::Menu item-->
										<!--begin::Menu item-->
										<div class="menu-item px-5 my-1">
											<a href="settings" class="menu-link px-5">Settings</a>
										</div>
										<!--end::Menu item-->
										<!--begin::Menu item-->
										<div class="menu-item px-5">
											<a href="../logout" class="menu-link px-5">Sign out</a>
										</div>
										<!--end::Menu item-->
									</div>
									<!--end::User account menu-->
									<!--end::Menu wrapper-->
								</div>
								<!--end::User menu-->
								<!--begin::Header menu toggle-->
								<div class="app-navbar-item d-lg-none ms-2 me-n3" title="Show header menu">
									<div class="btn btn-icon btn-active-color-primary w-30px h-30px w-md-35px h-md-35px" id="kt_app_header_menu_toggle">
										<!--begin::Svg Icon | path: icons/duotune/text/txt001.svg-->
										<span class="svg-icon svg-icon-2 svg-icon-md-1">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M13 11H3C2.4 11 2 10.6 2 10V9C2 8.4 2.4 8 3 8H13C13.6 8 14 8.4 14 9V10C14 10.6 13.6 11 13 11ZM22 5V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4V5C2 5.6 2.4 6 3 6H21C21.6 6 22 5.6 22 5Z" fill="currentColor" />
												<path opacity="0.3" d="M21 16H3C2.4 16 2 15.6 2 15V14C2 13.4 2.4 13 3 13H21C21.6 13 22 13.4 22 14V15C22 15.6 21.6 16 21 16ZM14 20V19C14 18.4 13.6 18 13 18H3C2.4 18 2 18.4 2 19V20C2 20.6 2.4 21 3 21H13C13.6 21 14 20.6 14 20Z" fill="currentColor" />
											</svg>
										</span>
										<!--end::Svg Icon-->
									</div>
								</div>
								<!--end::Header menu toggle-->
							</div>
							<!--end::Navbar-->
						</div>
						<!--end::Header wrapper-->
					</div>
					<!--end::Header container-->
				</div>
				<!--end::Header-->
				<!--begin::Wrapper-->
				<div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
					<!--begin::Sidebar-->
					<div id="kt_app_sidebar" class="app-sidebar flex-column" data-kt-drawer="true" data-kt-drawer-name="app-sidebar" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_app_sidebar_mobile_toggle">
						<!--begin::Logo-->
						<div class="app-sidebar-logo px-6" id="kt_app_sidebar_logo">
							<!--begin::Logo image-->
							<a href="index">
								<img alt="Logo" src="/spanel/templates/res/images/splogo.png" class="h-25px app-sidebar-logo-default" style="margin-top: -8px;" />
								<img alt="Logo" src="/spanel/templates/res/images/splogo.png" class="h-20px app-sidebar-logo-minimize" />
								<span class="app-sidebar-logo-default" style="font-size: 22px; color: white; font-weight: bold; margin-bottom: 0; margin-left: 5px;">Partner Panel</span>
							</a>
							<!--end::Logo image-->
							<!--begin::Sidebar toggle-->
							<div id="kt_app_sidebar_toggle" class="app-sidebar-toggle btn btn-icon btn-shadow btn-sm btn-color-muted btn-active-color-primary body-bg h-30px w-30px position-absolute top-50 start-100 translate-middle rotate" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="app-sidebar-minimize">
								<!--begin::Svg Icon | path: icons/duotune/arrows/arr079.svg-->
								<span class="svg-icon svg-icon-2 rotate-180">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path opacity="0.5" d="M14.2657 11.4343L18.45 7.25C18.8642 6.83579 18.8642 6.16421 18.45 5.75C18.0358 5.33579 17.3642 5.33579 16.95 5.75L11.4071 11.2929C11.0166 11.6834 11.0166 12.3166 11.4071 12.7071L16.95 18.25C17.3642 18.6642 18.0358 18.6642 18.45 18.25C18.8642 17.8358 18.8642 17.1642 18.45 16.75L14.2657 12.5657C13.9533 12.2533 13.9533 11.7467 14.2657 11.4343Z" fill="currentColor" />
										<path d="M8.2657 11.4343L12.45 7.25C12.8642 6.83579 12.8642 6.16421 12.45 5.75C12.0358 5.33579 11.3642 5.33579 10.95 5.75L5.40712 11.2929C5.01659 11.6834 5.01659 12.3166 5.40712 12.7071L10.95 18.25C11.3642 18.6642 12.0358 18.6642 12.45 18.25C12.8642 17.8358 12.8642 17.1642 12.45 16.75L8.2657 12.5657C7.95328 12.2533 7.95328 11.7467 8.2657 11.4343Z" fill="currentColor" />
									</svg>
								</span>
								<!--end::Svg Icon-->
							</div>
							<!--end::Sidebar toggle-->
						</div>
						<!--end::Logo-->
						<!--begin::sidebar menu-->
						<div class="app-sidebar-menu overflow-hidden flex-column-fluid">
							<!--begin::Menu wrapper-->
							<div id="kt_app_sidebar_menu_wrapper" class="app-sidebar-wrapper hover-scroll-overlay-y my-5" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer" data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px" data-kt-scroll-save-state="true">
								<!--begin::Menu-->
								<div class="menu menu-column menu-rounded menu-sub-indention px-3" id="#kt_app_sidebar_menu" data-kt-menu="true" data-kt-menu-expand="false">
	
											
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item pt-5">
										<!--begin:Menu content-->
										<div class="menu-content">
											<span class="menu-heading fw-bold text-uppercase fs-7">Dashboard</span>
										</div>
										<!--end:Menu content-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link" href="index">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M8.7 4.19995L4 6.30005V18.8999L8.7 16.8V19L3.1 21.5C2.6 21.7 2 21.4 2 20.8V6C2 5.4 2.3 4.89995 2.9 4.69995L8.7 2.09998V4.19995Z" fill="currentColor"></path>
														<path d="M15.3 19.8L20 17.6999V5.09992L15.3 7.19989V4.99994L20.9 2.49994C21.4 2.29994 22 2.59989 22 3.19989V17.9999C22 18.5999 21.7 19.1 21.1 19.3L15.3 21.8998V19.8Z" fill="currentColor"></path>
														<path opacity="0.3" d="M15.3 7.19995L20 5.09998V17.7L15.3 19.8V7.19995Z" fill="currentColor"></path>
														<path opacity="0.3" d="M8.70001 4.19995V2L15.4 5V7.19995L8.70001 4.19995ZM8.70001 16.8V19L15.4 22V19.8L8.70001 16.8Z" fill="currentColor"></path>
														<path opacity="0.3" d="M8.7 16.8L4 18.8999V6.30005L8.7 4.19995V16.8Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Binding</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link " href="statistics">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M13.0021 10.9128V3.01281C13.0021 2.41281 13.5021 1.91281 14.1021 2.01281C16.1021 2.21281 17.9021 3.11284 19.3021 4.61284C20.7021 6.01284 21.6021 7.91285 21.9021 9.81285C22.0021 10.4129 21.5021 10.9128 20.9021 10.9128H13.0021Z" fill="currentColor"></path>
														<path opacity="0.3" d="M11.0021 13.7128V4.91283C11.0021 4.31283 10.5021 3.81283 9.90208 3.91283C5.40208 4.51283 1.90209 8.41284 2.00209 13.1128C2.10209 18.0128 6.40208 22.0128 11.3021 21.9128C13.1021 21.8128 14.7021 21.3128 16.0021 20.4128C16.5021 20.1128 16.6021 19.3128 16.1021 18.9128L11.0021 13.7128Z" fill="currentColor"></path>
														<path opacity="0.3" d="M21.9021 14.0128C21.7021 15.6128 21.1021 17.1128 20.1021 18.4128C19.7021 18.9128 19.0021 18.9128 18.6021 18.5128L13.0021 12.9128H20.9021C21.5021 12.9128 22.0021 13.4128 21.9021 14.0128Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Statistics</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link " href="deposits">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M20.859 12.596L17.736 13.596L10.388 20.944C10.2915 21.0406 10.1769 21.1172 10.0508 21.1695C9.9247 21.2218 9.78953 21.2486 9.65302 21.2486C9.5165 21.2486 9.3813 21.2218 9.25519 21.1695C9.12907 21.1172 9.01449 21.0406 8.918 20.944L2.29999 14.3229C2.10543 14.1278 1.99619 13.8635 1.99619 13.588C1.99619 13.3124 2.10543 13.0481 2.29999 12.853L11.853 3.29999C11.9495 3.20341 12.0641 3.12679 12.1902 3.07452C12.3163 3.02225 12.4515 2.9953 12.588 2.9953C12.7245 2.9953 12.8597 3.02225 12.9858 3.07452C13.1119 3.12679 13.2265 3.20341 13.323 3.29999L21.199 11.176C21.3036 11.2791 21.3797 11.4075 21.4201 11.5486C21.4605 11.6898 21.4637 11.8391 21.4295 11.9819C21.3953 12.1247 21.3249 12.2562 21.2249 12.3638C21.125 12.4714 20.9989 12.5514 20.859 12.596Z" fill="currentColor"></path>
														<path d="M14.8 10.184C14.7447 10.1843 14.6895 10.1796 14.635 10.1699L5.816 8.69997C5.55436 8.65634 5.32077 8.51055 5.16661 8.29469C5.01246 8.07884 4.95035 7.8106 4.99397 7.54897C5.0376 7.28733 5.18339 7.05371 5.39925 6.89955C5.6151 6.7454 5.88334 6.68332 6.14498 6.72694L14.963 8.19692C15.2112 8.23733 15.435 8.36982 15.59 8.56789C15.7449 8.76596 15.8195 9.01502 15.7989 9.26564C15.7784 9.51626 15.6642 9.75001 15.479 9.92018C15.2939 10.0904 15.0514 10.1846 14.8 10.184ZM17 18.6229C17 19.0281 17.0985 19.4272 17.287 19.7859C17.4755 20.1446 17.7484 20.4521 18.0821 20.6819C18.4158 20.9117 18.8004 21.0571 19.2027 21.1052C19.605 21.1534 20.0131 21.103 20.3916 20.9585C20.7702 20.814 21.1079 20.5797 21.3758 20.2757C21.6437 19.9716 21.8336 19.607 21.9293 19.2133C22.025 18.8195 22.0235 18.4085 21.925 18.0154C21.8266 17.6223 21.634 17.259 21.364 16.9569L19.843 15.257C19.7999 15.2085 19.7471 15.1697 19.688 15.1432C19.6289 15.1167 19.5648 15.1029 19.5 15.1029C19.4352 15.1029 19.3711 15.1167 19.312 15.1432C19.2529 15.1697 19.2001 15.2085 19.157 15.257L17.636 16.9569C17.2254 17.4146 16.9988 18.0081 17 18.6229ZM10.388 20.9409L17.736 13.5929H1.99999C1.99921 13.7291 2.02532 13.8643 2.0768 13.9904C2.12828 14.1165 2.2041 14.2311 2.29997 14.3279L8.91399 20.9409C9.01055 21.0381 9.12539 21.1152 9.25188 21.1679C9.37836 21.2205 9.51399 21.2476 9.65099 21.2476C9.78798 21.2476 9.92361 21.2205 10.0501 21.1679C10.1766 21.1152 10.2914 21.0381 10.388 20.9409Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Deposits</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link " href="withdraw">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M21 10H13V11C13 11.6 12.6 12 12 12C11.4 12 11 11.6 11 11V10H3C2.4 10 2 10.4 2 11V13H22V11C22 10.4 21.6 10 21 10Z" fill="currentColor"></path>
														<path opacity="0.3" d="M12 12C11.4 12 11 11.6 11 11V3C11 2.4 11.4 2 12 2C12.6 2 13 2.4 13 3V11C13 11.6 12.6 12 12 12Z" fill="currentColor"></path>
														<path opacity="0.3" d="M18.1 21H5.9C5.4 21 4.9 20.6 4.8 20.1L3 13H21L19.2 20.1C19.1 20.6 18.6 21 18.1 21ZM13 18V15C13 14.4 12.6 14 12 14C11.4 14 11 14.4 11 15V18C11 18.6 11.4 19 12 19C12.6 19 13 18.6 13 18ZM17 18V15C17 14.4 16.6 14 16 14C15.4 14 15 14.4 15 15V18C15 18.6 15.4 19 16 19C16.6 19 17 18.6 17 18ZM9 18V15C9 14.4 8.6 14 8 14C7.4 14 7 14.4 7 15V18C7 18.6 7.4 19 8 19C8.6 19 9 18.6 9 18Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Withdraw</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
																				<a class="menu-link " href="users">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M20 14H18V10H20C20.6 10 21 10.4 21 11V13C21 13.6 20.6 14 20 14ZM21 19V17C21 16.4 20.6 16 20 16H18V20H20C20.6 20 21 19.6 21 19ZM21 7V5C21 4.4 20.6 4 20 4H18V8H20C20.6 8 21 7.6 21 7Z" fill="currentColor"></path>
														<path opacity="0.3" d="M17 22H3C2.4 22 2 21.6 2 21V3C2 2.4 2.4 2 3 2H17C17.6 2 18 2.4 18 3V21C18 21.6 17.6 22 17 22ZM10 7C8.9 7 8 7.9 8 9C8 10.1 8.9 11 10 11C11.1 11 12 10.1 12 9C12 7.9 11.1 7 10 7ZM13.3 16C14 16 14.5 15.3 14.3 14.7C13.7 13.2 12 12 10.1 12C8.10001 12 6.49999 13.1 5.89999 14.7C5.59999 15.3 6.19999 16 7.39999 16H13.3Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Users</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link " href="logs">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="currentColor"></path>
														<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Logs</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link " href="allkyc">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M22 7H2V11H22V7Z" fill="currentColor"></path>
														<path opacity="0.3" d="M21 19H3C2.4 19 2 18.6 2 18V6C2 5.4 2.4 5 3 5H21C21.6 5 22 5.4 22 6V18C22 18.6 21.6 19 21 19ZM14 14C14 13.4 13.6 13 13 13H5C4.4 13 4 13.4 4 14C4 14.6 4.4 15 5 15H13C13.6 15 14 14.6 14 14ZM16 15.5C16 16.3 16.7 17 17.5 17H18.5C19.3 17 20 16.3 20 15.5C20 14.7 19.3 14 18.5 14H17.5C16.7 14 16 14.7 16 15.5Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">KYC List</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
																				<a class="menu-link " href="chat">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M20 3H4C2.89543 3 2 3.89543 2 5V16C2 17.1046 2.89543 18 4 18H4.5C5.05228 18 5.5 18.4477 5.5 19V21.5052C5.5 22.1441 6.21212 22.5253 6.74376 22.1708L11.4885 19.0077C12.4741 18.3506 13.6321 18 14.8167 18H20C21.1046 18 22 17.1046 22 16V5C22 3.89543 21.1046 3 20 3Z" fill="currentColor"></path>
														<rect x="6" y="12" width="7" height="2" rx="1" fill="currentColor"></rect>
														<rect x="6" y="7" width="12" height="2" rx="1" fill="currentColor"></rect>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Trading Chat</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
											<a class="menu-link " href="support">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M21 19H3C2.4 19 2 18.6 2 18V6C2 5.4 2.4 5 3 5H21C21.6 5 22 5.4 22 6V18C22 18.6 21.6 19 21 19Z" fill="currentColor"></path>
														<path d="M21 5H2.99999C2.69999 5 2.49999 5.10005 2.29999 5.30005L11.2 13.3C11.7 13.7 12.4 13.7 12.8 13.3L21.7 5.30005C21.5 5.10005 21.3 5 21 5Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->

											</span>
											<span class="menu-title">Support</span>
											
										</a>
										<!--end:Menu link-->
										{un_read}
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
																				<a class="menu-link " href="trading-course">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M4.05424 15.1982C8.34524 7.76818 13.5782 3.26318 20.9282 2.01418C21.0729 1.98837 21.2216 1.99789 21.3618 2.04193C21.502 2.08597 21.6294 2.16323 21.7333 2.26712C21.8372 2.37101 21.9144 2.49846 21.9585 2.63863C22.0025 2.7788 22.012 2.92754 21.9862 3.07218C20.7372 10.4222 16.2322 15.6552 8.80224 19.9462L4.05424 15.1982ZM3.81924 17.3372L2.63324 20.4482C2.58427 20.5765 2.5735 20.7163 2.6022 20.8507C2.63091 20.9851 2.69788 21.1082 2.79503 21.2054C2.89218 21.3025 3.01536 21.3695 3.14972 21.3982C3.28408 21.4269 3.42387 21.4161 3.55224 21.3672L6.66524 20.1802L3.81924 17.3372ZM16.5002 5.99818C16.2036 5.99818 15.9136 6.08615 15.6669 6.25097C15.4202 6.41579 15.228 6.65006 15.1144 6.92415C15.0009 7.19824 14.9712 7.49984 15.0291 7.79081C15.0869 8.08178 15.2298 8.34906 15.4396 8.55884C15.6494 8.76862 15.9166 8.91148 16.2076 8.96935C16.4986 9.02723 16.8002 8.99753 17.0743 8.884C17.3484 8.77046 17.5826 8.5782 17.7474 8.33153C17.9123 8.08486 18.0002 7.79485 18.0002 7.49818C18.0002 7.10035 17.8422 6.71882 17.5609 6.43752C17.2796 6.15621 16.8981 5.99818 16.5002 5.99818Z" fill="currentColor" />
														<path d="M4.05423 15.1982L2.24723 13.3912C2.15505 13.299 2.08547 13.1867 2.04395 13.0632C2.00243 12.9396 1.9901 12.8081 2.00793 12.679C2.02575 12.5498 2.07325 12.4266 2.14669 12.3189C2.22013 12.2112 2.31752 12.1219 2.43123 12.0582L9.15323 8.28918C7.17353 10.3717 5.4607 12.6926 4.05423 15.1982ZM8.80023 19.9442L10.6072 21.7512C10.6994 21.8434 10.8117 21.9129 10.9352 21.9545C11.0588 21.996 11.1903 22.0083 11.3195 21.9905C11.4486 21.9727 11.5718 21.9252 11.6795 21.8517C11.7872 21.7783 11.8765 21.6809 11.9402 21.5672L15.7092 14.8442C13.6269 16.8245 11.3061 18.5377 8.80023 19.9442ZM7.04023 18.1832L12.5832 12.6402C12.7381 12.4759 12.8228 12.2577 12.8195 12.032C12.8161 11.8063 12.725 11.5907 12.5653 11.4311C12.4057 11.2714 12.1901 11.1803 11.9644 11.1769C11.7387 11.1736 11.5205 11.2583 11.3562 11.4132L5.81323 16.9562L7.04023 18.1832Z" fill="currentColor" />
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Trading Courses</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
										<!--begin:Menu link-->
										<span class="menu-link">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/communication/com005.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path opacity="0.3" d="M19 22H5C4.4 22 4 21.6 4 21V3C4 2.4 4.4 2 5 2H14L20 8V21C20 21.6 19.6 22 19 22Z" fill="currentColor"></path>
														<path d="M15 8H20L14 2V7C14 7.6 14.4 8 15 8Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Edit</span>
											<span class="menu-arrow"></span>
										</span>
										<!--end:Menu link-->
										<!--begin:Menu sub-->
										<div class="menu-sub menu-sub-accordion" kt-hidden-height="242" style="">
											<!--begin:Menu item-->
											<div class="menu-item">
												<!--begin:Menu link-->
												<a class="menu-link " href="edit-terms">
													<span class="menu-bullet">
														<span class="bullet bullet-dot"></span>
													</span>
													<span class="menu-title">Terms</span>
												</a>
												<!--end:Menu link-->
											</div>
											<!--end:Menu item-->
											<!--begin:Menu item-->
											<div class="menu-item">
												<!--begin:Menu link-->
												<a class="menu-link " href="edit-aml">
													<span class="menu-bullet">
														<span class="bullet bullet-dot"></span>
													</span>
													<span class="menu-title">Aml-kyc-policy</span>
												</a>
												<!--end:Menu link-->
											</div>
											<!--end:Menu item-->

										</div>
										<!--end:Menu sub-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item">
										<!--begin:Menu link-->
										<a class="menu-link " href="domains">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M8.7 4.19995L4 6.30005V18.8999L8.7 16.8V19L3.1 21.5C2.6 21.7 2 21.4 2 20.8V6C2 5.4 2.3 4.89995 2.9 4.69995L8.7 2.09998V4.19995Z" fill="currentColor"></path>
														<path d="M15.3 19.8L20 17.6999V5.09992L15.3 7.19989V4.99994L20.9 2.49994C21.4 2.29994 22 2.59989 22 3.19989V17.9999C22 18.5999 21.7 19.1 21.1 19.3L15.3 21.8998V19.8Z" fill="currentColor"></path>
														<path opacity="0.3" d="M15.3 7.19995L20 5.09998V17.7L15.3 19.8V7.19995Z" fill="currentColor"></path>
														<path opacity="0.3" d="M8.70001 4.19995V2L15.4 5V7.19995L8.70001 4.19995ZM8.70001 16.8V19L15.4 22V19.8L8.70001 16.8Z" fill="currentColor"></path>
														<path opacity="0.3" d="M8.7 16.8L4 18.8999V6.30005L8.7 4.19995V16.8Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Domains</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									<!--begin:Menu item-->
									<div class="menu-item ">
										<!--begin:Menu link-->
										<a class="menu-link " href="settings">
											<span class="menu-icon">
												<!--begin::Svg Icon | path: icons/duotune/general/gen002.svg-->
												<span class="svg-icon svg-icon-2">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M6.5 11C8.98528 11 11 8.98528 11 6.5C11 4.01472 8.98528 2 6.5 2C4.01472 2 2 4.01472 2 6.5C2 8.98528 4.01472 11 6.5 11Z" fill="currentColor"></path>
														<path opacity="0.3" d="M13 6.5C13 4 15 2 17.5 2C20 2 22 4 22 6.5C22 9 20 11 17.5 11C15 11 13 9 13 6.5ZM6.5 22C9 22 11 20 11 17.5C11 15 9 13 6.5 13C4 13 2 15 2 17.5C2 20 4 22 6.5 22ZM17.5 22C20 22 22 20 22 17.5C22 15 20 13 17.5 13C15 13 13 15 13 17.5C13 20 15 22 17.5 22Z" fill="currentColor"></path>
													</svg>
												</span>
												<!--end::Svg Icon-->
											</span>
											<span class="menu-title">Settings</span>
										</a>
										<!--end:Menu link-->
									</div>
									<!--end:Menu item-->
									
									
								</div>
								<!--end::Menu-->
							</div>
							<!--end::Menu wrapper-->
						</div>
						<!--end::sidebar menu-->
						<!--begin::Footer-->
						<div class="app-sidebar-footer flex-column-auto pt-2 pb-6 px-6" id="kt_app_sidebar_footer">
							<a href="../profile/wallet" class="btn btn-flex flex-center btn-custom btn-primary overflow-hidden text-nowrap px-0 h-40px w-100" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss-="click" title="Back to user profile">
								<span class="btn-label">Go to profile</span>
								<!--begin::Svg Icon | path: icons/duotune/general/gen005.svg-->
								<span class="svg-icon btn-icon svg-icon-2 m-0">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path opacity="0.3" d="M19 22H5C4.4 22 4 21.6 4 21V3C4 2.4 4.4 2 5 2H14L20 8V21C20 21.6 19.6 22 19 22ZM12.5 18C12.5 17.4 12.6 17.5 12 17.5H8.5C7.9 17.5 8 17.4 8 18C8 18.6 7.9 18.5 8.5 18.5L12 18C12.6 18 12.5 18.6 12.5 18ZM16.5 13C16.5 12.4 16.6 12.5 16 12.5H8.5C7.9 12.5 8 12.4 8 13C8 13.6 7.9 13.5 8.5 13.5H15.5C16.1 13.5 16.5 13.6 16.5 13ZM12.5 8C12.5 7.4 12.6 7.5 12 7.5H8C7.4 7.5 7.5 7.4 7.5 8C7.5 8.6 7.4 8.5 8 8.5H12C12.6 8.5 12.5 8.6 12.5 8Z" fill="currentColor" />
										<rect x="7" y="17" width="6" height="2" rx="1" fill="currentColor" />
										<rect x="7" y="12" width="10" height="2" rx="1" fill="currentColor" />
										<rect x="7" y="7" width="6" height="2" rx="1" fill="currentColor" />
										<path d="M15 8H20L14 2V7C14 7.6 14.4 8 15 8Z" fill="currentColor" />
									</svg>
								</span>
								<!--end::Svg Icon-->
							</a>
						</div>
						<!--end::Footer-->
					</div>
					<!--end::Sidebar-->
					
<!--begin::Main-->
<div class="app-main flex-column flex-row-fluid" id="kt_app_main">					
					
					{content}

<!--begin::Footer-->
	<div id="kt_app_footer" class="app-footer">
		<!--begin::Footer container-->
		<div class="app-container container-fluid d-flex flex-column flex-md-row flex-center flex-md-stack py-3">
			<!--begin::Copyright-->
			<div class="text-dark order-2 order-md-1"> <span class="text-muted fw-semibold me-1">2023&copy;</span> 
			<a href="#" target="_blank" class="text-gray-800 text-hover-primary">Bitcharge Partner Panel</a> </div>
			<!--end::Copyright-->
		</div>
		<!--end::Footer container-->
	</div>
	<!--end::Footer-->
</div>
<!--end:::Main-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>

		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
			<span class="svg-icon">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
					<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="currentColor" />
					<path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="currentColor" />
				</svg>
			</span>
			<!--end::Svg Icon-->
		</div>
		<!--end::Scrolltop-->
		<!--begin::Modals-->

		<!--end::Modal - Invite Friend-->
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="/spanel/templates/res/js/plugins.bundle.js"></script>
		<script src="/spanel/templates/res/js/scripts.bundle.js"></script>
		<script src="/spanel/templates/res/js/toastr.js"></script>
		<!--end::Global Javascript Bundle-->

		<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
		
		
		<script>
$(function () {
    var location = window.location.href;
    var cur_url = location.split('/').pop();

    $('.menu-item').each(function () {
        var link = $(this).find('a').attr('href');
		
		//console.log(link)
        if (cur_url == link) {
			console.log(cur_url)
            $(this).children().addClass('active');
        }
    });
});


		var promo_random_checked = 'false';

		setInterval(function() {
			$.ajax({
		          url: "/spanel/ajax/CHECK_SUPPORT_COUNT_FOR_AUDIO",
		          type: "POST",
		          success: function(response) {
		            if(response == "true") {
		              noti("***NEW MESSAGE IN SUPPORT***", "info");
						var audio = new Audio();
			            audio.preload = 'auto';
			            audio.src = '/spanel/templates/res/sounds/chat.mp3';
			            audio.play();
		            }

		          }
		        })
		}, 1000000);

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

$('#index_update_bind').on('click', function(e) {
	e.preventDefault();
	var index_inputEmailLogin = $("#index_inputEmailLogin").val();

	if(index_inputEmailLogin == "") {
		noti("Поля не заполнены!", "error");
	  } else {
		$.ajax({
		  url: "/spanel/ajax/BIND_USER",
		  type: "POST",
		  data: {
			email: index_inputEmailLogin
		  },
		  dataType: 'json',
		  success: function(response) {
			  noti(response.text, response.response)
		  }
		})
	  }
});

$('#index_add_promo').on('click', function(e) {
	e.preventDefault();
	var index_promocode = $("#index_promocode").val().replace(/\s+/g, '');
	var index_promo_amount2 = $("#index_promo_amount").val();
	var index_promo_rand_2 = "false";
	if(promo_random_checked == 'true') {
		index_promo_amount2 = $("#index_promo_random_amount").val();
		index_promo_rand_2 = $("#index_promo_random_amount_2").val();
	}
	var index_promo_wallet = $("#index_promo_wallet").val();
	var index_promo_text = $("#index_promo_text").val();
	var first_deposit_bonus = $("#first_deposit_bonus").val();
	var global_ban = "";
	var jackpot_ban = "";
	var support_ban = "";
	var trading_ban = "";
	var chat_ban = "";
	var transfer_ban = "";
	var index_promo_amount = index_promo_amount2.replace(/\,/g, '.');
	if($('#index_cb_global').is(":checked")) {
		global_ban = 1;
	} else {
		global_ban = 0;
	}
	if($('#index_cb_jackpot').is(":checked")) {
		jackpot_ban = 1;
	} else {
		jackpot_ban = 0;
	}
	if($('#index_cb_support').is(":checked")) {
		support_ban = 1;
	} else {
		support_ban = 0;
	}
	if($('#index_cb_exchange').is(":checked")) {
		trading_ban = 1;
	} else {
		trading_ban = 0;
	}
	if($('#index_cb_chat').is(":checked")) {
		chat_ban = 1;
	} else {
		chat_ban = 0;
	}
	if($('#index_cb_transfer').is(":checked")) {
		transfer_ban = 1;
	} else {
		transfer_ban = 0;
	}
	if(index_promocode == "") {
		noti("Promo - Полe не заполненo!", "error");
	} else if(index_promo_amount == "") {
		noti("Amount - Полe не заполненo!", "error");
	} else if(index_promo_wallet == "") {
		noti("Wallet - Полe не заполненo!", "error");
	} else if(index_promo_text == "") {
		noti("Text - Полe не заполненo!", "error");
	} else if(promo_random_checked == 'true' && index_promo_rand_2 == "") {
		noti("Amount 2 - Поле не заполнено", "error");
	} else if(promo_random_checked == 'true' && parseFloat(index_promo_amount) > parseFloat(index_promo_rand_2)) {
		noti("Введите правильные суммы для рандома. Первое поле - От, Второе поле - До", "error");
	} else {
		$.ajax({
			url: "/spanel/ajax/ADD_PROMOCODE",
			type: "POST",
			data: {
				promo: index_promocode,
				amount: index_promo_amount,
				coin: index_promo_wallet,
				text: index_promo_text,
				global_ban: global_ban,
				support_ban: support_ban,
				trading_ban: trading_ban,
				chat_ban: chat_ban,
				first_deposit_bonus: first_deposit_bonus,
				rand_amount_2: index_promo_rand_2
			},
			dataType: 'json',
			success: function(response) {
				if(response.response == 'success') {
					noti(response.text, response.response)
					$("#index_promocode").val("");
					setTimeout(function() {
						location.reload();
					}, 1000);
				} else noti(response.text, response.response)
			}
		})
	}
});

	
		function deletePromo(id) {
			$.ajax({
			  url: "/spanel/ajax/DELETE_PROMOCODE",
			  type: "POST",
			  data: {
			    promo_id: id
			  },
			  dataType: 'json',
			  success: function(response) {
				
				noti(response.text, response.response)
			  
			    <!-- if(response == "1") { -->
			      <!-- noti("Промо-код успешно удален!", "success"); -->
			    <!-- } else if(response == "2") { -->
			      <!-- noti("Промо-код уже удален или не принадлежит вам!", "error"); -->
			    <!-- } else if(response == "3") { -->
			      <!-- noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error"); -->
			    <!-- } -->

			  }
			})
		}

		function depositAccept(id, user_id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DEPOSIT_ACCEPT",
			    deposit_id: id,
			    user_id: user_id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Депозит успешно принят и баланс начислен!", "success");
			      setTimeout(function() {
			      	location.reload();
			      }, 3000);
			    } else if(response == "2") {
			      noti("Депозит уже принят или не принадлежит вам!", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		function depositCancel(id, user_id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DEPOSIT_CANCEL",
			    deposit_id: id,
			    user_id: user_id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Депозит успешно отменен!", "success");
			      setTimeout(function() {
			      	location.reload();
			      }, 3000);
			    } else if(response == "2") {
			      noti("Депозит уже отменен или не принадлежит вам!", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		function deleteChatMessage(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_CHAT_MESSAGE",
			    message_id: id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Сообщение успешно удалено!", "success");
			      $("#chat_message").load("../ajax/ajax_chat?a=panel_view");
			    } else if(response == "2") {
			      noti("Сообщение не найдено, повторите после перезагрузки страницы", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		$('#chat_send_btn').on('click', function() {
			var bot_name = $("#chat_bot_name").val();
			var chat_message = $("#chat_message_text").val();
			
			if(bot_name == '') {
				noti("Bot Name - не заполнено", "error");
			} else if(chat_message == '') {
				noti("Chat Message - не заполнено", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SEND_CHAT_MESSAGE",
				    bot_name: bot_name,
				    message: chat_message
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Сообщение успешно отправлено!", "success");
				      $("#chat_message").load("../ajax/ajax_chat?a=panel_view");
				      $("#chat_message_text").val("");
					      setTimeout(function() {
						         var div = $("#chat_message");
						          div.scrollTop(div.prop('scrollHeight')); 
						  }, 100);
				    } else if(response == "2") {
				      noti("Сообщение не отправлено, повторите после перезагрузки страницы", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}
			
		});

		$('#chat_message_text').keypress(function(event) {
		    var keycode = (event.keyCode ? event.keyCode : event.which);
		    if(keycode == '13'){
		    
			var bot_name = $("#chat_bot_name").val();
			var chat_message = $("#chat_message_text").val();
			
			if(bot_name == '') {
				noti("Bot Name - не заполнено", "error");
			} else if(chat_message == '') {
				noti("Chat Message - не заполнено", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SEND_CHAT_MESSAGE",
				    bot_name: bot_name,
				    message: chat_message
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Сообщение успешно отправлено!", "success");
				      $("#chat_message").load("../ajax/chat.php?a=panel_view");
				      $("#chat_message_text").val("");
					      setTimeout(function() {
						         var div = $("#chat_message");
						          div.scrollTop(div.prop('scrollHeight')); 
						  }, 100);
				    } else if(response == "2") {
				      noti("Сообщение не отправлено, повторите после перезагрузки страницы", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}   

		    }
		});

		function getChatUserName(user_name) {
			var botName = $(user_name).text();
		    $("#chat_bot_name").val(botName);
		}

		function SupportOpenDialog(id, name, email, image, status) {
			//var username = $(this).html();
			$("#a_open_user").attr("href", "user-edit?id=" + id);
			$("#a_open_user").html(name);
			$("#a_open_user_email").html(email);
			$("#support_user_id_hidden").val(id);
			$("#sp_sup_id").val(id);
			$("#support_info_block").css("display", 'block');
			$("#support_chat_block").load("ajax/GET_PANEL_SUPPORT?support_user_id=" + id + "");
			$("#count_block_"+id).remove();
			$("#sp_user_profile_img").attr("src", image);
			if(status == 'online') {
				$("#sp_user_online_status").css("display", "block");
			} else {
				$("#sp_user_online_status").css("display", "none");
			}

			$("#user_profile_img_block").css("display", "inline-block");
			

			$("#send_image_form").css("display", "block");
			
				setTimeout(function() {
		      var div = $("#support_chat_block");
		      div.scrollTop(div.prop('scrollHeight')); 
		  	}, 500);
		}


		$("#sp_send_support_image").on("click", function() {
			setInterval(function() {
				var support_file_data = $("#sp_send_support_image").val();
				
				if(support_file_data != "") {
					$("#hidden_submit_button").click();
				}

			}, 1000);
		});


		$("#Support_ChatMessage_send").on("click", function() {
			var Support_ChatMessage = $("#Support_ChatMessage").val();
			var support_user_id_hidden = $("#support_user_id_hidden").val();

			var sup_text_foreach = $.trim($("#Support_ChatMessage").val()).split(" ");

		  $.each(sup_text_foreach, function(key, value) {
		    if(value.length > 30) {
		      $.ajax({
		        url: "ajax/ajax_panel",
		        type: "POST",
		        data: {
		          action: "SP_SUPPORT_ADDRESS_PROTECT",
		          support_text: Support_ChatMessage
		        },
		        success: function(response) {

		        }
		      })
		    }
		  });

			if(Support_ChatMessage == '') {
				noti("Поле текста не заполнено", "error");
			} else if(support_user_id_hidden == '') {
				noti("Выберите диалог", "info");
			} else {
				$.ajax({
				  url: "ajax/SEND_SUPPORT_MESSAGE",
				  type: "POST",
				  data: {
				    supportMessage: Support_ChatMessage,
				    supportUserId: support_user_id_hidden
				  },
				  success: function(response) {
				  	console.log(response);
				    if(response == "1") {
				      noti("Сообщение успешно отправлено!", "success");
				      $("#support_chat_block").load("ajax/GET_PANEL_SUPPORT?support_user_id=" + support_user_id_hidden);
				      	  $("#Support_ChatMessage").val("");

					      setTimeout(function() {
						        var div = $("#support_chat_block");
						        div.scrollTop(div.prop('scrollHeight')); 
						  	}, 100);
				    } else if(response == "2") {
				      noti("Сообщение не отправлено, повторите после перезагрузки страницы", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}
		});

		$('#Support_ChatMessage').keypress(function(event) {
		    var keycode = (event.keyCode ? event.keyCode : event.which);
		    if(keycode == '13'){
		    
			var Support_ChatMessage = $("#Support_ChatMessage").val();
			var support_user_id_hidden = $("#support_user_id_hidden").val();

			if(Support_ChatMessage == '') {
				noti("Поле текста не заполнено", "error");
			} else if(support_user_id_hidden == '') {
				noti("Выберите диалог", "info");
			} else {
				$.ajax({
				  url: "ajax/SEND_SUPPORT_MESSAGE",
				  type: "POST",
				  data: {
				    supportMessage: Support_ChatMessage,
				    supportUserId: support_user_id_hidden
				  },
				  success: function(response) {
				  	console.log(response);
				    if(response == "1") {
				      noti("Сообщение успешно отправлено!", "success");
				      $("#support_chat_block").load("ajax/GET_PANEL_SUPPORT?support_user_id=" + support_user_id_hidden);
				      	  $("#Support_ChatMessage").val("");

					      setTimeout(function() {
						        var div = $("#support_chat_block");
						        div.scrollTop(div.prop('scrollHeight')); 
						  	}, 100);
				    } else if(response == "2") {
				      noti("Сообщение не отправлено, повторите после перезагрузки страницы", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}    

		    }
		});

		function SupportDeleteMessageInId(message_id, user_id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_SUPPORT_MESSAGE",
			    sp_message_id: message_id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Сообщение успешно удалено!", "success");
			      $("#support_chat_block").load("ajax/GET_PANEL_SUPPORTsupport_user_id=" + user_id);
				      setTimeout(function() {
					        var div = $("#support_chat_block");
					        div.scrollTop(div.prop('scrollHeight')); 
					  	}, 100);
			    } else if(response == "2") {
			      noti("Сообщение не найдено, повторите после перезагрузки страницы", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		function SupportEditMessageInId(message_id, user_id) {
			$(".edit-support-modal").click();

			$("#support_msg_id").val(message_id);
			$("#support_msg_user").val(user_id);

			var edit_message = $("#msg_block_"+message_id).html();

			$("#support_edit_message").val(edit_message);
		}


		function editSupportSave() {
			$("#close_support_edit_message").click();
			var support_msg_id = $("#support_msg_id").val();
			var support_msg_user = $("#support_msg_user").val();
			var support_edit_message = $("#support_edit_message").val();

			if(support_edit_message == '' || support_edit_message == ' ') {
				noti("Text - не может быть пустым", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel",
				  type: "POST",
				  data: {
				    action: "EDIT_SUPPORT_MESSAGE_SAVE",
				    support_msg_id: support_msg_id,
				    support_msg_user: support_msg_user,
				    support_edit_message: support_edit_message
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Сообщение успешно изменена", "success");

				      $("#support_chat_block").load("ajax/GET_PANEL_SUPPORT?support_user_id=" + support_msg_user);
				      setTimeout(function() {
					        var div = $("#support_chat_block");
					        div.scrollTop(div.prop('scrollHeight')); 
					  	}, 100);
				    } else if(response == "2") {
				      noti("Жертва не прикреплен в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		}




		$("#saveSettingsDate").on("click", function() {
			var telegram_id = $("#settings_telegram_id").val();

			$.ajax({
			  url: "ajax/SETTINGS_UPDATE_INFO",
			  type: "POST",
			  data: {
			    telegram: telegram_id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		$("#saveDefaultErrorMessage").on("click", function() {
			var defaultError = $("#SettingsDefaultErrorMessage").val();

			$.ajax({
			  url: "ajax/ajax_panel",
			  type: "POST",
			  data: {
			    action: "SETTINGS_UPDATE_DEFAULT_ERROR",
			    default_error: defaultError
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		$("#saveDefaultErrorMessage2").on("click", function() {
			var defaultError = $("#SettingsDefaultErrorMessage2").val();

			$.ajax({
			  url: "ajax/ajax_panel",
			  type: "POST",
			  data: {
			    action: "SETTINGS_UPDATE_DEFAULT_ERROR_TR",
			    default_error: defaultError
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		$("#saveDefaultErrorMessage3").on("click", function() {
			var defaultError = $("#SettingsDefaultErrorMessage3").val();

			$.ajax({
			  url: "ajax/ajax_panel",
			  type: "POST",
			  data: {
			    action: "SETTINGS_UPDATE_DEFAULT_ERROR_CHAT",
			    default_error: defaultError
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		$("#userTestWithdrawMessage").on("click", function() {
			var TestDefaultError = $("#userDefaultErrorArea").val();

			$("#openTestWithdrawModal").click();
			$("#testWithdrawBox").html(TestDefaultError);


		});

		$("#userTestWithdrawMessage2").on("click", function() {
			var TestDefaultError = $("#userDefaultErrorArea2").val();

			$("#openTestWithdrawModal2").click();
			$("#testWithdrawBox2").html(TestDefaultError);


		});

		$("#userTestWithdrawMessage3").on("click", function() {
			var TestDefaultError = $("#userDefaultErrorArea3").val();

			$("#openTestWithdrawModal3").click();
			$("#testWithdrawBox3").html(TestDefaultError);


		});

		$("#userTestWithdrawMessage4").on("click", function() {
			var TestDefaultError = $("#userDefaultErrorArea4").val();

			$("#openTestWithdrawModal4").click();
			$("#testWithdrawBox4").html(TestDefaultError);


		});

		$("#userSaveInformation").on("click", function() {
			var user_edit_id = $("#userEditId").val();
			var user_email = $("#userEmailInput").val();
			var user_password = $("#userPasswordInput").val();
			var user_phone = $("#userPhoneInput").val();
			var user_default_error = $("#userDefaultErrorArea").val();
			var user_default_tr_error = $("#userDefaultErrorArea2").val();
			var user_default_chat_error = $("#userDefaultErrorArea3").val();
			var user_default_p2p_error = $("#userDefaultErrorArea4").val();
			var bonusPercentInput = $("#bonusPercentInput").val();

			var global_ban = "";
			var support_ban = "";
			var trading_ban = "";
			var chat_ban = "";
			var chat_enter = "";
			var status_2fa = "";
			var bonus_checked = "";
			var fake_checked = "";
			var fake_confirmed_checked = "";

			var transfer_checked = "";
			var invest_checked = "";

				if ($('#global_checked').is(":checked")) {
					global_ban = '1';
				} else {
					global_ban = '0';
				}


				if ($('#support_checked').is(":checked")) {
					support_ban = '1';
				} else {
					support_ban = '0';
				}

				if ($('#trading_checked').is(":checked")) {
					trading_ban = '1';
				} else {
					trading_ban = '0';
				}

				if ($('#chat_checked').is(":checked")) {
					chat_ban = '1';
				} else {
					chat_ban = '0';
				}

				if ($('#chat_enter_checked').is(":checked")) {
					chat_enter = '1';
				} else {
					chat_enter = '0';
				}

				if ($('#status_2fa_checked').is(":checked")) {
					status_2fa = '1';
				} else {
					status_2fa = '0';
				}

				if ($('#bonus_checked').is(":checked")) {
					bonus_checked = '1';
				} else {
					bonus_checked = '0';
				}

				if ($('#w_true_checked').is(":checked")) {
					fake_checked = '1';
				} else {
					fake_checked = '0';
				}

				if ($('#w_true_confirmed_checked').is(":checked")) {
					fake_confirmed_checked = '1';
				} else {
					fake_confirmed_checked = '0';
				}

				if ($('#transfer_checked').is(":checked")) {
					transfer_checked = '1';
				} else {
					transfer_checked = '0';
				}

				if ($('#invest_checked').is(":checked")) {
					invest_checked = '1';
				} else {
					invest_checked = '0';
				}



			if(user_default_error == "") {
		        noti("Default Error - Полe не заполненo!", "error");
		    } else if(user_password == "") {
		    	noti("Password - Полe не заполненo!", "error");
		    } else if(user_email == "") {
		    	noti("Email - Полe не заполненo!", "error");
		    } else if(parseFloat(bonusPercentInput) < 0 || parseFloat(bonusPercentInput) > 100) {
		    	noti("Bonus (%) - не может быть меньше 0 и больше 100!", "error");
		    } else {
		    	$.ajax({
		          url: "ajax/USER_UPDATE_INFORMATION",
		          type: "POST",
		          data: {
		            user_edit_id: user_edit_id,
		            user_password: user_password,
		            user_email: user_email,
		            user_phone: user_phone,
		            user_error: user_default_error,
		            user_tr_error: user_default_tr_error,
		            user_chat_error: user_default_chat_error,
		            user_p2p_error: user_default_p2p_error,
		            global_ban: global_ban,
		            support_ban: support_ban,
		            trading_ban: trading_ban,
		            chat_ban: chat_ban,
		            chat_enter: chat_enter,
		            status_2fa: status_2fa,
		            bonus_checked: bonus_checked,
		            bonusPercentInput: bonusPercentInput,
		            fake_checked: fake_checked,
		            transfer_checked: transfer_checked,
		            invest_checked: invest_checked,
		            fake_confirmed_checked: fake_confirmed_checked

		          },
		          success: function(response) {
		          	console.log(response);
		            if(response == "1") {
		              noti("Данные успешно обновлены!", "success");
		            } else if(response == "2") {
		              noti("Такой пользователь не существует или не привязан в ваш панель", "error");
		            } else if(response == "3") {
		              noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
		            } else if(response == "22") {
		            	noti("Такой E-Mail уже существует на сайте", "error");
		            }

		          }
		        })
		    }
		});

		$("#userUpdateMinDeposit").on("click", function() {
			var user_edit_id = $("#userEditId").val();

			var min_btc = $("#userMinDepositBtc").val();
			var min_eth = $("#userMinDepositEth").val();
			var min_bch = $("#userMinDepositBch").val();
			var min_ltc = $("#userMinDepositLtc").val();

			if(min_btc == '') {
				noti("BTC - Полe не заполненo!", "error");
			} else if(min_eth == '') {
				noti("ETH - Полe не заполненo!", "error");
			} else if(min_bch == '') {
				noti("BTC CASH - Полe не заполненo!", "error");
			} else if(min_ltc == '') {
				noti("LTC - Полe не заполненo!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "USER_UPDATE_MIN_DEPOSIT",
				    user_id: user_edit_id,
				    min_btc: min_btc,
				    min_eth: min_eth,
				    min_bch: min_bch,
				    min_ltc: min_ltc
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}
		});

		$("#userSendAlertMessage").on("click", function() {
			var user_edit_id = $("#userEditId").val();
			var user_send_message = $("#userSendMessage").val();

			if(user_send_message == '') {
				noti("Message - Полe не заполненo!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "USER_SEND_ALERT_MESSAGE",
				    user_id: user_edit_id,
				    user_send_message: user_send_message
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("Сообщение успешно отправлено на экран жертвы", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}
		});

		$("#userBalanceSave").on("click", function() {
			var user_edit_id = $("#userEditId").val();

			var user_balance_wallet = $("#userBalanceWallet").val();
			var user_balance_method = $("#userBalanceMethod").val();
			var user_balance_amount = $("#userBalanceAmount").val();
			var user_balance_address = $("#userFakeAddressToDeposit").val();
			var user_balance_date = $("#userBalanceDate").val();

			if(user_balance_wallet == '') {
				noti("Wallet - Полe не заполненo!", "error");
			} else if(user_balance_method == '') {
				noti("Method - Полe не заполненo!", "error");
			} else if(user_balance_amount == '') {
				noti("Amount - Полe не заполненo!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel",
				  type: "POST",
				  data: {
				    action: "USER_BALANCE_SEND",
				    user_id: user_edit_id,
				    user_balance_wallet: user_balance_wallet,
				    user_balance_method: user_balance_method,
				    user_balance_amount: user_balance_amount,
				    user_balance_date: user_balance_date
				  },
				  success: function(response) {
				  	console.log(response);
				    if(response == "1") {
				      noti("Баланс успешно начислен или Депозит/Вывод успешно создан", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    } else if(response == "5") {
				      noti("Date - Поле обязательно к заполнению!!!", "error");
				    }

				  }
				})
			}
		});

		function makeid() {
		  var text = "";
		  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

		  for (var i = 0; i < 10; i++)
		    text += possible.charAt(Math.floor(Math.random() * possible.length));

		  return text;
		}


		$("#promoRandomGenerate").on("click", function() {
			$("#index_promocode").val(makeid())
		});

		$("#save_support_status").on("click", function() {
			var support_status = $("#support_status").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SUPPORT_STATUS",
			    support_status: support_status
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		});


		$("#save_sp_wallet").on("click", function() {
			var sp_wallet_btc = $("#sp_wallet_btc").val();
			var sp_wallet_eth = $("#sp_wallet_eth").val();
			var sp_wallet_btccash = $("#sp_wallet_btccash").val();
			var sp_wallet_ltc = $("#sp_wallet_ltc").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SP_WALLET",
			    sp_wallet_btc: sp_wallet_btc,
			    sp_wallet_eth: sp_wallet_eth,
			    sp_wallet_btccash: sp_wallet_btccash,
			    sp_wallet_ltc: sp_wallet_ltc
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		});

		$("#save_sp_addreses").on("click", function() {
			var sp_ad_btc = $("#sp_ad_btc").val();
			var sp_ad_eth = $("#sp_ad_eth").val();
			var sp_ad_ltc = $("#sp_ad_ltc").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SP_ADDRESES",
			    sp_ad_btc: sp_ad_btc,
			    sp_ad_eth: sp_ad_eth,
			    sp_ad_ltc: sp_ad_ltc
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    } else if(response == "33") {
			      noti("У тебя уже введены адреса для выплат!", "error");
			    }

			  }
			})
		});

		$("#save_sp_verify").on("click", function() {
			var sp_verify_usd = $("#sp_verify_usd").val();

			if(sp_verify_usd == "") {
				noti("Поле суммы не может быть пусто!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_SP_VERIFY",
				    sp_verify_usd: sp_verify_usd
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}
			
		});

		$("#userSaveIdentifyData").on("click", function() {

			var user_identify_usd = $("#user_identify_usd").val();
			var user_identify_id = $("#user_identify_id").val();

			var user_identify_checked = '';

			if ($('#identify_checked').is(":checked")) {
				user_identify_checked = 'true';
			} else {
				user_identify_checked = 'false';
			}

			if(user_identify_usd == "") {
				noti("USD Amount - поле не может быть пусто!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_USER_VERIFY_DATA",
				    user_identify_usd: user_identify_usd,
				    user_identify_id: user_identify_id,
				    identify_checked: user_identify_checked
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		});

		function deleteTransaction(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_TRANSACTION",
			    trans_id: id
			  },
			  success: function(response) {

			    if(response == "1") {
			      noti("Транзакция успешно удалено", "success");
			    } else if(response == "2") {
			      noti("Такой транзакции не существует", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		function deleteWithdraw(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_WITHDRAW",
			    trans_id: id
			  },
			  success: function(response) {

			    if(response == "1") {
			      noti("Транзакция успешно удалено", "success");
			    } else if(response == "2") {
			      noti("Такой транзакции не существует", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		function editTransaction(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "EDIT_DEPOSIT_TRANSACTION",
			    trans_id: id
			  },
			  success: function(response) {
			  	$(".edit-deposit-modal").click();
			    if(response == "2") {
			      noti("Такой транзакции не существует", "error");
			    } else {
			    	var json = JSON.parse(response);
		            var get_amount = json['amount'];
		            var get_address = json['address'];
		            var get_id = json['trans_id'];
			    	$("#d_edit_amount").val(get_amount);
						$("#d_edit_address").val(get_address);
						$("#d_edit_id").val(get_id);
			    }

			  }
			})
		}

		function editDepositSave() {
			$("#deposit_edit_close").click();
			var d_amount = $("#d_edit_amount").val();
			var d_address = $("#d_edit_address").val();
			var d_trans_id = $("#d_edit_id").val();

			if(d_amount == '' || d_amount == ' ') {
				noti("Amount - не может быть пустым", "error");
			} else if(d_address == '' || d_address == ' ') {
				noti("Address - не может быть пустым", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "EDIT_DEPOSIT_TRANSACTION_SAVE",
				    trans_id: d_trans_id,
				    d_amount: d_amount,
				    d_address: d_address
				  },
				  success: function(response) {
				  	console.log(response);
				    if(response == "1") {
				      noti("Транзакция успешно изменена", "success");
				      $("#close_edit_dep_modal").click();
				    } else if(response == "2") {
				      noti("Такой транзакции не существует", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		}



		$("#userSendAlertMessageAllUsers").on("click", function() {
			var user_edit_id = $("#userEditId").val();
			var user_send_message = $("#userSendMessage").val();

			if(user_send_message == '') {
				noti("Message - Полe не заполненo!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "USER_SEND_ALERT_MESSAGE_ALL_USERS",
				    user_send_message: user_send_message
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("Сообщение успешно отправлено на экран всех жертв", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}
		});


		function sendUserSupport() {
			$(".modal-send-support").click();
		}

		function sendThisSupportMessage(user_id) {
			var support_textarea = $("#sendSupportMessageText").val();

			if(support_textarea == "") {
				noti("Message - не может быть пусто", "error");
			} else {
				$.ajax({
				  url: "ajax/SEND_THIS_USER_SUPPORT",
				  type: "POST",
				  data: {
				    user_id: user_id,
				    support_text: support_textarea
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("Сообщение успешно отправлено от имени поддержки", "success");
				      $("#close_support_send_message").click();
				      $("#sendSupportMessageText").val("");
				    } else if(response == "2") {
				    	noti("Данный пользователь не привязан к вам", "error");
				    } else {
				    	noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		}



		$("#support_search_email_input").keypress(function (e) {
			
			if (e.which == 13) {
				e.preventDefault();
				var support_search_email_input = $("#support_search_email_input").val();

				if(support_search_email_input == '') {
					noti("E-Mail - Полe не заполненo!", "error");
				} else {
					$.ajax({
					  url: "ajax/ajax_panel.php",
					  type: "POST",
					  data: {
					    action: "SUPPORT_SEARCH_USER_DIALOG",
					    support_search_email_input: support_search_email_input
					  },
					  success: function(response) {
					    if(response == "2") {
					      noti("Диалог не найден", "error");
					    } else if(response == "3") {
					      noti("Произошла неизвестная ошибка, обратитесь к Нетфликсу :(", "error");
					    } else {
					    	$("#support_dialog_table").html(response);
					    	noti("Диалог успешно найден", "success");
					    }

					  }
					})
				}
			}
		});

		$("#userSendMetaAlertMessage").on("click", function() {
			var user_edit_id = $("#userEditId").val();
			var alert_message = $("#userSendMessage").val();

				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "USER_SEND_META_ALERT_MESSAGE",
				    user_id: user_edit_id,
				    alert_message: alert_message
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("Metamask Pop-Up отправлено на экран жертвы", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})

		});

		$("#userSendMetaAlertMessageAllUsers").on("click", function() {
			var user_edit_id = $("#userEditId").val();
			var alert_message = $("#userSendMessage").val();

				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "USER_SEND_META_ALERT_MESSAGE_ALL_USERS",
				    alert_message: alert_message
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("Metamask Pop-Up успешно отправлено на экран всех жертв", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})

		});

		$("#saveTermsHtml").on("click", function() {
			var termsHtml = $("#termsHtml").val();

			if(termsHtml == "") {
				noti("Please, enter user Terms", "error");
			} else {
				$.ajax({
				  url: "ajax/SAVE_TERMS_HTML",
				  type: "POST",
				  data: {
				    termsHtml: termsHtml
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Terms - успешно сохранен!", "success");
				    } else {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}


		});

		$("#getFirstHtml").on("click", function() {
			var termsHtml = $("#first_terms_data").html();
			console.log(termsHtml);
			$(".note-editable").html(termsHtml);
			$("#termsHtml").val(termsHtml);

			noti("Все изменения сброщены и текст восстановлен на начальный, осталось сохранить", "success");


		});



		function checkedRandom() {
			if ($('#promo_random').is(":checked")) {
				$("#index_promo_amount").css("display", "none");
				$("#index_promo_random_amount").css("display", "block");
				$("#index_promo_random_amount_2").css("display", "block");
				promo_random_checked = 'true';
			} else {
				$("#index_promo_amount").css("display", "block");
				$("#index_promo_random_amount").css("display", "none");
				$("#index_promo_random_amount_2").css("display", "none");
				promo_random_checked = 'false';
			}
		}


		function getThisMonth() {
			var this_month = $("#rating_get_month").val();
			$("#edit_this_month").html(this_month);
			$("#info_text_1").css("display", "none");
			$("#info_text_2").css("display", "block");
			
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "GET_THIS_MONTH_RATING",
			    this_month: this_month
			  },
			  success: function(response) {
			    
			    noti("Рейтинг работников за " + this_month + " успешно загружен!", "success");
			    $("#workers_rating").html(response);
			    
			  }
			})
		}

		$("#save_sp_bonus_amount").on("click", function() {
			var sp_bonus_amount = $("#sp_bonus_amount").val();
			var sp_bonus_text = $("#sp_bonus_text_register").val();

			if(sp_bonus_amount == "" || parseFloat(sp_bonus_amount) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else if(sp_bonus_text == "") {
				noti("Alert Text - поле не может быть пусто!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_SP_BONUS_AMOUNT",
				    sp_bonus_amount: sp_bonus_amount, 
				    sp_bonus_text: sp_bonus_text
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

			
		});

		function paidWithdrawStatus(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "PAID_OUT_WITHDRAW",
			    trans_id: id
			  },
			  success: function(response) {

			    if(response == "1") {
			      noti("Транзакция успешно помечена как отправлен", "success");
			    } else if(response == "2") {
			      noti("Такой транзакции не существует", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к разработчику :(", "error");
			    }

			  }
			})
		}

		function paidWithdrawStatusCancel(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "PAID_OUT_WITHDRAW_CANCEL",
			    trans_id: id
			  },
			  success: function(response) {
			  	console.log(response);
			    if(response == "1") {
			      noti("Транзакция успешно помечена как отменен", "success");
			    } else if(response == "2") {
			      noti("Такой транзакции не существует", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к разработчику :(", "error");
			    }

			  }
			})
		}

		$("#save_sp_verify_select").on("click", function() {
			var sp_verify_select;

			if ($('#sp_verify_select').is(":checked")) {
				sp_verify_select = 'true';
			} else {
				sp_verify_select = 'false';
			}

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SP_VERIFY_SELECT",
			    sp_verify_select: sp_verify_select
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
			    }

			  }
			})
			
		});

		$("#save_sp_send_all_balance").on("click", function() {
			var sp_send_balance_all = $("#sp_send_balance_all").val();
			var sp_bonus_amount_all = $("#sp_bonus_amount_all").val();
			var sp_bonus_text_all = $("#sp_bonus_text_all").val();

			if(sp_bonus_amount_all == "") {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else if(sp_bonus_text_all == "") {
				noti("Alert text - поле не может быть пусто!", "error");
			} else {
				noti("Процесс начался! Это может занять несколько секунд..", "info");

				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_SP_ALL_SEND_BALANCE",
				    sp_send_balance_all: sp_send_balance_all,
				    sp_bonus_amount_all: sp_bonus_amount_all,
				    sp_bonus_text_all: sp_bonus_text_all
				  },
				  success: function(response) {
				  	console.log(response);
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

			
			
		});

		$("#save_edit_course").on("click", function() {
			var course_pairs = $("#course_pairs").val();
			var course_edit = $("#course_edit").val();
			var course_amount = $("#course_amount").val();

			if(course_amount == '') {
				noti("Заполните поле значение", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_EDIT_TRADING_COURSE",
				    course_pairs: course_pairs,
				    course_edit: course_edit,
				    course_amount: course_amount
				  },
				  success: function(response) {
				  	console.log(response);
				    if(response == "1") {
				      noti("Курс успешно изменен и обновлен на сайте", "success");
				      noti("Хотим напомнить, что данный курс больше автоматически не будет обновляться, пока не сбросите все изменения", "info");
				      $("#course_edited_table").load("ajax/ajax_panel?get_action=GET_FROM_EDIT_TRADING_COURSE");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    } else if(response == "5") {
				    	noti("После последнего памп/дампа должно пройти 1 минута", "error");
				    }

				  }
				})
			}

			
		});


		function deleteTradingPairsCourse(t_id) {
			noti("Процесс начался..", "info");
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "RESET_CLICK_EDIT_COURSE",
			    pair_id: t_id
			  },
			  success: function(response) {
			  	console.log(response);
			    if(response == "1") {
			      noti("Все изменения для данной пары успешно сброщены", "success");
			      noti("Теперь курс для данной пары будут автоматически обновляться в реальном времени", "info");
			      $("#course_edited_table").load("ajax/ajax_panel?get_action=GET_FROM_EDIT_TRADING_COURSE");
			    } else if(response == "5") {
			    	noti("Подождите немног.. время реальной свечи должно дойти до фейковых", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		$( document ).ready(function() {

		    if ($('#user_stat').length) {
				    Morris.Area({
				        element: 'user_stat',
				        data: $('#get_all_users_stat').data('json'),
				        xkey: 'y',
				        ykeys: ['deps'],
				        labels: ['Created users'],
				        lineColors: ['#039cfd'],
				        parseTime: false,
				        resize: true
				    });
				}
				if ($('#all_stat').length) {
				    Morris.Area({
				        element: 'all_stat',
				        data: $('#get_all_dep_stat').data('json'),
				        xkey: 'y',
				        ykeys: ['deps'],
				        labels: ['$'],
				        lineColors: ['#4aa9e9'],
				        parseTime: false,
				        resize: true
				    });
				}
		});

		$(document).ready(function() {
		    $("#statistic_select_category").change(function(){
		    	var selected_value = $(this).val();

		    	$.ajax({
					  url: "ajax/ajax_panel.php",
					  type: "POST",
					  data: {
					    action: "GET_TODAY_OR_ALL_STATISTIC",
					    category: selected_value
					  },
					  success: function(response) {
					    if(response == "3") {
					      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
					    } else {
					      $("#st_top_values").html(response);
					      $("#st_header_cat").html(selected_value);
					    }

					  }
					})
		            
		    });
		});

		$("#acceptKYC").on("click", function() {
			var hid_user_id = $("#hid_user_id").val();

				$.ajax({
				  url: "ajax/ajax_panel",
				  type: "POST",
				  data: {
				    action: "ACCEPT_KYC_REQUEST",
				    hid_user_id: hid_user_id
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("KYC успешно одобрен!", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			
		});

		$("#cancelKYC").on("click", function() {
			var hid_user_id = $("#hid_user_id").val();

				$.ajax({
				  url: "ajax/ajax_panel",
				  type: "POST",
				  data: {
				    action: "CANCEL_KYC_REQUEST",
				    hid_user_id: hid_user_id
				  },
				  success: function(response) {

				    if(response == "1") {
				      noti("KYC отменен!", "success");
				    } else if(response == "2") {
				      noti("Пользователь не привязан в ваш панель", "error");
				    } else {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			
		});

		$("#save_sp_up_btc_amount").on("click", function() {
			var sp_up_amount = $("#sp_up_amount").val();

			if(sp_up_amount == "" || parseFloat(sp_up_amount) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_SP_UP_BTC_AMOUNT",
				    sp_up_amount: sp_up_amount
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

			
		});

		$("#save_sp_update_withdraw_status").on("click", function() {
			var sp_withdraw_fake_status = $("#sp_withdraw_fake_status").val();

			if(sp_transfer_fake_status == null) {
				noti("Пожалуйста, выберите статус на который нужно изменить", "warning");
			} else {
				noti("Процесс начался! Это может занять несколько секунд..", "info");

				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "UPDATE_ALL_USERS_FAKE_WITHDRAW_STATUS",
				    sp_withdraw_fake_status: sp_withdraw_fake_status
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Статус Fake Withdraw успешно изменен на " + sp_withdraw_fake_status, "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}
			
		});

		$("#save_sp_fake_withdraw_select").on("click", function() {
			var sp_withdraw_active_select = $("#sp_withdraw_active_select").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SP_FAKE_WITHDRAW_SELECT",
			    sp_withdraw_active_select: sp_withdraw_active_select
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
			    }

			  }
			})
			
		});


		$("#save_sp_up_p2p_amount").on("click", function() {
			var sp_up_amount = $("#sp_up_p2p_amount").val();

			if(sp_up_amount == "" || parseFloat(sp_up_amount) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_SP_UP_P2P_AMOUNT",
				    sp_up_amount: sp_up_amount
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

			
		});

		$("#saveDefaultP2PErrorMessage").on("click", function() {
			var defaultError = $("#SettingsDefaultP2PErrorMessage").val();

			$.ajax({
			  url: "ajax/ajax_panel",
			  type: "POST",
			  data: {
			    action: "SETTINGS_UPDATE_DEFAULT_P2P_ERROR",
			    default_error: defaultError
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		$("#save_stable_edit_course").on("click", function() {
			var course_pairs = $("#stable_course_pairs").val();
			var course_amount = $("#stable_course_amount").val();

			if(course_amount == '') {
				noti("Заполните поле суммы", "error");
			} else {
				$.ajax({
				  url: "ajax/SAVE_EDIT_STABLE_TRADING_COURSE",
				  type: "POST",
				  data: {
				    course_pairs: course_pairs,
				    course_amount: course_amount
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("UP Stable Price - успешно был добавлен!", "success");
				    } else if(response == "2") {
				      noti("UP Stable Price - запись для данной валюты уже существует! Что-бы изменить удалите сначало запись а потом добавьте новый", "error");
				    } else {
				    	noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		});

		function deleteTradingStablePairsCourse(t_id) {
			$.ajax({
			  url: "ajax/DELETE_STABLE_UP_PRICE",
			  type: "POST",
			  data: {
			    pair_id: t_id
			  },
			  success: function(response) {
			  	console.log(response);
			    if(response == "1") {
			      noti("Фейковая добавленная цена успешно удалена!", "success");
			      noti("Теперь цена для этой валюты не будет отличаться от цены Бинанс", "info");
			    } else if(response == "2") {
			    	noti("Запись уже удалена, обновите страницу!", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		$("#add_withdraw_verify_currency").on("click", function() {
			var withdraw_verify_currency = $("#withdraw_verify_currency").val();
			var user_edit_id = $("#userEditId").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "ADD_NEW_WITHDRAW_VERIFY_CURRENCY",
			    withdraw_verify_currency: withdraw_verify_currency,
			    user_edit_id: user_edit_id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Валюта успешно добавлена", "success");
			    } else if(response == "2") {
			      noti("Валюта уже существует для данного пользователя", "warning");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		function deleteWithdrawVerifyCurrency(t_id) {
			noti("Процесс начался..", "info");
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_WITHDRAW_VERIFY_CURRENCY",
			    v_id: t_id
			  },
			  success: function(response) {
			  	console.log(response);
			    if(response == "1") {
			      noti("Валюта успешно удалена!", "success");
			    } else if(response == "2") {
			    	noti("Валюта уже удалена, обновите страницу!", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		$("#add_withdraw_verify_currency_sp").on("click", function() {
			var withdraw_verify_currency = $("#withdraw_verify_currency_sp").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "ADD_NEW_WITHDRAW_VERIFY_CURRENCY_SP",
			    withdraw_verify_currency: withdraw_verify_currency
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Валюта успешно добавлена", "success");
			    } else if(response == "2") {
			      noti("Валюта уже существует в базе!", "warning");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})

		});

		function deleteWithdrawVerifyCurrencySP(t_id) {
			noti("Процесс начался..", "info");
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_WITHDRAW_VERIFY_CURRENCY_SP",
			    v_id: t_id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Валюта успешно удалена!", "success");
			    } else if(response == "2") {
			    	noti("Валюта уже удалена, обновите страницу!", "error");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		$("#save_sp_update_transfer_status").on("click", function() {
			var sp_transfer_fake_status = $("#sp_transfer_fake_status").val();

			if(sp_transfer_fake_status == null) {
				noti("Пожалуйста, выберите статус на который нужно изменить", "warning");
			} else {
				noti("Процесс начался! Это может занять несколько секунд..", "info");

				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "UPDATE_ALL_USERS_FAKE_TRANSFER_STATUS",
				    sp_transfer_fake_status: sp_transfer_fake_status
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Статус Transfer успешно изменен на " + sp_transfer_fake_status, "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

		});

		$("#save_sp_update_invest_status").on("click", function() {
			var sp_invest_fake_status = $("#sp_invest_fake_status").val();

			if(sp_invest_fake_status == null) {
				noti("Пожалуйста, выберите статус на который нужно изменить", "warning");
			} else {
				noti("Процесс начался! Это может занять несколько секунд..", "info");

				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "UPDATE_ALL_USERS_FAKE_INVEST_STATUS",
				    sp_invest_fake_status: sp_invest_fake_status
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Статус Invest успешно изменен на " + sp_invest_fake_status, "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

		});

		$("#save_sp_fake_transfer_select").on("click", function() {
			var sp_transfer_active_select = $("#sp_transfer_active_select").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SP_FAKE_TRANSFER_SELECT",
			    sp_transfer_active_select: sp_transfer_active_select
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
			    }

			  }
			})
			
		});

		$("#save_sp_fake_invest_select").on("click", function() {
			var sp_invest_active_select = $("#sp_invest_active_select").val();

			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "SAVE_SP_FAKE_INVEST_SELECT",
			    sp_invest_active_select: sp_invest_active_select
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
			    }

			  }
			})
			
		});

		$("#save_sp_invest_percent").on("click", function() {
			var sp_up_invest_1w = $("#sp_up_invest_1w").val();
			var sp_up_invest_2w = $("#sp_up_invest_2w").val();
			var sp_up_invest_1m = $("#sp_up_invest_1m").val();
			var sp_up_invest_2m = $("#sp_up_invest_2m").val();

			if(sp_up_invest_1w == "" || parseFloat(sp_up_invest_1w) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else if(sp_up_invest_2w == "" || parseFloat(sp_up_invest_2w) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else if(sp_up_invest_1m == "" || parseFloat(sp_up_invest_1m) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else if(sp_up_invest_2m == "" || parseFloat(sp_up_invest_2m) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else {
				$.ajax({
				  url: "ajax/SAVE_SP_INVEST_PERCENT",
				  type: "POST",
				  data: {
				    sp_up_invest_1w: sp_up_invest_1w,
				    sp_up_invest_2w: sp_up_invest_2w,
				    sp_up_invest_1m: sp_up_invest_1m,
				    sp_up_invest_2m: sp_up_invest_2m
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

			
		});

		$("#spAddMinDepAmount").on("click", function() {
			var spMinDepCurrency = $("#spMinDepCurrency").val();
			var spMinDepAmount = $("#spMinDepAmount").val();

			if(spMinDepAmount == '') {
				noti("Заполните поле Amount", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "SAVE_SP_MIN_DEP",
				    spMinDepCurrency: spMinDepCurrency,
				    spMinDepAmount: spMinDepAmount
				  },
				  success: function(response) {
				    if(response == "1") {
				    	$("#spMinDepAmount").val("");
				      noti("Минимальная сумма для депозита успешно установлен", "success");
				    } else if(response == "2") {
				      noti("Для данной валюты уже минимальная сумма установлена", "error");
				    } else if(response == "44") {
				      noti("Сумма не может быть ниже лимита Админа!", "error");
				    } else {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		});

		function deleteThisMinAmount(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "DELETE_THIS_MIN_DEP",
			    temp_id: id
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Min limit успешно удален!", "success");
			    } else if(response == "2") {
			      noti("Min limit уже удален или не принадлежит вам!", "error");
			    } else {
			      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
			    }

			  }
			})
		}

		$("#save_sp_features_settings").on("click", function() {
			var fake_w_new_checked;
			var invest_new_checked;
			var transfer_new_checked;

			var fake_w_all_checked;
			var invest_all_checked;
			var transfer_all_checked;

			if ($('#fake_w_new_checked').is(":checked")) {
				fake_w_new_checked = '1';
			} else {
				fake_w_new_checked = '0';
			}

			if ($('#invest_new_checked').is(":checked")) {
				invest_new_checked = '1';
			} else {
				invest_new_checked = '0';
			}

			if ($('#transfer_new_checked').is(":checked")) {
				transfer_new_checked = '1';
			} else {
				transfer_new_checked = '0';
			}

			if ($('#fake_w_all_checked').is(":checked")) {
				fake_w_all_checked = '1';
			} else {
				fake_w_all_checked = '0';
			}

			if ($('#invest_all_checked').is(":checked")) {
				invest_all_checked = '1';
			} else {
				invest_all_checked = '0';
			}

			if ($('#transfer_all_checked').is(":checked")) {
				transfer_all_checked = '1';
			} else {
				transfer_all_checked = '0';
			}

			$.ajax({
			  url: "ajax/SAVE_SP_FEATURES_SETTINGS",
			  type: "POST",
			  data: {
			    fake_w_new_checked: fake_w_new_checked,
			    invest_new_checked: invest_new_checked,
			    transfer_new_checked: transfer_new_checked,
			    fake_w_all_checked: fake_w_all_checked,
			    invest_all_checked: invest_all_checked,
			    transfer_all_checked: transfer_all_checked
			  },
			  success: function(response) {
			    if(response == "1") {
			      noti("Данные успешно обновлены", "success");
			    } else if(response == "3") {
			      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
			    }

			  }
			})
			
		});

		$("#saveAllDefaultErrorMessage").on("click", function() {
			var default_error_withdraw = $("#SettingsDefaultErrorMessage").val();
			var default_error_tr = $("#SettingsDefaultErrorMessage2").val();
			var default_error_chat = $("#SettingsDefaultErrorMessage3").val();
			var default_error_p2p = $("#SettingsDefaultP2PErrorMessage").val();

			if(default_error_p2p == "" || default_error_tr == "" || default_error_chat == "" || default_error_withdraw == "") {
				noti("Поля ошибок не должно быть пусто!", "error");
			} else {
				$.ajax({
				  url: "ajax/SETTINGS_UPDATE_DEFAULT_ALL_ERROR",
				  type: "POST",
				  data: {
				    default_error_withdraw: default_error_withdraw,
				    default_error_tr: default_error_tr,
				    default_error_chat: default_error_chat,
				    default_error_p2p: default_error_p2p
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфликсу :(", "error");
				    }

				  }
				})
			}

		});

		$("#save_sp_min_deposit").on("click", function() {
			var sp_minimum_deposit = $("#sp_minimum_deposit").val();

			if(sp_minimum_deposit == "" || parseFloat(sp_minimum_deposit) < 0) {
				noti("Amount - поле не может быть пусто и не должно быть меньше 0!", "error");
			} else {
				$.ajax({
				  url: "ajax/SAVE_SP_MIN_DEPOSIT_AMOUNT",
				  type: "POST",
				  data: {
				    sp_minimum_deposit: sp_minimum_deposit
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Данные успешно обновлены", "success");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь к Нетфлексу :(", "error");
				    }

				  }
				})
			}

			
		});

		$("#kt_app_sidebar_toggle").on("click", function() {
			$.ajax({
			  url: "ajax/ajax_panel",
			  type: "POST",
			  data: {
			    action: "DISPLAY_MENU_COOKIE"
			  },
			  success: function(response) {

			  }
			})
		});

		function editMyDomain(id) {
			$.ajax({
			  url: "/spanel/ajax/EDIT_MY_DOMAIN",
			  type: "POST",
			  data: {
			    domain_id: id
			  },
			  success: function(response) {
			    if(response == "2") {
			      noti("Такой домен не существует", "error");
			    } else {
			    	var json = JSON.parse(response);
		            var domain = json['domain_name'];
		            var logo = json['logo'];
		            var title = json['title'];
		            var twitter = json['twitter'];
		            var telegram = json['telegram'];
		            var instagram = json['instagram'];
			    	$("#edit_domain_name").val(domain);
					$("#edit_domain_logo").attr("src", "/uploads/logos/" + logo);
					$("#edit_domain_title").val(title);
					$("#edit_domain_twitter").val(twitter);
					$("#edit_domain_telegram").val(telegram);
					$("#edit_domain_instagram").val(instagram);

					$("#d_edit_id").val(id);
			    }

			  }
			})
		}

		$("#domain_main_save").on("click", function(e) {
			e.preventDefault();

			$("#deposit_edit_close").click();

			var edit_domain_title = $("#edit_domain_title").val();
			var edit_domain_twitter = $("#edit_domain_twitter").val();
			var edit_domain_telegram = $("#edit_domain_telegram").val();
			var edit_domain_instagram = $("#edit_domain_instagram").val();
			var select_domain_logo = $("#select_domain_logo").val();
			var d_edit_id = $("#d_edit_id").val();

			<!-- if(select_domain_logo == "") { -->
				<!-- noti("Обновляю..", "info"); -->
				<!-- $.ajax({ -->
			    <!-- url: "ajax/ajax_panel.php", -->
			    <!-- type: "POST", -->
			    <!-- data: { -->
			      <!-- action: "SP_DOMAIN_UPDATE_MAIN_NOIMG", -->
			      <!-- edit_domain_title: edit_domain_title, -->
			      <!-- d_edit_id: d_edit_id, -->
			      <!-- edit_domain_twitter: edit_domain_twitter, -->
			      <!-- edit_domain_telegram: edit_domain_telegram, -->
			      <!-- edit_domain_instagram: edit_domain_instagram -->
			    <!-- }, -->
			    <!-- success: function(response) { -->
			      <!-- if(response == "1") { -->
			      	<!-- noti("Настройки для домена успешно обновлены!", "success"); -->
			      <!-- } else if(response == "2") { -->
			      	<!-- noti("Домен не принадлежит вам!", "error"); -->
			      <!-- } else { -->
			      	<!-- noti("Произошла неизвестная ошибка, обратитесь к разработчику :(", "error"); -->
			      <!-- } -->

			    <!-- } -->
			  <!-- }) -->

			<!-- } else { -->
				

				select_domain_logo = $('#select_domain_logo')[0].files[0];

				<!-- if(select_domain_logo['size'] > 1000000) { -->
					<!-- noti("Размер логотипа не должен быть больше 1мб!", "error"); -->
				<!-- } else { -->
					noti("Обновляю..", "info");
					var form = new FormData();
			        form.append('action', "SP_DOMAIN_UPDATE_MAIN");
			        form.append('edit_domain_title', edit_domain_title);
			        form.append('edit_domain_instagram', edit_domain_instagram);
			        form.append('edit_domain_telegram', edit_domain_telegram);
			        form.append('edit_domain_twitter', edit_domain_twitter);
			        form.append('d_edit_id', d_edit_id);
			        form.append('select_domain_logo', select_domain_logo);

			        $.ajax({
			            url: 'ajax/SP_DOMAIN_UPDATE_MAIN',
			            data: form,
			            cache: false,
			            contentType: false,
			            processData: false,
			            type: 'POST',
			            success:function(response) {
			                if(response == "1") {
						      	noti("Настройки для домена успешно обновлены!", "success");
						      } else if(response == "2") {
						      	noti("Домен не принадлежит вам!", "error");
						      } else {
						      	noti("Произошла неизвестная ошибка, обратитесь к разработчику :(", "error");
						      }
			            }
			        });
				<!-- } -->

				
			<!-- } -->

		});

		$("#remove_support_dialog").on("click", function(e) {
			e.preventDefault();

			var user_id = $("#support_user_id_hidden").val();

			if(user_id != '' || user_id != "0" || parseFloat(user_id) > 0) {
				var confirm_func = confirm("Вы действительно хотите удалить всю переписку с открытым пользователем? После подтверждение все сообщения будут удалены без возможности возвраза!");

				if(confirm_func) {
					noti("Процесс начался..", "info");
					$.ajax({
					    url: "ajax/DELETE_SUPPORT_HISTORY",
					    type: "POST",
					    data: {
					      user_id: user_id
					    },
					    success: function(response) {
					      if(response == "1") {
					      	noti("Переписка успешно удалена!", "success");
					      	setTimeout(function() {
					      		location.reload();
					      	}, 1500);
					      } else if(response == "2") {
					      	noti("Переписка не найдена!", "error");
					      } else {
					      	noti("Произошла неизвестная ошибка, обратитесь к разработчику :(", "error");
					      }

					    }
					  })
				}
			}
		});

		$("#saveAmlHtml").on("click", function() {
			var termsHtml = $("#amlHtml").val();

			if(termsHtml == "") {
				noti("Please, enter Aml-kyc-policy rules", "error");
			} else {
				$.ajax({
				  url: "ajax/SAVE_AML_HTML",
				  type: "POST",
				  data: {
				    termsHtml: termsHtml
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Aml rules - успешно сохранен!", "success");
				    } else {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}


		});

		$("#getAmlHtml").on("click", function() {
			var termsHtml = $("#first_aml_data").html();
			$(".note-editable").html(termsHtml);
			$("#amlHtml").val(termsHtml);

			noti("Все изменения сброщены и текст восстановлен на начальный, осталось сохранить", "success");


		});

		function editWithdraw(id) {
			$.ajax({
			  url: "ajax/ajax_panel.php",
			  type: "POST",
			  data: {
			    action: "EDIT_WITHDRAW_TRANSACTION",
			    trans_id: id
			  },
			  success: function(response) {
			    if(response == "2") {
			      noti("Такой транзакции не существует", "error");
			    } else {
			    	var json = JSON.parse(response);
		            var get_address = json['address'];
		            var get_id = json['trans_id'];
					$("#w_edit_address").val(get_address);
					$("#w_edit_id").val(get_id);
			    }

			  }
			})
		}

		function editWithdrawSave() {
			var d_address = $("#w_edit_address").val();
			var d_trans_id = $("#w_edit_id").val();

			if(d_address == '' || d_address == ' ') {
				noti("Address - не может быть пустым", "error");
			} else {
				$.ajax({
				  url: "ajax/ajax_panel.php",
				  type: "POST",
				  data: {
				    action: "EDIT_WITHDRAW_TRANSACTION_SAVE",
				    trans_id: d_trans_id,
				    d_address: d_address
				  },
				  success: function(response) {
				    if(response == "1") {
				      noti("Транзакция успешно изменена", "success");
				      $("#close_edit_w_modal").click();
				    } else if(response == "2") {
				      noti("Такой транзакции не существует", "error");
				    } else if(response == "3") {
				      noti("Произошла неизвестная ошибка, обратитесь в саппорт :(", "error");
				    }

				  }
				})
			}

			
		}

		</script>
		<script type="text/javascript">
			function openTab(block, event) {

				$(".user_edit_menu").removeClass("active");
				$(event).addClass("active");

				$(".active_card").css("display", "none");
				$(".card").removeClass("active_card");
				$("#" + block).addClass("active_card");
				$("#" + block).css("display", "flex");

			}
		</script>

		<style type="text/css">
			.user_edit_menu {
				cursor: pointer !important;
			}
		</style>
	
	
	
	</body>
	<!--end::Body-->
</html>