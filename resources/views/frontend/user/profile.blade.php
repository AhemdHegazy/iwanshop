@extends('frontend.layouts.user_panel')

@section('panel_content')
    <div class="aiz-titlebar mb-4">
      <div class="row align-items-center">
        <div class="col-md-6">
            <h1 class="fs-20 fw-700 text-dark">{{ translate('Manage Profile') }}</h1>
        </div>
      </div>
    </div>

    <!-- Basic Info-->
    <div class="card rounded-0 shadow-none border">
        <div class="card-header pt-4 border-bottom-0">
            <h5 class="mb-0 fs-18 fw-700 text-dark">{{ translate('Basic Info')}}</h5>
        </div>
        <div class="card-body">
            <form action="{{ route('user.profile.update') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <!-- Name-->
                <div class="form-group row">
                    <label class="col-md-2 col-form-label fs-14 fs-14">{{ translate('Your Name') }}</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control rounded-0" placeholder="{{ translate('Your Name') }}" name="name" value="{{ Auth::user()->name }}">
                    </div>
                </div>
                <!-- Phone-->
                <div class="form-group row">
                    <label class="col-md-2 col-form-label fs-14">{{ translate('Your Phone') }}</label>
                    <div class="col-md-10">
                        <div class="input-group  mb-3">
                            <input type="text" class="form-control rounded-0" placeholder="{{ translate('Your Phone')}}" name="phone" value="{{ Auth::user()->phone }}">
                            <div class="input-group-prepend">
                                <span  class="input-group-text" style="height: 42px;" id="basic-addon1">  +964  <img src="{{asset("assets/img/flags/iq.png")}}" style="padding-right: 3px;margin-top: -3px" alt=""></span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Photo-->
                <div class="form-group row">
                    <label class="col-md-2 col-form-label fs-14">{{ translate('Photo') }}</label>
                    <div class="col-md-10">
                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                            <div class="input-group-prepend">
                                <div class="input-group-text bg-soft-secondary font-weight-medium rounded-0">{{ translate('Browse')}}</div>
                            </div>
                            <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                            <input type="hidden" name="photo" value="{{ Auth::user()->avatar_original }}" class="selected-files">
                        </div>
                        <div class="file-preview box sm">
                        </div>
                    </div>
                </div>
                <!-- Password-->
                <div class="form-group row">
                    <label class="col-md-2 col-form-label fs-14" for="new_password">{{ translate('Your Password') }}</label>
                    <div class="col-md-10">
                        <div class="input-group mb-2 mr-sm-2">
                            <input type="password" class="form-control rounded-0" placeholder="{{ translate('New Password') }}" id="new_password" name="new_password">
                            <div class="input-group-prepend" onclick="showPassword('new_password')">
                                <div  class="input-group-text" style="height: 42px;"><i class="la la-eye-slash" style="font-size: 16px;" id="eye_new_password"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Confirm Password-->
                <div class="form-group row">
                    <label class="col-md-2 col-form-label fs-14" for="confirm_password">{{ translate('Confirm Password') }}</label>
                    <div class="col-md-10">
                        <div class="input-group mb-2 mr-sm-2">
                            <input type="password" class="form-control rounded-0" placeholder="{{ translate('Confirm Password') }}" name="confirm_password" id="password_confirmation">
                            <div class="input-group-prepend" onclick="showPassword('confirm_password')">
                                <div  class="input-group-text" style="height: 42px;"><i class="la la-eye-slash" style="font-size: 16px;" id="eye_confirm_password"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Submit Button-->
                <div class="form-group mb-0 text-right">
                    <button type="submit" class="btn btn-primary rounded-0  mt-3">{{translate('Update Profile')}}</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Address -->
    <div class="card rounded-0 shadow-none border">
        <div class="card-header pt-4 border-bottom-0">
            <h5 class="mb-0 fs-18 fw-700 text-dark">{{ translate('Address')}}</h5>
        </div>
        <div class="card-body">
            @foreach (Auth::user()->addresses as $key => $address)
                <div class="">
                    <div class="border p-4 mb-4 position-relative" style="{{$address->set_default ==1 ? "background-color:#19a09c !important;color:#fff": ""}}">
                        <div class="row fs-14 mb-2 mb-md-0">
                            <span class="col-md-2 {{$address->set_default ==1 ? "text-white": "text-secondary"}}">{{ translate('Address') }}</span>
                            <span class="col-md-8  {{$address->set_default ==1 ? "text-white": "text-dark"}}"  style="border-right: 2px solid #ddd">{{ $address->address }}</span>
                        </div>
                        <div class="row fs-14 mb-2 mb-md-0">
                            <span class="col-md-2   {{$address->set_default ==1 ? "text-white": "text-secondary"}}">{{ translate('Postal Code') }}</span>
                            <span class="col-md-10  {{$address->set_default ==1 ? "text-white": "text-dark"}}"  style="border-right: 2px solid #ddd">{{ $address->postal_code }}</span>
                        </div>
                        <div class="row fs-14 mb-2 mb-md-0">
                            <span class="col-md-2 {{$address->set_default ==1 ? "text-white": "text-secondary"}}">{{ translate('City') }}</span>
                            <span class="col-md-10  {{$address->set_default ==1 ? "text-white": "text-dark"}}"  style="border-right: 2px solid #ddd">{{ optional($address->city)->name }}</span>
                        </div>
                        <div class="row fs-14 mb-2 mb-md-0">
                            <span class="col-md-2 {{$address->set_default ==1 ? "text-white": "text-secondary"}}">{{ translate('State') }}</span>
                            <span class="col-md-10  {{$address->set_default ==1 ? "text-white": "text-dark"}}"  style="border-right: 2px solid #ddd">{{ optional($address->state)->name }}</span>
                        </div>
                        <div class="row fs-14 mb-2 mb-md-0">
                            <span class="col-md-2 {{$address->set_default ==1 ? "text-white": "text-secondary"}}">{{ translate('Country') }}</span>
                            <span class="col-md-10  {{$address->set_default ==1 ? "text-white": "text-dark"}}"  style="border-right: 2px solid #ddd">{{ optional($address->country)->name }}</span>
                        </div>
                        <div class="row fs-14 mb-2 mb-md-0">
                            <span class="col-md-2 {{$address->set_default ==1 ? "text-white": "text-secondary"}}">{{ translate('Phone') }}</span>
                            <span class="col-md-10  {{$address->set_default ==1 ? "text-white": "text-dark"}}" style="border-right: 2px solid #ddd">{{ $address->phone }}</span>
                        </div>
                        @if ($address->set_default)
                            <div class="absolute-md-top-right pt-1 pr-md-5">
                                <span class="badge badge-inline badge-secondary bg-white text-primary p-3 fs-12" style="border-radius: 25px; min-width: 80px !important;">{{ translate('Default') }}</span>
                            </div>
                        @endif
                        <div class="dropdown position-absolute left-0 top-0 pt-1 mr-1">
                            <button class="btn {{$address->set_default ==1 ? "bg-white text-primary": "bg-primary text-white"}} px-2 py-1" type="button" data-toggle="dropdown">
                                <i class="la la-cog "></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" onclick="edit_address('{{$address->id}}')">
                                    {{ translate('Edit') }}
                                </a>
                                @if (!$address->set_default)
                                    <a class="dropdown-item" href="{{ route('addresses.set_default', $address->id) }}">{{ translate('Make This Default') }}</a>
                                @endif
                                <a class="dropdown-item" href="{{ route('addresses.destroy', $address->id) }}">{{ translate('Delete') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            <!-- Add New Address -->
            <div class="" onclick="add_new_address()">
                <div class="border p-3 mb-3 c-pointer text-center bg-light has-transition hov-bg-soft-light">
                    <i class="la la-plus la-2x"></i>
                    <div class="alpha-7 fs-14 fw-700">{{ translate('Add New Address') }}</div>
                </div>
            </div>
        </div>
    </div>


    <!-- Change Email -->
    <form action="{{ route('user.change.email') }}" method="POST">
        @csrf
        <div class="card rounded-0 shadow-none border">
          <div class="card-header pt-4 border-bottom-0">
              <h5 class="mb-0 fs-18 fw-700 text-dark">{{ translate('Change your email')}}</h5>
          </div>
          <div class="card-body">
              <div class="row">
                  <div class="col-md-2">
                      <label class="fs-14">{{ translate('Your Email') }}</label>
                  </div>
                  <div class="col-md-10">
                      <div class="input-group mb-3">
                        <input type="email" class="form-control rounded-0" placeholder="{{ translate('Your Email')}}" name="email" value="{{ Auth::user()->email }}" />
                        <div class="input-group-append">
                           <button type="button" class="btn btn-outline-secondary new-email-verification">
                               <span class="d-none loading">
                                   <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>{{ translate('Sending Email...') }}
                               </span>
                               <span class="default">{{ translate('Verify') }}</span>
                           </button>
                        </div>
                      </div>
                      <div class="form-group mb-0 text-right">
                          <button type="submit" class="btn btn-primary rounded-0  mt-3">{{translate('Update Email')}}</button>
                      </div>
                  </div>
              </div>
          </div>
        </div>
    </form>

@endsection

@section('modal')
    <!-- Address modal -->
    @include('frontend.'.get_setting('homepage_select').'.partials.address_modal')
@endsection

@section('script')
    <script type="text/javascript">
        $('.new-email-verification').on('click', function() {
            $(this).find('.loading').removeClass('d-none');
            $(this).find('.default').addClass('d-none');
            var email = $("input[name=email]").val();

            $.post('{{ route('user.new.verify') }}', {_token:'{{ csrf_token() }}', email: email}, function(data){
                data = JSON.parse(data);
                $('.default').removeClass('d-none');
                $('.loading').addClass('d-none');
                if(data.status == 2)
                    AIZ.plugins.notify('warning', data.message);
                else if(data.status == 1)
                    AIZ.plugins.notify('success', data.message);
                else
                    AIZ.plugins.notify('danger', data.message);
            });
        });
    </script>

    @if (get_setting('google_map') == 1)
        @include('frontend.'.get_setting('homepage_select').'.partials.google_map')
    @endif

@endsection
