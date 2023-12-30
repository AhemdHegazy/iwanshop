<div class="modal fade" id="aizUploaderModal" data-backdrop="static" role="dialog" aria-hidden="true" >
	<div class="modal-dialog modal-adaptive" role="document">
		<div class="modal-content h-100">
			<div class="modal-header pb-0 bg-light">
				<div class="uppy-modal-nav">
					<ul class="nav nav-tabs border-0">
						<li class="nav-item">
							<a class="nav-link active font-weight-medium text-dark" data-toggle="tab" href="#aiz-select-file">{{ translate('Select File') }}</a>
						</li>
						<li class="nav-item">
							<a class="nav-link font-weight-medium text-dark" data-toggle="tab" href="#aiz-upload-new">{{ translate('Upload New') }}</a>
						</li>
					</ul>
				</div>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true"></span>
				</button>
			</div>
			<div class="modal-body">
				<div class="tab-content h-100">
					<div class="tab-pane active h-100" id="aiz-select-file">
						<div class="aiz-uploader-filter pt-1 pb-3 border-bottom mb-4">
							<div class="row align-items-center gutters-5 gutters-md-10 position-relative">
								<div class="col-xl-2 col-md-3 col-5">
									<div class="">
										<!-- Input -->
										<select class="form-control form-control-xs aiz-selectpicker" name="aiz-uploader-sort">
											<option value="newest" selected>{{ translate('Sort by newest') }}</option>
											<option value="oldest">{{ translate('Sort by oldest') }}</option>
											<option value="smallest">{{ translate('Sort by smallest') }}</option>
											<option value="largest">{{ translate('Sort by largest') }}</option>
										</select>
										<!-- End Input -->
									</div>
								</div>
								<div class="col-md-3 col-5">
									<div class="custom-control custom-radio">
										<input type="checkbox" class="custom-control-input" name="aiz-show-selected" id="aiz-show-selected" name="stylishRadio">
										<label class="custom-control-label" for="aiz-show-selected">
										{{ translate('Selected Only') }}
										</label>
									</div>
								</div>
								<div class="col-md-4 col-xl-3 ml-auto mr-0 col-2 position-static">
									<div class="aiz-uploader-search text-right">
										<input type="text" class="form-control form-control-xs" name="aiz-uploader-search" placeholder="{{ translate('Search your files') }}">
										<i class="search-icon d-md-none"><span></span></i>
									</div>
								</div>
							</div>
						</div>
						<div class="aiz-uploader-all clearfix c-scrollbar-light">
							<div class="align-items-center d-flex h-100 justify-content-center w-100">
								<div class="text-center">
									<h3>لا يوجد ملفات</h3>
								</div>
							</div>
						</div>
					</div>
                    <div class="row align-items-center gutters-5 gutters-md-10 position-relative">
                        <div class="col-lg-6">
                            <div class="form-group ">

                                <label class="aiz-switch aiz-switch-success mb-0">
                                    <input type="checkbox" {{session("watermark") == "yes" ? "checked" : ""}} name="watermark" id="watermark">
                                    <span></span>
                                </label>
                                <label class=" col-from-label" style="font-size: 14px">{{translate("Enable Watermark in this image")}}</label>

                            </div>
                        </div>
                        {{--<div class="col-lg-6 text-left">

                            <div class="form-group ">
                                <select class="select2 form-control aiz-selectpicker" id="related" name="related" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true">
                                    <option disabled selected>من فضل أختار الفولدر </option>
                                    <option value="products">المنتجات  </option>
                                    <option value="categories">الأقسام   </option>
                                    <option value="settings">الإعدادات  </option>
                                    <option value="staffs">الموظفين  </option>
                                    <option value="brands">العلامات التجارية  </option>
                                </select>
                            </div>
                        </div>--}}
                    </div>
					<div class="tab-pane h-100" id="aiz-upload-new">
						<div id="aiz-upload-files" class="h-100">
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer justify-content-between bg-light">
				<div class="flex-grow-1 overflow-hidden d-flex">
					<div class="">
						<div class="aiz-uploader-selected">{{ translate('0 File selected') }}</div>
						<button type="button" class="btn-link btn btn-sm p-0 aiz-uploader-selected-clear">{{ translate('Clear') }}</button>
					</div>
					<div class="mb-0 ml-3">
						<button type="button" class="btn btn-sm btn-primary" id="uploader_prev_btn">{{ translate('Prev') }}</button>
						<button type="button" class="btn btn-sm btn-primary" id="uploader_next_btn">{{ translate('Next') }}</button>
					</div>
				</div>
				<button type="button" class="btn btn-sm btn-primary" data-toggle="aizUploaderAddSelected">{{ translate('Add Files') }}</button>
			</div>
		</div>
	</div>
</div>
