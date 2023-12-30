@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <h5 class="mb-0 h6">تعديل التصنيف </h5>
</div>

<div class="col-lg-8 mx-auto">
    <div class="card">
        <div class="card-body p-0">
            <ul class="nav nav-tabs nav-fill border-light">

  			</ul>
            <form class="p-4" action="{{ route('classifications.update', $classification->id) }}" method="POST" enctype="multipart/form-data">
                <input name="_method" type="hidden" value="PATCH">
                <input type="hidden" name="lang" value="{{ $lang }}">
                @csrf
                <div class="form-group mb-3">
                    <label for="name">{{translate('Name')}}</label>
                    <input type="text" placeholder="{{translate('Name')}}" name="name"  value="{{$classification->name}}" class="form-control" required>
                </div>
                <div class="form-group mb-3">
                    <label for="name">{{translate("Description")}} </label>
                    <textarea name="description"  rows="5" class="form-control">{{$classification->description}}</textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="name">{{translate('Logo')}} <small>({{ translate('120x80') }})</small></label>
                    <div class="input-group" data-toggle="aizuploader" data-type="image">
                        <div class="input-group-prepend">
                            <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                        </div>
                        <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                        <input type="hidden" name="logo" value="{{$classification->logo}}" class="selected-files">
                    </div>
                    <div class="file-preview box sm">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-12 col-form-label">{{translate("Relation")}} </label>
                    <div class="col-md-12">
                        <select class="select2 form-control aiz-selectpicker" id="related" name="related" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true">
                            <option disabled selected>{{translate("Please Choose Relation")}} </option>
                            <option {{$classification->related == "orders_sum_grand_total"  ? "selected" : ""}} value="orders_sum_grand_total">المبلغ </option>
                            <option {{$classification->related == "orders_count"  ? "selected" : ""}} value="orders_count">{{translate("Order Count")}}  </option>
                            <option {{$classification->related == "category"  ? "selected" : ""}} value="category">{{translate("Category")}}</option>
                            <option {{$classification->related == "badge"  ? "selected" : ""}} value="badge">{{translate("Badge")}} </option>
                        </select>
                    </div>
                </div>

                <div class="form-group row" style="display: {{$classification->related == "orders_sum_grand_total" || $classification->related == "orders_count"   ? "" : "none"}}" id="minDiv">
                    <div class="col-md-6">
                        <label for="min">{{translate('Min Value')}}</label>
                        <input type="number" placeholder="{{translate("Min Value")}} " name="min" class="form-control" >
                    </div>


                    <div class="col-md-6">
                        <label for="max">{{translate('Max Value')}}</label>

                        <input type="number" placeholder="{{translate("Max Value")}} " name="max" class="form-control" >
                    </div>

                </div>
                <div class="form-group row" style="display: {{$classification->related == "badge"  ? "" : "none"}} " id="badgeDiv">
                    <label class="col-md-12 col-form-label">{{translate("Badge")}} </label>
                    <div class="col-md-12">
                        <select class="select2 form-control aiz-selectpicker" name="badge_id" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" >
                            @foreach (\App\Models\Badge::all() as $attribute)
                                <option {{$attribute->id == $classification->badge_id ? "selected" : ""}} value="{{ $attribute->id }}">{{ $attribute->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group row" style="display: {{$classification->related == "category"  ? "" : "none"}} " id="categoryDiv">
                    <label class="col-md-12 col-form-label">{{translate("CAtegory")}} </label>
                    <div class="col-md-12">
                        <select class="select2 form-control aiz-selectpicker" name="category_id" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" >
                            @foreach (\App\Models\Category::all() as $attribute)
                                <option {{$attribute->id == $classification->category_id ? "selected" : ""}} value="{{ $attribute->id }}">{{ $attribute->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group mb-0 text-right">
                    <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
@section("script")
    <script>
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
