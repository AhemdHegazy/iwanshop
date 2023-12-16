<script>
    function account_delete_confirm_modal(delete_url)
    {
        jQuery('#account_delete_confirm').modal('show', {backdrop: 'static'});
        document.getElementById('account_delete_link').setAttribute('href' , delete_url);
    }
</script>

<div class="modal fade" id="account_delete_confirm" tabindex="-1" role="dialog" aria-labelledby="account_delete_confirmModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header d-block py-4">
                <div class="d-flex justify-content-center">
                    <span class="avatar avatar-md mb-2 mt-2">
                        @if (Auth::check() && Auth::user()->avatar_original != null)
                            <img src="{{ uploaded_asset(Auth::user()->avatar_original) }}" class="m-auto"
                                onerror="this.onerror=null;this.src='{{ asset('assets/img/avatar-place.png') }}';" alt="{{ translate('avatar') }}">
                        @else
                            <img src="{{ asset('assets/img/avatar-place.png') }}" class="image rounded-circle m-auto"
                                onerror="this.onerror=null;this.src='{{ asset('assets/img/avatar-place.png') }}';" alt="{{ translate('avatar') }}">
                        @endif
                    </span>
                </div>
                <h4 class="modal-title text-center fw-700" id="account_delete_confirmModalLabel" style="color: #ff9819;">{{ translate('Delete Your Account')}}</h4>
                <p class="fs-16 fw-600 text-center" style="color: #8d8d8d;">{{ translate('تنبيه : هل أنت متأكد من هذه الخطوة ')}}</p>
            </div>

            <div class="modal-body pt-3 pb-5 px-xl-5">
                <p class="text-danger mt-3 fw-800"><i>{{ translate('تنبيه :')}}&nbsp;{{ translate("ملحوظة: لا تنقر على أي زر أو لا تقم بأي إجراء أثناء حذف الحساب، فقد يستغرق ذلك بعض الوقت..")}}</i></p>
                <p class="fs-14 fw-700" style="color: #8d8d8d;">{{ translate('حذف حسابي يعني : ')}}</p>

                <div class="row bg-soft-warning py-3 ml-0 mr-0 border-left border-width-2 border-danger">
                    <div class="col-1">
                        <img src="{{ asset('assets/img/warning.png') }}" class="h-20px" alt="{{ translate('warning') }}">
                    </div>
                    <div class="col">
                        <p class="fw-600 mb-0">{{ translate('بعد حذف حسابك، لن يعد رصيد المحفظة موجودًا في نظامنا') }}</p>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary rounded-0 w-150px" data-dismiss="modal">{{ translate('Cancel')}}</button>
                <a id="account_delete_link" class="btn btn-danger rounded-0 w-150px">{{ translate('Delete Account')}}</a>
            </div>
        </div>
    </div>
</div>
