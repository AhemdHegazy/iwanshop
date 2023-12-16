@extends('backend.layouts.app')

@section('content')
    <div class="aiz-titlebar row text-left  mb-1">
        <div class="col-lg-6 mt-3">
            <h1 class="h3"> عملاء التصنيف {{$classification->name}}</h1>
        </div>

    </div>
    <div class="card">
        <form class="" id="sort_customers" action="" method="GET">
            <div class="card-header row gutters-5">
                <div class="col">
                    <h5 class="mb-0 h6"> عملاء التصنيف {{$classification->name}}</h5>
                </div>

                <div class="col-md-3">
                    <div class="form-group mb-0">
                        <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type email or name & Enter') }}">
                    </div>
                </div>
                <div class=" mb-2 mb-md-0">
                    <a class="btn btn-primary btn-sm" href="javascript:void(0)"  data-target="#bulk-sms-modal" title="أرسال رسالة SMS">
                        <i class="la la-sms la-2x"></i>
                    </a>
                    <a class="btn btn-warning btn-sm" href="javascript:void(0)"  data-target="#bulk-mail-modal" title="أرسال رسالة Gmail">
                        <i class="la la-envelope la-2x"></i>
                    </a>
{{--                    <a class="btn btn-success btn-sm" href="javascript:void(0)"  data-target="#bulk-whatsapp-modal">--}}
{{--                        <i class="la la-whatsapp la-2x"></i>--}}
{{--                    </a>--}}
                </div>
            </div>


            <div class="card-body">
                <table class="table aiz-table mb-0">
                    <thead>
                    <tr>
                        <!--<th data-breakpoints="lg">#</th>-->
                        <th>
                            <div class="form-group">
                                <div class="aiz-checkbox-inline">
                                    <label class="aiz-checkbox">
                                        <input type="checkbox" class="check-all">
                                        <span class="aiz-square-check"></span>
                                    </label>
                                </div>
                            </div>
                        </th>
                        <th>{{translate('Name')}}</th>
                        <th data-breakpoints="lg">{{translate('Email Address')}}</th>
                        <th data-breakpoints="lg">{{translate('رقم الجوال')}}</th>
                        <th data-breakpoints="lg">{{translate('التصنيفات')}}</th>
                        <th data-breakpoints="lg">{{translate('حجم الإنفاق')}}</th>
                        <th class="text-right">{{translate('Options')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($users as $key => $user)
                        @if ($user != null)
                            <tr>
                            <!--<td>{{ ($key+1) + ($users->currentPage() - 1)*$users->perPage() }}</td>-->
                                <td>
                                    <div class="form-group">
                                        <div class="aiz-checkbox-inline">
                                            <label class="aiz-checkbox">
                                                <input type="checkbox" class="check-one" name="id[]" value="{{$user->id}}">
                                                <span class="aiz-square-check"></span>
                                            </label>
                                        </div>
                                    </div>
                                </td>
                                <td>@if($user->banned == 1) <i class="fa fa-ban text-danger" aria-hidden="true"></i> @endif {{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>{{$user->phone ?? "لا يوجد "}}</td>
                                <td>
                                    @foreach($user->classifications as $class)
                                       <a href="{{route("classifications.show",$class->classification_id)}}" class="btn btn-primary btn-sm btn-inline mt-1 text-white p-0 px-2" style="font-weight: unset">
                                           <i class="la la-list"></i> {{$class->classification->name}}
                                       </a>
                                    @endforeach
                                </td>
                                <td>{{single_price($user->orders_sum_grand_total)}}</td>
                                <td class="text-right">
                                    <a class="btn btn-primary btn-sm btn-icon btn-circle " href="javascript:void(0)" title="أرسال رسالة  SMS"  data-target="#bulk-sms-modal">
                                        <i class="la la-sms lax"></i>
                                    </a>
                                    <a class="btn btn-warning btn-sm btn-icon btn-circle " href="javascript:void(0)" title="أرسال رسالة Gmail"  data-target="#bulk-mail-modal">
                                        <i class="la la-envelope lax"></i>
                                    </a>
                                    <a class="btn btn-success btn-sm btn-icon btn-circle " href="javascript:void(0)" title="أرسال رسالة إلى واتس اب"  data-target="#bulk-whatsapp-modal">
                                        <i class="la la-whatsapp lax"></i>
                                    </a>
                                    <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('customers.destroy', $user->id)}}" title="حذف من التصنيف ">
                                        <i class="las la-trash"></i>
                                    </a>

                                </td>
                            </tr>
                        @endif
                    @endforeach
                    </tbody>
                </table>
                <div class="aiz-pagination">
                    {{ $users->appends(request()->input())->links() }}
                </div>
            </div>
        </form>
    </div>
    <!-- delete Modal -->
    <div id="deletes-modal" class="modal fade">
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title h6">أضافة المستخدم للتصنيفات </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body text-center">
                    <form action="{{route("customers.classifications")}}" method="POST">
                        @csrf
                        <div class="form-group row">
                            <label class="col-md-12 col-form-label">التصنيفات </label>
                            <div class="col-md-12">
                                <select class="select2 form-control aiz-selectpicker" id="classifications" name="classifications[]" data-toggle="select2" data-placeholder="Choose ..." data-live-search="true" multiple>
                                    @foreach (\App\Models\Classification::all() as $classi)
                                        <option  value="{{ $classi->id }}">{{ $classi->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input type="hidden" name="customer_id" id="customer_id" value="">
                        </div>
                        <button type="button" class="btn btn-secondary rounded-0 mt-2" data-dismiss="modal">{{translate('Cancel')}}</button>
                        <button type="submit" id="deletes-link" class="btn btn-primary rounded-0 mt-2">{{translate('أضافة')}}</button>
                    </form>

                </div>
            </div>
        </div>
    </div><!-- /.modal -->

    <div class="modal fade" id="confirm-ban">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title h6">{{translate('Confirmation')}}</h5>
                    <button type="button" class="close" data-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <p>{{translate('Do you really want to ban this Customer?')}}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">{{translate('Cancel')}}</button>
                    <a type="button" id="confirmation" class="btn btn-primary">{{translate('Proceed!')}}</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="confirm-unban">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title h6">{{translate('Confirmation')}}</h5>
                    <button type="button" class="close" data-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <p>{{translate('Do you really want to unban this Customer?')}}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">{{translate('Cancel')}}</button>
                    <a type="button" id="confirmationunban" class="btn btn-primary">{{translate('Proceed!')}}</a>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('modal')
    <!-- Delete modal -->
    @include('modals.delete_modal')
    <!-- Bulk Delete modal -->
    @include('modals.bulk_delete_modal')
@endsection

@section('script')
    <script type="text/javascript">

        $(document).on("change", ".check-all", function() {
            if(this.checked) {
                // Iterate each checkbox
                $('.check-one:checkbox').each(function() {
                    this.checked = true;
                });
            } else {
                $('.check-one:checkbox').each(function() {
                    this.checked = false;
                });
            }

        });



        function sort_customers(el){
            $('#sort_customers').submit();
        }
        function confirm_ban(url)
        {
            $('#confirm-ban').modal('show', {backdrop: 'static'});
            document.getElementById('confirmation').setAttribute('href' , url);
        }

        function confirm_unban(url)
        {
            $('#confirm-unban').modal('show', {backdrop: 'static'});
            document.getElementById('confirmationunban').setAttribute('href' , url);
        }

        function bulk_delete() {
            var data = new FormData($('#sort_customers')[0]);
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('bulk-customer-delete')}}",
                type: 'POST',
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function (response) {
                    if(response == 1) {
                        location.reload();
                    }
                }
            });
        }
    </script>
@endsection
