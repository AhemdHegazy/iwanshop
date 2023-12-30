@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-6">
            <ul class="breadcrumb bg-transparent p-0 justify-content-center justify-content-lg-start">
                <li class="breadcrumb-item has-transition opacity-60 hov-opacity-100">
                    <a class="text-reset" href="{{ route('admin.dashboard') }}">{{ translate('Home') }}</a>
                </li>
                <li class="breadcrumb-item has-transition opacity-60 hov-opacity-100">
                    <a class="text-reset" href="{{ route('blog-category.index') }}">{{ translate('Blog Categories') }}</a>
                </li>
                <li class="text-dark fw-600 breadcrumb-item">
                    "{{ translate('Edit Blog Categories') }}"
                </li>
            </ul>
        </div>
        <div class="col-lg-6 text-center text-lg-right">

        </div>

    </div>
<div class="row">
    <div class="col-lg-8 mx-auto">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{translate('Blog Category Information')}}</h5>
            </div>
            <div class="card-body">
                <form id="add_form" class="form-horizontal" action="{{ route('blog-category.update', $cateogry->id) }}" method="POST">
                    @csrf
                    @method('PATCH')

                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">{{translate('Name')}}</label>
                        <div class="col-md-9">
                            <input type="text" placeholder="{{translate('Name')}}" id="category_name" name="category_name" value="{{ $cateogry->category_name }}" class="form-control" required>
                        </div>
                    </div>

                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-primary">
                            {{translate('Save')}}
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
