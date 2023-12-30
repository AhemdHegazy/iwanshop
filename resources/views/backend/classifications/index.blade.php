@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-6">
            <ul class="breadcrumb bg-transparent p-0 justify-content-center justify-content-lg-start">
                <li class="breadcrumb-item has-transition opacity-60 hov-opacity-100">
                    <a class="text-reset" href="{{ route('admin.dashboard') }}">{{ translate('Home') }}</a>
                </li>
                <li class="text-dark fw-600 breadcrumb-item">
                    "{{ translate('Classifications') }}"
                </li>
            </ul>
        </div>
        <div class="col-lg-6 text-center text-lg-right">

        </div>

    </div>
    <div class="aiz-titlebar text-left mt-2 mb-3">
        <div class="align-items-center">
            <h1 class="h3">  {{ translate('Classifications') }}</h1>
        </div>
    </div>

    <div class="row">
        <div class="@if(auth()->user()->can('add_brand')) col-lg-7 @else col-lg-12 @endif">
            <div class="card">
                <div class="card-header row gutters-5">
                    <div class="col text-center text-md-left">
                        <h5 class="mb-md-0 h6">{{translate('Customers Classifications')}} </h5>
                    </div>
                    <div class="col-md-4">
                        <form class="" id="sort_classifications" action="" method="GET">
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type name & Enter') }}">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table aiz-table mb-0">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>{{translate('Name')}}</th>
                            <th>{{translate('Logo')}}</th>
                            <th>{{translate('العلاقة')}}</th>
                            <th>{{translate('تفاصيل العلاقة')}}</th>
                            <th class="text-right">{{translate('Options')}}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($classifications as $key => $brand)
                            <tr>
                                <td>{{ ($key+1) + ($classifications->currentPage() - 1)*$classifications->perPage() }}</td>
                                <td>{{ $brand->name }}</td>
                                <td>
                                    <img src="{{ uploaded_asset($brand->logo) }}" alt="{{translate('Brand')}}" class="h-50px">
                                </td>
                                <td>
                                   {{translate($brand->related)}}
                                </td>
                                <td>
                                   @if($brand->related =="orders_sum_grand_total"|| $brand->related ==  "orders_count" )
                                        من {{$brand->min}}
                                       -
                                       إلى {{$brand->max}}
                                   @elseif($brand->related == "category")
                                        {{ $brand->category->name ?? "لا يوجد"}}
                                   @elseif($brand->related == "badge")
                                       {{ $brand->badge->name ?? "لا يوجد"}}
                                    @endif
                                </td>
                                <td class="text-right">
{{--                                    @can('edit_brand')--}}
                                        <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('classifications.edit', ['id'=>$brand->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
                                            <i class="las la-edit"></i>
                                        </a>
{{--                                    @endcan--}}
                                    <a class="btn btn-soft-success btn-icon btn-circle btn-sm" href="{{route('classifications.show', [$brand->id] )}}" title="{{ translate('Show') }}">
                                        <i class="las la-eye"></i>
                                    </a>
{{--                                    @can('delete_brand')--}}
                                        <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('classifications.destroy', $brand->id)}}" title="{{ translate('Delete') }}">
                                            <i class="las la-trash"></i>
                                        </a>
{{--                                    @endcan--}}
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div class="aiz-pagination">
                        {{ $classifications->appends(request()->input())->links() }}
                    </div>
                </div>
            </div>
        </div>
        @can('add_brand')
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{translate("Add Classification To Customer")}}   </h5>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('classifications.store') }}" method="POST">
                            @csrf
                            <div class="form-group mb-3">
                                <label for="name">{{translate('Name')}}</label>
                                <input type="text" placeholder="{{translate('Name')}}" name="name" class="form-control">
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">{{translate("Description")}} </label>
                                <textarea name="description" rows="5" class="form-control"></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">{{translate('Logo')}} <small>({{ translate('120x80') }})</small></label>
                                <div class="input-group" data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                    <input type="hidden" name="logo" class="selected-files">
                                </div>
                                <div class="file-preview box sm">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-12 col-form-label">{{translate("Relation")}} </label>
                                <div class="col-md-12">
                                    <select class="select2 form-control aiz-selectpicker" id="related" name="related" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true">
                                        <option disabled selected>{{translate("Please Choose Relation")}} </option>
                                        <option value="orders_sum_grand_total">{{translate("Amount")}} </option>
                                        <option value="orders_count">{{translate("Orders Count")}}  </option>
                                        <option value="category">{{translate("Category")}}</option>
                                        <option value="badge">{{translate("Badge")}} </option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row" style="display: none" id="minDiv">
                                <div class="col-md-6">
                                    <label for="min">{{translate('Min Value')}}</label>
                                    <input type="number" placeholder="{{translate("Min Value")}} " name="min" class="form-control" >
                                </div>


                                <div class="col-md-6">
                                    <label for="max">{{translate('Max Value')}}</label>

                                    <input type="number" placeholder="{{translate("Max Value")}} " name="max" class="form-control" >
                                </div>

                            </div>
                            <div class="form-group row" style="display: none" id="badgeDiv">
                                <label class="col-md-12 col-form-label">{{translate("Badge")}} </label>
                                <div class="col-md-12">
                                    <select class="select2 form-control aiz-selectpicker" name="badge_id" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" >
                                        @foreach (\App\Models\Badge::all() as $attribute)
                                            <option value="{{ $attribute->id }}">{{ $attribute->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row" style="display: none" id="categoryDiv">
                                <label class="col-md-12 col-form-label">{{translate("Category")}} </label>
                                <div class="col-md-12">
                                    <select class="select2 form-control aiz-selectpicker" name="category_id" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" >
                                        @foreach (\App\Models\Category::all() as $attribute)
                                            <option value="{{ $attribute->id }}">{{ $attribute->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group mb-3 text-right">
                                <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        @endcan
    </div>

@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">
        function sort_classifications(el){
            $('#sort_classifications').submit();
        }
        $(document).on("change", "#related", function() {
            if($("#related").val() == "orders_count" || $("#related").val() == "orders_sum_grand_total") {

                $("#minDiv").fadeIn();
                $("#maxDiv").fadeIn();
                $("#badgeDiv").fadeOut();
                $("#categoryDiv").fadeOut();
            } else if($("#related").val() == "category"){
                $("#badgeDiv").fadeOut();
                $("#minDiv").fadeOut();
                $("#maxDiv").fadeOut();
                $("#categoryDiv").fadeIn();

            } else if($("#related").val() == "badge"){
                $("#badgeDiv").fadeIn();
                $("#categoryDiv").fadeOut();
                $("#minDiv").fadeOut();
                $("#maxDiv").fadeOut();
            }

        });
    </script>
@endsection
