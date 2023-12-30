@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <h5 class="mb-0 h6">تعديل بيانات العميل </h5>
</div>

<div class="col-lg-8 mx-auto">
    <div class="card">
        <div class="card-header">
            <h5 class="mb-0 h6">بياناتا العميل </h5>
        </div>

        <div class="card-body">
          <form action="{{ route('customers.update', $user->id) }}" method="POST">
                <input name="_method" type="hidden" value="PATCH">
                @csrf
                <div class="form-group row">
                    <label class="col-sm-3 col-from-label" for="name">{{translate('Name')}}</label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="{{translate('Name')}}" id="name" name="name" class="form-control" value="{{$user->name}}" required>
                        @error("name")
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-from-label" for="email">{{translate('Email Address')}}</label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="{{translate('Email Address')}}" id="email" name="email" class="form-control" value="{{$user->email}}" required>
                        @error("email")
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                </div>
              <div class="form-group row">
                  <label class="col-sm-3 col-from-label" for="email">{{translate("Phone")}}</label>
                  <div class="col-sm-9">
                      <div class="input-group  mb-3">

                          <input type="tel" id="phone" class="form-control rounded-0"  value="{{$user->phone}}" placeholder="{{translate("Phone Number")}} " name="phone" autocomplete="off">
                          <div class="input-group-prepend">
                              <span  class="input-group-text" style="height: 42px;" id="basic-addon1">  +964  <img src="{{asset("assets/img/flags/iq.png")}}" style="padding-right: 3px;margin-top: -3px" alt=""></span>
                          </div>
                      </div>
                      @error("phone")
                        <span class="text-danger">{{$message}}</span>
                      @enderror
                  </div>
              </div>
                <div class="form-group row">
                    <label class="col-sm-3 col-from-label" for="password">{{translate('Password')}}</label>
                    <div class="col-sm-9">
                        <div class="input-group mb-2 mr-sm-2">
                        <input type="password" placeholder="{{translate('Password')}}" id="password" name="password" class="form-control">
                            <div class="input-group-prepend" onclick="showPassword('password')">
                                <div  class="input-group-text" style="height: 42px;"><i class="la la-eye-slash" style="font-size: 16px;" id="eye_password"></i></div>
                            </div>
                        </div>
                        @error("password")
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                </div>
                  <div class="form-group row">
                      <label class="col-sm-3 col-from-label" for="password-confirm">تأكيد كلمة المرور</label>
                      <div class="col-sm-9">
                          <div class="input-group mb-2 mr-sm-2">
                          <input type="password" placeholder="{{translate('Password')}}"  id="password-confirm"  name="password_confirmation" class="form-control">
                              <div class="input-group-prepend" onclick="showPassword('password-confirm')">
                                  <div  class="input-group-text" style="height: 42px;"><i class="la la-eye-slash" style="font-size: 16px;" id="eye_password-confirm"></i></div>
                              </div>
                          </div>
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
