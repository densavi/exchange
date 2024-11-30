<link rel="stylesheet" href="/templates/res/css/g_kyc_style.css">
<section class="verification" style="margin-top: 50px;">
	<div class="verification__container">
		<div class="verification__title"> KYC verification </div>
		<div class="verification__box">
			<div class="verification__info verification__info-not">
				<div class="verification__info-img"> <img src="/templates/res/images/not-verified.svg" alt=""> </div>
				<div class="verification__info-text"> Account not verified </div>
			</div>
			<div class="verification__inputs">
				<div class="verification__input verification__input-first">
					<label class="verification__input-label" for="kyc_first_name"> First name </label>
					<input id="kyc_first_name" type="text" value=""> </div>
				<div class="verification__input verification__input-last">
					<label class="verification__input-label" for="kyc_last_name"> Last name </label>
					<input id="kyc_last_name" value="" type="text"> </div>
				<div class="verification__input verification__input-country">
					<div class="verification__input-label"> Select country </div>
					
					<div class="verification__input-input  " id="verificationCountry"> <span class="verification__input-value">Germany</span>
						<div class="verification__input-icon"> <img src="/templates/res/images/arrow.svg" alt=""> </div>
					</div>
					
					<div class="verification__input-list verification__input-list-country">
						<div class="verification__input-box">
							{countries}
							
						</div>
					</div>
				</div>
				<div class="verification__input verification__input-address">
					<label class="verification__input-label" for="kyc_address"> Address </label>
					<input id="kyc_address" type="text" value=""> </div>
				<div class="verification__input verification__input-phone">
					<div class="verification__input-label"> Phone number </div>
					<div class="verification__input-container verification__input-container-phone">
						<div class="verification__input-wrapper">
							<div class="verification__input-input " id="verificationPhone"> <span style="margin-left: 5px;" class="verification__input-value">
                                                                        <img id="selected_country_flag_img" src="/templates/res/images/flags/de.png" alt="">
                                                                    </span> </div>
							<div class="verification__input-list verification__input-list-phone">
								<div class="verification__input-box">
									<div class="verification__input-list-item"> <img src="/templates/res/images/flags/de.png" alt=""> </div>
									<div class="verification__input-list-item"> <img src="/templates/res/images/flags/ug.png" alt=""> </div>
									<div class="verification__input-list-item"> <img src="/templates/res/images/flags/us.png" alt=""> </div>
								</div>
							</div>
						</div>
						<input id="kyc_phone" type="number" value=""> </div>
				</div>
				<div class="verification__input verification__input-date">
					<label class="verification__input-label" for="kyc_date_of_birth"> Date of birth </label>
					<input id="kyc_date_of_birth" value="" type="date"> </div>
				<div class="verification__input verification__input-passport">
					<div class="verification__input-label"> Select ID type </div>
					<div class="verification__input-input " id="verificationPassport"> <span class="verification__input-value">Passport</span>
						<div class="verification__input-icon"> <img src="/templates/res/images/arrow.svg" alt=""> </div>
					</div>
					<div class="verification__input-list verification__input-list-passport">
						<div class="verification__input-box">
							<div onclick="selectedIDtype('Passport')" class="verification__input-list-item"> Passport </div>
							<div onclick="selectedIDtype('Driver license')" class="verification__input-list-item"> Driver license </div>
							<div onclick="selectedIDtype('ID card')" class="verification__input-list-item"> ID card </div>
						</div>
					</div>
				</div>
				<div class="verification__input verification__input-id">
					<label class="verification__input-label" for="kyc_id_number"> ID number </label>
					<input value="" id="kyc_id_number" type="text" placeholder="Enter ID number"> </div>
			</div>
			<div class="verification__file">
				<div class="verification__document">
					<div class="verification__file-title"> Upload the document </div>
					<div class="verification__file-description"> Please provide a clear photo/scan of your document. Please make sure that the photo/scan is complete and clearly visible, in JPG/PNG format </div>
					<div class="verification__file-box">
						<label class="verification__file-input">
							<input id="image_document" type="file" onchange="getFileName(event, `document`)" /> <img src="/templates/res/images/upload.svg" alt=""> Choose file </label>
						<div class="verification__file-output" id="verification__file-output-document"> No file chosen </div>
					</div>
				</div>
				<div class="verification__selfie">
					<div class="verification__file-title"> Upload a selfie </div>
					<div class="verification__file-description"> Please upload a photo of yourself that clearly shows your face. </div>
					<div class="verification__file-box">
						<label class="verification__file-input">
							<input id="image_selfie" type="file" onchange="getFileName(event, `selfie`)" /> <img src="/templates/res/images/upload.svg" alt=""> Choose file </label>
						<div class="verification__file-output" id="verification__file-output-selfie"> No file chosen </div>
					</div>
				</div>
			</div>
			<div class="verification__submit-container">
				<button class="verification__submit" type="submit" id="submit_btn"> Submit for review </button>
			</div>
		</div>
	</div>
</section>
