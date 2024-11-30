<div class="b1">
	<!-- <div class="page-title dashboard"> -->
	<!-- <div class="container"> -->
	<!-- <div class="row"> -->
	<!-- <div class="col-6"> -->
	<!-- <div class="page-title-content"> -->
	<!-- <p>Welcome Back, -->
	<!-- <span> login</span> -->
	<!-- </p> -->
	<!-- </div> -->
	<!-- </div> -->
	<!-- <div class="col-6"> -->
	<!-- <ul class="text-right breadcrumbs list-unstyle"> -->
	<!-- <li><a href="wallet">Back to Wallet</a></li> -->
	<!-- </ul> -->
	<!-- </div> -->
	<!-- </div> -->
	<!-- </div> -->
	<!-- </div> -->
	<!-- Profile menu -->
	<link rel="stylesheet" href="/templates/res/css/materialdesignicons.min.css">
	<link rel="stylesheet" href="/templates/res/css/menu_layout.css">
	<section class="menuProfile">
		<div class="menuProfile__more-bg"></div>
		<div class="menuProfile__container">
			<div class="menuProfile__box">
				<div class="menuProfile__menu-box"> <a class="menuProfile__menu-item mdi mdi-bullseye " href="wallet">Overview</a> <a class="menuProfile__menu-item mdi mdi-database " href="deposit">Deposit</a> <a class="menuProfile__menu-item mdi mdi-transfer-right" href="withdraw">Withdraw</a> <span class="menuProfile__menu-item menuProfile__menu-more mdi mdi-more">Menu</span>
					<div class="menuProfile__more"> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-history " href="transactions">Transactions</a>  <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cash " href="invest">Invest</a> <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-diamond " href="affiliate">Affiliate</a>  <a class="menuProfile__menu-item menuProfile__item-mobile mdi mdi-cog active" href="settings">Settings</a> </div>
				</div>
			</div>
		</div>
	</section>
	<!-- Profile menu end -->
	<div class="content-body">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="card sub-menu"> </div>
				</div>
				<div class="col-xl-12">
					<div class="row">
					
					
						<!-- <div class="col-xl-12 col-md-12"> -->
							<!-- <link rel="stylesheet" href="/templates/res/css/userStyle.css"> -->
							<!-- <section class="userAttention" style="margin-bottom: 32px; margin-top: 8px;"> -->
								<!-- <div class="userCard__container" style="padding: 0;"> -->
									<!-- <div class="userAttention__box"> -->
										<!-- <div class="userAttention__text"> <span>Attention!</span>Your account is not secure enough, please enable two-factor authentication </div> -->
										<!-- <div class="userAttention__btn" id="enable_2fa">Enable</div> -->
									<!-- </div> -->
								<!-- </div> -->
							<!-- </section> -->
						<!-- </div> -->
						
						
						<!-- <div class="col-xl-12 col-md-12"> -->
							<!-- <div class="card" style="min-height: 170px; background: #26273a;"> -->
								<!-- <div class="card-header" style="background: #26273a;"> -->
									<!-- <h4 class="card-title">Account Verification</h4> </div> -->
								<!-- <div class="card-body" style="background: #26273a;"> -->
									<!-- <div class="form-row"> -->
										<!-- <div class="col-md-10"> -->
											<!-- <p style="color: #9895d9">To increase user limits, you need to pass the verification of a Intermediate user or a Advanced user, you must provide personal information, a photo of an identity document, and a photo of your face.</p> -->
										<!-- </div> -->
										<!-- <div class="col-md-2"> <img class="kyc_block_image" src="/templates/res/images/verification.webp" style="width: 114px; position: absolute; right: 19px; top: -5px;"> </div> -->
										<!-- <div class="col-12"> <a href="verification" class="btn btn-info waves-effect px-4">Verification page</a> </div> -->
									<!-- </div> -->
								<!-- </div> -->
							<!-- </div> -->
						<!-- </div> -->
						
						
						
						
						<div class="col-xl-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<!-- <form action="../ajax/ajax" method="POST" enctype="multipart/form-data"> -->
										<!-- <input type="hidden" name="action" value="UPDATE_AVATAR_AND_LOGIN"> -->
										<div class="form-row">
											
											<!-- <div class="form-group col-xl-12"> -->
												<!-- <label class="mr-sm-2">Your Username</label> -->
												<!-- <input name="username" type="text" class="form-control" placeholder="Name" value="{username}">  -->
											<!-- </div> -->
											
											<div class="form-group col-xl-12">
												<div class="media align-items-center mb-3 "> <img class="mr-3 rounded-circle mr-0 mr-sm-3 user_photo_setting" src="{photo}" width="50" height="50" alt="">
													<div class="media-body">
														<h5 class="mb-0">{username}</h5>
														<p class="mb-0">Max file size is 1 mb </p>
													</div>
												</div>
												<div class="file-upload-wrapper" data-text="Change Photo">
													<input id="profile_photo" accept="image/x-png,image/jpeg" name="profile_photo" type="file" class="file-upload-field"> </div>
											</div>
											<!-- <div class="col-12"> -->
												<!-- <button id="save_img_login" class="btn btn-success waves-effect px-4">Save</button> -->
											<!-- </div> -->
										</div>
									<!-- </form> -->


								</div>
							</div>
						</div>
						<div class="col-xl-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<form action="#">
										<div class="form-row">
											<div class="form-group col-xl-12">
												<label class="mr-sm-2">Phone number</label>
												<input id="phone_number" type="email" class="form-control" placeholder="1 1234567890" value="{phone}"> </div>
											<div class="form-group col-xl-12">
												<label class="mr-sm-2">Old Password</label>
												<input id="old_password" type="password" class="form-control" placeholder="**********"> </div>
											<div class="form-group col-xl-12">
												<label class="mr-sm-2">New Password</label>
												<input id="new_password" type="password" class="form-control" placeholder="**********"> </div>
											<div class="col-12">
												<button id="user_profile_save" class="btn btn-success waves-effect px-4">Save</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Personal Information</h4> </div>
								<div class="card-body">
									<form class="personal_validate" action="#">
										<div class="form-row">
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Your Name</label>
												<input id="fullname" type="text" class="form-control" placeholder="John Doe" name="fullname" value="{fullname}"> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Current email</label>
												<input type="email" class="form-control_blocked" placeholder="{email}" name="email" disabled=""> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Date of birth</label>
												<input id="date_of_birth" type="text" class="form-control" placeholder="10-10-2020" autocomplete="off" name="dob" value="{date_birth}"> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Present Address</label>
												<input id="present_address" type="text" class="form-control" placeholder="56, Old Street, Brooklyn" name="present_address" value="{present_address}"> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Permanent Address</label>
												<input id="permanent_address" type="text" class="form-control" placeholder="123, Central Square, Brooklyn" name="permanentaddress" value="{permanent_address}"> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">City</label>
												<input id="user_city" type="text" class="form-control" placeholder="New York" name="city" value="{user_city}"> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Postal Code</label>
												<input id="user_postal_code" type="text" class="form-control" placeholder="25481" name="postal" value="{user_postal_code}"> </div>
											<div class="form-group col-xl-6 col-md-6">
												<label class="mr-sm-2">Country</label>
												
												<select id="user_country" class="form-control" name="country">
													<option value="">Select</option>
													{countries}
												</select>
										
											</div>
											<div class="form-group col-12">
												<button id="update_person_info" class="btn btn-success px-4">Save</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="security_2fa" class="popup__container" style="display: none;">
	<div class="popup">
		<div class="popup__close" id="close_modal">
			<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 24 24" style=" fill:#FFFFFF;">
				<path d="M 4.9902344 3.9902344 A 1.0001 1.0001 0 0 0 4.2929688 5.7070312 L 10.585938 12 L 4.2929688 18.292969 A 1.0001 1.0001 0 1 0 5.7070312 19.707031 L 12 13.414062 L 18.292969 19.707031 A 1.0001 1.0001 0 1 0 19.707031 18.292969 L 13.414062 12 L 19.707031 5.7070312 A 1.0001 1.0001 0 0 0 18.980469 3.9902344 A 1.0001 1.0001 0 0 0 18.292969 4.2929688 L 12 10.585938 L 5.7070312 4.2929688 A 1.0001 1.0001 0 0 0 4.9902344 3.9902344 z"></path>
			</svg>
		</div>
		<div class="popup__left"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Google_Authenticator_for_Android_icon.svg/1200px-Google_Authenticator_for_Android_icon.svg.png" alt="" style="width: 145px; height: 145px; top: unset; left: unset; margin-top: 262px; margin-left: 31px; position: fixed;"> </div>
		<div class="popup__right">
			<div class="popup__right-title"> Enable Google 2FA Authorization </div>
			<div class="popup__right-description">
				<p>1. Scan this QR code in the <a target="_blank" href="https://support.google.com/accounts/answer/1066447">Google Authenticator app</a> <img style="width: 135px; display: block; margin-top: 7px; border: 6px solid white;" src="https://api.qrserver.com/v1/create-qr-code/?data=otpauth%3A%2F%2Ftotp%2FBitcharge+%28rexo88%40gmail.com%29%3Fsecret%3DNC64X5OUYWA5JOZK&amp;size=200x200&amp;ecc=M"> </p>
				<br>
				<p>2. Write down this code in a safe place <span style="background: #323548; padding: 10px; margin-top: 8px; display: block; width: 186px; text-align: center; border-radius: 7px; font-weight: bold;">NC64X5OUYWA5JOZK</span> </p>
				<br>
				<p>3. To activate, enter the code that has started to be generated
					<input id="code_2fa" type="number" placeholder="******" style="display: block; background: #eaeaff; border: 1px solid #343434; border-radius: 5px; padding: 11px; color: #303030; padding-bottom: 6px; width: 111px; margin-top: 6px; font-size: 17px;"> </p>
			</div>
			<div id="connect_google_2fa" class="popup__right-button"> Activate Google 2FA </div>
		</div>
	</div>
</div>