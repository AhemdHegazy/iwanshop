@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <h5 class="mb-0 h6">{{translate('City Information')}}</h5>
</div>

<div class="row">
  <div class="col-lg-8 mx-auto">
      <div class="card">
          <div class="card-body p-0">

              <form class="p-4" action="{{ route('cities.update', $city->id) }}" method="POST" enctype="multipart/form-data">
                  <input name="_method" type="hidden" value="PATCH">
                  <input type="hidden" name="lang" value="{{ $lang }}">
                  @csrf
                  <div class="form-group mb-3">
                      <label for="name">{{translate('Name')}}</label>
                      <input type="text" placeholder="{{translate('Name')}}" value="{{ $city->name }}" name="name" class="form-control" required>
                  </div>
                  <input type="hidden" name="state_id" value="{{$state->id}}">
                  {{-- <div class="form-group mb-3">
                      <label for="name">{{translate('Cost')}}</label>
                      <input type="number" min="0" step="0.01" placeholder="{{translate('Cost')}}" name="cost" class="form-control" value="{{ $city->cost }}" required>
                  </div> --}}


                  <div class="form-group mb-3 text-right">
                      <button type="submit" class="btn btn-primary">{{translate('Update')}}</button>
                  </div>
              </form>
          </div>
      </div>
  </div>
</div>

@endsection
