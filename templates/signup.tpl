<section class="signUp">
	<div class="form__container">
		<div class="form__left">
			<div class="form__title"> Sign up </div>
			<form class="form__box" action="#">
				<div class="form__group">
					<label class="form__name form__name-name" for="form-name">Username</label>
					<input class="form__input" type="text" placeholder="Enter your username" id="username"> </div>
				<div class="form__group">
					<label class="form__name form__name-email" for="form-email">Email</label>
					<input class="form__input" type="email" placeholder="Enter your email" id="email"> </div>
				<div class="form__group">
					<label class="form__name form__name-password" for="form-password">Password</label>
					<input class="form__input" type="password" placeholder="Enter your password" id="password"> </div>
				<div class="form__group">
					<label class="form__name form__name-confirm" for="form-confirm">Confirm your password</label>
					<input class="form__input" type="password" placeholder="Enter your password" id="re_password"> </div>
				<div class="form__features">
					<div class="form__features-wrapper">
						<label class="form__features-label" for="form-checkbox"> I agree to the <a href="../terms">Terms & Conditions</a>
							<input class="form__features-checkbox reg-checkbox" type="checkbox" id="form-checkbox"> <span class="form__features-checkmark"></span> </label>
					</div>
				</div>
				
				<input type="hidden" value="0" id="get_promo">
				<button class="form__button" type="submit" id="create_account"> <span>Sign up</span> </button>
			</form>
			<div class="form__sub">
				<div class="form__sub-text">Already registered?</div> <a class="form__sub-link" href="signin">Sign in</a> </div>
		</div>
		<div class="form__right"> <img src="/templates/res/images/space_two.png" alt=""> </div>
	</div>
</section>