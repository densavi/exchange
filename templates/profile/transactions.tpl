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
								<div class="menuProfile__more"> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history active" href="transactions">Transactions</a>  <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog " href="settings">Settings</a> </div>
							</div>
						</div>
					</div>
				</section>
				<!-- Profile menu end -->
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="profile_card">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Transaction History</h4> </div>
							<div class="card-body">
								<div class="transaction-table">
									<div class="table-responsive">
										<table class="table table-striped mb-0">
											<thead>
												<tr>
													<th>Transaction ID</th>
													<th>Time</th>
													<th>Type</th>
													<th>Amount</th>
													<th>Address</th>
													<th>Status</th>
													<th>Balance</th>
												</tr>
											</thead>
											<tbody>
												{transactions_list}
												
												
												
												<!-- <tr> -->
													<!-- <td></td> -->
													<!-- <td></td> -->
													<!-- <td></td> -->
													<!-- <td></td> -->
													<!-- <td></td> -->
													<!-- <td></td> -->
													<!-- <td></td> -->
												<!-- </tr> -->
												<!-- <tr> -->
													<!-- <td>#5658455305372</td> -->
													<!-- <td>2023-05-15 13:45:40</td> -->
													<!-- <td>Withdraw</td> -->
													<!-- <td>0.22574826 ETH</td> -->
													<!-- <td>3234234234234</td> -->
													<!-- <td><span class="status_canceled">Canceled</span></td> -->
													<!-- <td>0.22574826 ETH</td> -->
												<!-- </tr> -->
												
												
												
											
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>