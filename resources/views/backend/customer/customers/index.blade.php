@extends('backend.layouts.app')

@section('content')
    <style>
        .nav-pills .nav-link.active, .nav-pills .show>.nav-link {
            background-color: #19a09c;
            color: #fff !important;
            padding: 16px 39px;
            margin: 5px;

        }
        .nav-pills .nav-link {
            border-radius: 0.25rem;
            padding: 16px 39px;
            background: #fff;
            margin: 5px;

        }
    </style>

    <ul class="nav nav-pills border-0">
        <li class="nav-item">
        <li class="nav-item">
            <a class="nav-link active font-weight-medium text-dark h6"  data-toggle="tab" href="#aiz-upload-new">
                <i class="la la-cog lax"></i>
                التحكم بالعملاء
            </a>
        </li>
            <a class="nav-link text-center font-weight-medium text-dark h6" data-toggle="tab" href="#aiz-select-file">
                <i class="la la-users lax"></i>
                تصنيفات العملاء
            </a>
        </li>

    </ul>
    <div class="tab-content h-100">

        <div class="tab-pane active h-100" id="aiz-upload-new">

            <div class="aiz-titlebar row text-left  mb-1">
                <div class="col-lg-6 mt-3">
                    <h1 class="h3">{{translate('All Customers')}}</h1>
                </div>

                <div class="col text-right col-lg-6">
                    <a href="{{ route('customers.create') }}" class="btn btn-primary">
                        <span>أضافة عميل جديد</span>
                    </a>
                </div>
            </div>
            <div class="card">
                <form class="" id="sort_customers" action="" method="GET">
                    <div class="card-header row gutters-5">
                        <div class="col">
                            <h5 class="mb-0 h6">{{translate('Customers')}}</h5>
                        </div>

                        <div class="dropdown mb-2 mb-md-0">
                            <button class="btn border dropdown-toggle" type="button" data-toggle="dropdown">
                                {{translate('Bulk Action')}}
                            </button>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item confirm-alert" href="javascript:void(0)"  data-target="#bulk-delete-modal">{{translate('Delete selection')}}</a>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group mb-0">
                                <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type email or name or phone & Enter') }}">
                            </div>
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
                                <th data-breakpoints="lg">{{translate('Phone')}}</th>
                                <th data-breakpoints="lg">{{translate('Number Of Requests')}}</th>
                                <th data-breakpoints="lg">{{translate('Spend Money')}}</th>
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
                                            {{ $user->orders_count}} طلب
                                        </td>
                                        <td>{{single_price($user->orders_sum_grand_total)}}</td>
                                        <td class="text-right">

                                            @can('login_as_customer')
                                                <a href="{{route('customers.login', encrypt($user->id))}}" class="btn btn-soft-primary btn-circle btn-sm" title="{{ translate('Log in as this Customer') }}">
                                                    <i class="la la-sign-in"></i>
                                                    تسجيل الدخول بهذا العميل
                                                </a>
                                            @endcan
                                            @can('ban_customer')
                                                @if($user->banned != 1)
                                                    <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm" onclick="confirm_ban('{{route('customers.ban', encrypt($user->id))}}');" title="{{ translate('Ban this Customer') }}">
                                                        <i class="las la-user-slash"></i>
                                                    </a>
                                                @else
                                                    <a href="#" class="btn btn-soft-success btn-icon btn-circle btn-sm" onclick="confirm_unban('{{route('customers.ban', encrypt($user->id))}}');" title="{{ translate('Unban this Customer') }}">
                                                        <i class="las la-user-check"></i>
                                                    </a>
                                                @endif
                                            @endcan
                                            <a  class="btn btn-soft-warning btn-icon btn-circle btn-sm " href="{{route('customers.edit', $user->id)}}">
                                                <i class="las la-edit"></i>
                                            </a>
                                            @can('delete_customer')
                                                <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('customers.destroy', $user->id)}}" title="{{ translate('Delete') }}">
                                                    <i class="las la-trash"></i>
                                                </a>
                                            @endcan
                                            <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirms-delete" id="{{$user->id}}" title="أضافة إلى تصنيفات">
                                                <i class="las la-plus"></i>
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

        </div>
        <div class="tab-pane h-100" id="aiz-select-file">

            <div class="aiz-titlebar row text-left  mb-1">
                <div class="col-lg-6 mt-3">
                    <h1 class="h3">{{translate('تصنيفات العملاء')}}</h1>
                </div>

                <div class="col text-right col-lg-6">
                    <a href="{{ route('classifications.index') }}" class="btn btn-primary">
                        <span>أضافة  تصنيف </span>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class=" col-lg-12 ">
                    <div class="row">
                        @foreach($classifications as $class)
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p class="text-center">{{$class->name}}</p>
                                        <img src="{{uploaded_asset($class->logo)}}" class="img-fluid" style="max-height: 100px" alt="">

                                    </div>
                                    <div class="card-footer text-center">
                                        <a href="{{route("classifications.show",$class->id)}}" class="btn btn-primary m-auto btn-block">
                                        <i class="la la-eye"></i>
                                            عرض التصنيف
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

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
