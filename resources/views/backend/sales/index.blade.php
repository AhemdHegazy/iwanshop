@extends('backend.layouts.app')

@section('content')
    <div class="card">
        <form class="" action="" id="sort_orders" method="GET">
            <div class="card-header row gutters-5">
                <div class="col">
                    <h5 class="mb-md-0 h6">{{ translate('All Orders') }}</h5>
                </div>

                {{-- @can('delete_order')
                     <div class="dropdown mb-2 mb-md-0">
                         <button class="btn border dropdown-toggle" type="button" data-toggle="dropdown">
                             {{ translate('Bulk Action') }}
                         </button>
                         <div class="dropdown-menu dropdown-menu-right">
                             <a class="dropdown-item confirm-alert" href="javascript:void(0)"  data-target="#bulk-delete-modal">
                                 {{ translate('Delete selection') }}</a>
                         </div>
                     </div>
                 @endcan--}}
            <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    {{translate("Filter")}}
                </button>
                @if(request()->all())
                <a  class="btn btn-danger" href="{{route("all_orders.index")}}">
                  <i clacss="la la-times"></i> {{translate("Clear Filter")}}
                </a>
                @endif

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content ">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">{{translate("Filter Sales")}}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <input type="hidden" name="country_id" value="{{\App\Models\Country::first()->id}}">
                                    <div class="col-lg-6  pt-3">
                                        <label for="state_id" class="col-form-label"> {{translate("Governorate / State")}} </label>

                                        <select class="form-control mb-3 aiz-selectpicker" id="state_id" data-live-search="true" name="state_id" >
                                            <option value="">{{translate("Governorate / State")}}</option>
                                        </select>

                                    </div>
                                    <div class="col-lg-6  pt-3">
                                        <label for="city_id" class="col-form-label">{{ translate('City') }}</label>

                                        <select class="form-control mb-3 aiz-selectpicker" id="city_id" data-live-search="true" name="city_id" >
                                            <option value="">{{ translate('City')}}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4 pt-3">
                                        <label for="payment_method" class="col-form-label">{{ translate('Filter by Payment Status') }}</label>

                                        <select class="form-control aiz-selectpicker" name="payment_status" id="payment_status">
                                            <option value="">{{ translate('Filter by Payment Status') }}</option>
                                            <option value="paid"
                                                    @isset($payment_status) @if ($payment_status == 'paid') selected @endif @endisset>
                                                {{ translate('Paid') }}</option>
                                            <option value="unpaid"
                                                    @isset($payment_status) @if ($payment_status == 'unpaid') selected @endif @endisset>
                                                {{ translate('Unpaid') }}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4 pt-3">
                                        <label for="payment_method" class="col-form-label">{{ translate('Filter by Payment Method') }}</label>

                                        <select class="form-control aiz-selectpicker" name="payment_method" id="payment_method">
                                            <option value="">{{ translate('Filter by Payment Method') }}</option>
                                            <option value="cash_on_delivery"
                                                    @isset($payment_method) @if ($payment_method == 'cash_on_delivery') selected @endif @endisset>
                                                {{ translate('Cash On Delivery') }}</option>
                                            <option value="zian_cach"
                                                    @isset($payment_method) @if ($payment_method == 'zian_cach') selected @endif @endisset>
                                                {{ translate('Zian Cach') }}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-4  pt-3">
                                        <label for="date" class="col-form-label">{{ translate('Filter by date') }}</label>

                                        <div class="form-group mb-0">
                                            <input id="date" type="text" class="aiz-date-range form-control" value="{{ $date }}"
                                                   name="date" placeholder="{{ translate('Filter by date') }}" data-format="DD-MM-Y"
                                                   data-separator=" to " data-advanced-range="true" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="col-lg-4  pt-3">
                                        <label for="search" class="col-form-label">{{ translate('Type Order code & hit Enter') }}</label>

                                        <div class="form-group mb-0">
                                            <input type="text" class="form-control" id="search"
                                                   name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset
                                                   placeholder="{{ translate('Type Order code & hit Enter') }}">
                                        </div>
                                    </div>
                                    <div class="col-lg-8 pt-3">
                                        <label for="search_customer" class="col-form-label">{{ translate('Type Customer Name,Email,Phone') }}</label>

                                        <div class="form-group mb-0">
                                            <input type="text" class="form-control" id="search_customer"
                                                   name="search"@isset($sort_search_customer) value="{{ $sort_search_customer }}" @endisset
                                                   placeholder="{{ translate('Type Customer Name,Email,Phone') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{translate("Close")}}</button>
                                <button type="submit" class="btn btn-primary">{{ translate('Filter') }}</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-lg-2">
                        <a href="{{route("all_orders.index")}}?delivery_status=pending">
                            <div class="card">
                                <div class="card-body pb-0 text-white text-center" style="background: #e0c23e">
                                    <p><i class="la la-history"></i> {{translate("Under Processing")}} </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-2">
                        <a href="{{route("all_orders.index")}}?delivery_status=rejected">
                            <div class="card">
                                <div class="card-body pb-0 text-white text-center" style="background: #e03e3e">
                                    <p><i class="la la-times"></i>  {{translate("Refused")}}  </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-2">
                        <a href="{{route("all_orders.index")}}?delivery_status=cancelled">
                            <div class="card">
                                <div class="card-body pb-0 text-white text-center" style="background: #494949">
                                    <p><i class="la la-times-circle"></i>   {{translate("Canceled")}}  </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-2">
                        <a href="{{route("all_orders.index")}}?delivery_status=on_the_way">
                            <div class="card">
                                <div class="card-body pb-0 text-white text-center" style="background: #ed56fb">
                                    <p><i class="la la-truck"></i>   {{translate("On Delivery")}}   </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-2">
                        <a href="{{route("all_orders.index")}}?delivery_status=delivered">
                            <div class="card">
                                <div class="card-body pb-0 text-white text-center" style="background: #56e8fb">
                                    <p><i class="la la-handshake"></i>   {{translate("Delivered")}}     </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-2">
                        <a href="{{route("all_orders.index")}}?payment_status=paid">
                            <div class="card">
                                <div class="card-body pb-0 text-white text-center" style="background: #004fe1">
                                    <p><i class="la la-coins"></i>  {{translate("Paid")}}       </p>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
                <table class="table aiz-table mb-0">
                    <thead>
                    <tr>
                        <!--<th>#</th>-->
                        @if (auth()->user()->can('delete_order'))
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
                        @else
                            <th data-breakpoints="lg">#</th>
                        @endif

                        <th>{{ translate('Order Code:') }}</th>
                        <th data-breakpoints="md">{{ translate('Order Date') }}</th>
                        <th data-breakpoints="md">{{ translate('Customer Name') }}</th>
                        <th data-breakpoints="md">{{ translate('Customer Mobile') }}</th>
                        {{--                            <th data-breakpoints="md">{{ translate('Seller') }}</th>--}}
                        <th data-breakpoints="md">{{ translate('Order Amount') }}</th>
                        <th data-breakpoints="md">{{ translate('Delivery Status') }}</th>
                       {{-- <th data-breakpoints="md">{{ translate('Payment method') }}</th>--}}
                        <th data-breakpoints="md">{{ translate('Payment Status') }}</th>
                        @if (addon_is_activated('refund_request'))
                            <th>{{ translate('Refund') }}</th>
                        @endif
                        <th class="text-right" width="15%">{{ translate('options') }}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($orders as $key => $order)
                        <tr>
                            @if (auth()->user()->can('delete_order'))
                                <td>
                                    <div class="form-group">
                                        <div class="aiz-checkbox-inline">
                                            <label class="aiz-checkbox">
                                                <input type="checkbox" class="check-one" name="id[]"
                                                       value="{{ $order->id }}">
                                                <span class="aiz-square-check"></span>
                                            </label>
                                        </div>
                                    </div>


                                </td>
                            @else
                                <td>{{ $key + 1 + ($orders->currentPage() - 1) * $orders->perPage() }}</td>
                            @endif
                            <td>
                                @if($order->notes !=null)
                                    <span data-toggle="tooltip" data-title="{{$order->notes}}" class="badge badge-danger p-1">
                                        <i class="la la-exclamation" ></i>
                                    </span>
                                @endif
                                {{ $order->code }}
                                @if ($order->viewed == 0)
                                    <span class="badge badge-inline badge-info">{{ translate('New') }}</span>
                                @endif
                                @if (addon_is_activated('pos_system') && $order->order_from == 'pos')
                                    <span class="badge badge-inline badge-danger">{{ translate('POS') }}</span>
                                @endif
                            </td>
                            <td>
                                {{ date("Y-m-d",strtotime($order->created_at)) }}
                            </td>
                            <td>
                                @if ($order->user != null)
                                    {{ $order->user->name }}
                                @else
                                    Guest ({{ $order->guest_id }})
                                @endif
                            </td>
                            <td>
                                @if ($order->user != null)
                                    {{ $order->user->phone }}
                                @else
                                    Guest ({{ $order->guest_id }})
                                @endif
                            </td>
                            {{--                                <td>--}}
                            {{--                                    @if ($order->shop)--}}
                            {{--                                        {{ $order->shop->name }}--}}
                            {{--                                    @else--}}
                            {{--                                        {{ translate('Inhouse Order') }}--}}
                            {{--                                    @endif--}}
                            {{--                                </td>--}}
                            <td>
                                <span class="text-primary">
                                    {{ single_price($order->grand_total) }}
                                </span>
                            </td>
                            <td>
                                <span class="badge badge-inline badge-primary btn-block">{{ translate(ucfirst(str_replace('_', ' ', $order->delivery_status))) }}</span>
                            </td>
                            <td>
                                @if ($order->payment_status == 'paid')
                                    <span class="badge badge-inline badge-success btn-block">{{ translate('Paid') }}</span>
                                @else
                                    <span class="badge badge-inline badge-danger btn-block">{{ translate('Unpaid') }}</span>
                                @endif
                            </td>
                            @if (addon_is_activated('refund_request'))
                                <td>
                                    @if (count($order->refund_requests) > 0)
                                        {{ count($order->refund_requests) }} {{ translate('Refund') }}
                                    @else
                                        {{ translate('No Refund') }}
                                    @endif
                                </td>
                            @endif
                            <td class="text-right">
                                @if (addon_is_activated('pos_system') && $order->order_from == 'pos')
                                    <a class="btn btn-soft-success btn-sm"
                                       href="{{ route('admin.invoice.thermal_printer', $order->id) }}" target="_blank"
                                       title="{{ translate('Thermal Printer') }}">
                                        <i class="las la-print"></i>
                                    </a>
                                @endif
                                @can('view_order_details')
                                    @php
                                        $order_detail_route = route('orders.show', encrypt($order->id));
                                        if (Route::currentRouteName() == 'seller_orders.index') {
                                            $order_detail_route = route('seller_orders.show', encrypt($order->id));
                                        } elseif (Route::currentRouteName() == 'pick_up_point.index') {
                                            $order_detail_route = route('pick_up_point.order_show', encrypt($order->id));
                                        }
                                        if (Route::currentRouteName() == 'inhouse_orders.index') {
                                            $order_detail_route = route('inhouse_orders.show', encrypt($order->id));
                                        }
                                    @endphp
                                    <a class="btn btn-soft-primary btn-sm"
                                       href="{{ $order_detail_route }}" title="{{ translate('View') }}">
                                        <i class="las la-eye"></i>
                                    </a>
                                @endcan
                                <a class="btn btn-soft-info btn-sm"
                                   href="{{ route('invoice.download', $order->id) }}"
                                   title="{{ translate('Download Invoice') }}">
                                    <i class="las la-download"></i>
                                </a>
                                <a class="btn btn-soft-info btn-sm"
                                   href="{{ route('invoice.image', $order->id) }}" target="_blank" title="تحميل كصورة">
                                    <i class="la la-image"></i>
                                </a>
                                @can('delete_order')
                                    <a href="#"
                                       class="btn btn-soft-danger btn-sm confirm-delete"
                                       data-href="{{ route('orders.destroy', $order->id) }}"
                                       title="{{ translate('Delete') }}">
                                        <i class="las la-trash"></i>
                                    </a>
                                @endcan
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>

                <div class="aiz-pagination">
                    {{ $orders->appends(request()->input())->links() }}
                </div>

            </div>
        </form>
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
        var country_id = "{{\App\Models\Country::first()->id}}";

        get_states(country_id);
        $(document).on('change', '[name=country_id]', function() {
            var country_id = $(this).val();
            get_states(country_id);
        });

        $(document).on('change', '[name=state_id]', function() {
            var state_id = $(this).val();
            get_city(state_id);
        });

        function get_states(country_id) {
            $('[name="state"]').html("");
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('get-state')}}",
                type: 'POST',
                data: {
                    country_id  : country_id
                },
                success: function (response) {
                    var obj = JSON.parse(response);
                    if(obj != '') {
                        $('[name="state_id"]').html(obj);
                        AIZ.plugins.bootstrapSelect('refresh');
                        @if(request()->state_id!=null)

                        $('[name="state_id"]').val({{request()->state_id}})
                        get_city({{request()->state_id}})

                        @endif
                    }
                }
            });
        }

        function get_city(state_id) {
            $('[name="city"]').html("");
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('get-city')}}",
                type: 'POST',
                data: {
                    state_id: state_id
                },
                success: function (response) {
                    var obj = JSON.parse(response);
                    if(obj != '') {
                        $('[name="city_id"]').html(obj);
                        AIZ.plugins.bootstrapSelect('refresh');
                        @if(request()->city_id!=null)

                        $('[name="city_id"]').val({{request()->city_id}})
                        @endif
                    }
                }
            });
        }
        $(document).on("change", ".check-all", function() {
            if (this.checked) {
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

        //        function change_status() {
        //            var data = new FormData($('#order_form')[0]);
        //            $.ajax({
        //                headers: {
        //                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //                },
        //                url: "{{ route('bulk-order-status') }}",
        //                type: 'POST',
        //                data: data,
        //                cache: false,
        //                contentType: false,
        //                processData: false,
        //                success: function (response) {
        //                    if(response == 1) {
        //                        location.reload();
        //                    }
        //                }
        //            });
        //        }

        function bulk_delete() {
            var data = new FormData($('#sort_orders')[0]);
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{ route('bulk-order-delete') }}",
                type: 'POST',
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function(response) {
                    if (response == 1) {
                        location.reload();
                    }
                }
            });
        }
    </script>
@endsection
