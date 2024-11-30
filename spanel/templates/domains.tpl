<div class="d-flex flex-column flex-column-fluid">
  <!--begin::Toolbar-->
  <div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
    <!--begin::Toolbar container-->
    <div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack">
      <!--begin::Page title-->
      <div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
        <!--begin::Title-->
        <h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Domains</h1>
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
          <li class="breadcrumb-item text-muted">Domains</li>
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
            <h2>My domains</h2>
          </div>
          <!--end::Card title-->

        </div>
        <!--end::Card header-->
        <!--begin::Card body-->
        <div class="card-body py-0">
          <!--begin::Table wrapper-->
          <div class="table-responsive">
            <!--begin::Table-->
            <table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_table_customers_logs">
              <thead>
                <tr class="fw-bold text-muted">
                  <th class="min-w-100px">Domain</th>
                  <th class="min-w-120px">Status</th>
                  <th class="min-w-120px">Action</th>

                </tr>
              </thead>
              <!--begin::Table body-->
              <tbody>
				{list}
              </tbody>
              <!--end::Table body-->
            </table>
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


<div class="modal fade" id="kt_edit_my_domain" tabindex="-1" aria-hidden="true">
  <!--begin::Modal dialog-->
  <div class="modal-dialog modal-dialog-centered mw-650px">
    <!--begin::Modal content-->
    <div class="modal-content rounded">
      <!--begin::Modal header-->
      <div class="modal-header pb-0 border-0 justify-content-end">
        <!--begin::Close-->
        <div id="deposit_edit_close" class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
          <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
          <span class="svg-icon svg-icon-1">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
							<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
						</svg>
					</span>
          <!--end::Svg Icon-->
        </div>
        <!--end::Close-->
      </div>
      <!--begin::Modal header-->
      <!--begin::Modal body-->
      <div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
        <!--begin:Form-->
        <form id="kt_modal_new_target_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
          <!--begin::Heading-->
          <div class="mb-13 text-center">
            <!--begin::Title-->
            <h1 class="mb-3">Edit my domain</h1>
            <!--end::Title-->
          </div>
          <!--end::Heading-->
          <!--begin::Input group-->
          <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-semibold mb-2">
              <span class="required">Domain</span>

            </label>
            <!--end::Label-->
            <input id="edit_domain_name" type="text" class="form-control form-control-solid" placeholder="" name="target_title" disabled/>
            <div class="fv-plugins-message-container invalid-feedback"></div>
          </div>
          <!--end::Input group-->
          <!--begin::Input group-->
          <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-semibold mb-2">
              <span class="required">Domain logo</span>

            </label>
            <!--end::Label-->
            <img src="" style="width: 50px;" id="edit_domain_logo">
            <input accept="image/x-png,image/jpeg" name="picture" type="file" class="custom-file-input" id="select_domain_logo">
            <div class="fv-plugins-message-container invalid-feedback"></div>
          </div>
          <!--end::Input group-->
          <!--begin::Input group-->
          <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-semibold mb-2">
              <span class="required">Domain title</span>

            </label>
            <!--end::Label-->
            <input id="edit_domain_title" type="text" class="form-control form-control-solid" placeholder="" name="target_title" />
            <div class="fv-plugins-message-container invalid-feedback"></div>
          </div>
          <!--end::Input group-->
          <!--begin::Input group-->
          <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-semibold mb-2">
              <span>Twitter link</span>

            </label>
            <!--end::Label-->
            <input id="edit_domain_twitter" type="text" class="form-control form-control-solid" placeholder="https://twitter.com/domain (Не обязательно)" name="target_title" />
            <div class="fv-plugins-message-container invalid-feedback"></div>
          </div>
          <!--end::Input group-->
          <!--begin::Input group-->
          <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-semibold mb-2">
              <span>Telegram link</span>

            </label>
            <!--end::Label-->
            <input id="edit_domain_telegram" type="text" class="form-control form-control-solid" placeholder="https://tg.com/domain (Не обязательно)" name="target_title" />
            <div class="fv-plugins-message-container invalid-feedback"></div>
          </div>
          <!--end::Input group-->
          <!--begin::Input group-->
          <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-semibold mb-2">
              <span>Instagram link</span>

            </label>
            <!--end::Label-->
            <input id="edit_domain_instagram" type="text" class="form-control form-control-solid" placeholder="https://instagram.com/domain (Не обязательно)" name="target_title" />
            <div class="fv-plugins-message-container invalid-feedback"></div>
          </div>
          <!--end::Input group-->
          <input type="hidden" id="d_edit_id" value="0">
          <!--begin::Actions-->
          <div class="text-center">
            <input type="hidden" id="d_edit_id" value="0">
            <span id="domain_main_save" class="btn btn-primary">
							<span class="indicator-label">Save</span>
            </span>
          </div>
          <!--end::Actions-->
        </form>
        <!--end:Form-->
      </div>
      <!--end::Modal body-->
    </div>
    <!--end::Modal content-->
  </div>
  <!--end::Modal dialog-->
</div>