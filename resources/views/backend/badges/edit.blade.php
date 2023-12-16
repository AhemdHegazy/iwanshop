@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <div class="row">
        <div class="col-lg-6">
            <ul class="breadcrumb bg-transparent p-0 justify-content-center justify-content-lg-start">
                <li class="breadcrumb-item has-transition opacity-60 hov-opacity-100">
                    <a class="text-reset" href="{{ route('admin.dashboard') }}">{{ translate('Home') }}</a>
                </li>
                <li class="text-dark fw-600 breadcrumb-item">
                    "{{ translate('Edit Badge') }}"
                </li>
            </ul>
        </div>
        <div class="col-lg-6 text-center text-lg-right">

        </div>

    </div>
    <h5 class="mb-0 h6">{{translate('Edit Badge')}}</h5>
</div>

<div class="col-lg-8 mx-auto">
    <div class="card">
        <div class="card-body p-0">

            <form class="p-4" action="{{ route('badges.update', $badge->id) }}" method="POST" enctype="multipart/form-data">
                <input name="_method" type="hidden" value="PATCH">
                <input type="hidden" name="lang" value="{{ $lang }}">
                @csrf
                <div class="form-group row">
                    <label class="col-sm-3 col-from-label" for="name">{{translate('Name')}} <i class="las la-language text-danger" title="{{translate('Translatable')}}"></i></label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="{{translate('Name')}}" id="name" name="name" value="{{ $badge->name }}" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label" for="signinSrEmail">{{translate('Logo')}} <small>({{ translate('120x80') }})</small></label>
                    <div class="col-md-9">
                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                            <div class="input-group-prepend">
                                <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                            </div>
                            <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                            <input type="hidden" name="logo" value="{{$badge->logo}}" class="selected-files">
                        </div>
                        <div class="file-preview box sm">
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-3 col-from-label">{{translate('Description')}}</label>
                    <div class="col-sm-9">
                        <textarea name="description" rows="8" class="form-control">{{ $badge->description }}</textarea>
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
