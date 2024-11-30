<div class="b1">
	<!-- <div class="page-title dashboard"> -->
		<!-- <div class="container"> -->
			<!-- <div class="row"> -->
				<!-- <div class="col-6"> -->
					<!-- <div class="page-title-content"> -->
						<!-- <p>Welcome Back, <span> login</span> </p> -->
					<!-- </div> -->
				<!-- </div> -->
			<!-- </div> -->
		<!-- </div> -->
	<!-- </div> -->
	<div class="content-body">
		<div class="container">
			<div class="row">
				<!-- Profile menu -->
				<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
				<link rel="stylesheet" href="/templates/res/css/menu_layout.css">
				<section class="menuProfile">
					<div class="menuProfile__more-bg"></div>
					<div class="menuProfile__container">
						<div class="menuProfile__box">
							<div class="menuProfile__menu-box"> <a class="menuProfile__menu-item mdi mdi-bullseye " href="wallet">Overview</a> <a class="menuProfile__menu-item mdi mdi-database " href="deposit">Deposit</a> <a class="menuProfile__menu-item mdi mdi-transfer-right " href="withdraw">Withdraw</a> <span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>
								<div class="menuProfile__more"> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a>  <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a> </div>
							</div>
						</div>
					</div>
				</section>
				<!-- Profile menu end -->
				
				
				
				
				
				
				
				<div class="col-xl-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Create API Key</h4> </div>
						<div class="card-body">
							<div class="row col-xl-6" style="margin-left: -11px;">
								<div class="col-xl-4 col-md-4" style="margin-bottom: -20px;">
									<div class="form-group">
										<label class="mr-sm-2">
											<input type="checkbox" class="form-check-input" checked disabled> Read data </label>
									</div>
								</div>
								<div class="col-xl-8 col-md-8" style="margin-bottom: -20px;">
									<div class="form-group">
										<label class="mr-sm-2">
											<input type="checkbox" class="form-check-input" id="ApiWithdrawCB"> Withdraw balance </label>
									</div>
								</div>
								<div class="col-xl-4 col-md-4">
									<div class="form-group">
										<label class="mr-sm-2">
											<input type="checkbox" class="form-check-input" id="ApiSpotCB"> Spot trading </label>
									</div>
								</div>
								<div class="col-xl-8 col-md-8">
									<div class="form-group">
										<label class="mr-sm-2">
											<input type="checkbox" class="form-check-input" id="ApiMarginCB"> Margin trading </label>
									</div>
								</div>
							</div>
							<button class="btn btn-primary" id="ApiCreateBtn">Create API Key</button>
						</div>
					</div>
				</div>
				<div class="col-xl-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Your API Keys</h4> </div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Key</th>
											<th>Permissions</th>
											<th>Status</th>
											<th>Action</th>
										</tr>
									</thead>
									[no_keys]
									<tbody id="ApiTbody">
										<tr>
											<td></td>
											<td></td>
											<td>At the moment you do not have created api keys</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
									[/no_keys]
									[is_keys]
									<tbody id="ApiTbody">
										{list}
									</tbody>
									[/is_keys]
									
									
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<style>
	input[type="checkbox"] {
		cursor: pointer;
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
		outline: 0;
		background: #000000;
		height: 15px;
		width: 15px;
		border: none;
		border-radius: 4px;
		margin-top: 3px;
	}
	
	label {
		font-size: 12px !important;
	}
	
	input[type="checkbox"]:checked {
		background: #037bff;
	}
	
	input[type="checkbox"]:hover {
		filter: brightness(90%);
	}
	
	input[type="checkbox"]:disabled {
		background: #037bff;
		opacity: 0.6;
		pointer-events: none;
	}
	
	input[type="checkbox"]:after {
		content: '';
		position: relative;
		left: 28%;
		top: 24%;
		width: 40%;
		height: 40%;
		border: solid #fff;
		border-width: 0 2px 2px 0;
		transform: rotate( 45deg);
		display: none;
	}
	
	input[type="checkbox"]:checked:after {
		display: block;
	}
	
	input[type="checkbox"]:disabled:after {
		border-color: #ffffff;
	}
	/* The switch - the box around the slider */
	
	.switch {
		position: relative;
		display: inline-block;
		width: 45px;
		height: 20px;
	}
	/* Hide default HTML checkbox */
	
	.switch input {
		opacity: 0;
		width: 0;
		height: 0;
	}
	/* The slider */
	
	.slider {
		display: inline-block;
		background: #9b9b9b;
		border-radius: 16px;
		width: 45px;
		height: 21px;
		position: relative;
		vertical-align: middle;
		-webkit-transition: .4s;
		transition: .4s;
	}
	
	.slider:before {
		content: "";
		border-radius: 50%;
		width: 17px;
		height: 17px;
		position: absolute;
		top: 2px;
		left: 3px;
		background-color: white;
		-webkit-transition: .4s;
		transition: .4s;
	}
	
	input:checked + .slider {
		background-color: #5d78ff;
	}
	
	input:focus + .slider {
		box-shadow: 0 0 1px #2196F3;
	}
	
	input:checked + .slider:before {
		-webkit-transform: translateX(22px);
		-ms-transform: translateX(22px);
		transform: translateX(22px);
	}
	/* Rounded sliders */
	
	.slider.round {
		border-radius: 34px;
	}
	
	.slider.round:before {
		border-radius: 50%;
	}
	</style>