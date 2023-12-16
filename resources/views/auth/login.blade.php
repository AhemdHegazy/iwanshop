@extends('backend.layouts.layout')
<style>
    @font-face {
        font-family: 'Tajawal';
        src: url('{{ asset("assets/Sala/PingAR+LT-Medium.otf") }}') format('opentype');
        /* You can also include additional font formats for better browser compatibility */
    }
    *{
        font-family: 'Tajawal', sans-serif;
    }
</style>
@section('content')

    <section class="gry-bg py-6">
        <div class="profile">
            <div class="container">
                <div class="row">
            <div class="col-xl-6 col-lg-10 mx-auto">
                <div class="card shadow-none rounded-0 border">
                    <div class="row">
                        <!-- Left Side -->
                        <div class="col-lg-12 p-4 p-lg-5">
                            <!-- Titles -->
                            <div class="text-center">
                                @if(get_setting('system_logo_black') != null)
                                    <img src="{{ uploaded_asset(get_setting('system_logo_black')) }}" class="img-fluid w-25 mb-4" height=" ">
                                @else
                                    <img src="{{ asset('assets/img/logo.png') }}" class="img-fluid w-25 mb-4" height="">
                                @endif
                                <h1 class="h3 text-primary mb-0">{{ translate('Welcome to') }} {{ env('APP_NAME') }}</h1>
                                <p>{{ translate('Login to your account.') }}</p>
                            </div>
                            <!-- Login form -->
                            <div class="pt-3 pt-lg-4">
                                <div class="">
                                    <form class="form-default" role="form"  action="{{ route('login') }}" method="POST">
                                    @csrf
                                    <!-- Email or Phone -->
                                        <div class="form-group email-form-group mb-1">
                                            <label for="email" class="fs-12 fw-700 text-dark">البريد الإلكتروني </label>
                                            <input type="email" class="form-control rounded-0 " value="" placeholder="البريد الإلكتروني " name="email" id="email" autocomplete="off">
                                        </div>

                                        <!-- password -->
                                        <div class="form-group">
                                            <label for="password" class="fs-12 fw-700 text-dark">كلمة المرور</label>
                                            <div class="input-group mb-2 mr-sm-2">
                                            <input type="password" class="form-control rounded-0 " placeholder="كلمة المرور" name="password" id="password">
                                                <div class="input-group-prepend" onclick="showPassword('password')">
                                                    <div  class="input-group-text" style="height: 42px;"><i class="la la-eye-slash" style="font-size: 16px;" id="eye_password"></i></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row mb-2">
                                            <!-- Remember Me -->
                                            <div class="col-6">
                                                <label class="aiz-checkbox">
                                                    <input type="checkbox" name="remember" >
                                                    <span class="has-transition fs-12 fw-400 text-gray-dark hov-text-primary">تذكرني</span>
                                                    <span class="aiz-square-check"></span>
                                                </label>
                                            </div>
                                            <!-- Forgot password -->
                                            <div class="col-6 text-right">
                                                <a href="{{route("password.request")}}" class="text-reset fs-12 fw-400 text-gray-dark hov-text-primary"><u>نسيت كلمة المرور؟</u></a>
                                            </div>
                                        </div>

                                        <!-- Submit Button -->
                                        <div class="mb-4 mt-4">
                                            <button type="submit" class="btn btn-primary btn-block fw-700 fs-14 rounded-4">دخول </button>
                                        </div>
                                    </form>

                                    <!-- Social Login -->
                                </div>

                                <!-- Register Now -->
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
    </section>

@endsection

@section('script')
    <script type="text/javascript">
        function autoFill(){
            $('#email').val('admin@example.com');
            $('#password').val('123456');
        }

    </script>
    <script>

        function showPassword(id){
            var eye =$("#eye_"+id);
            if(eye.hasClass('la-eye-slash')){
                eye.removeClass('la-eye-slash');
                eye.addClass('la-eye');
                $('#'+id).attr('type','text');
            }else{
                eye.removeClass('la-eye');
                eye.addClass('la-eye-slash');
                $('#'+id).attr('type','password');
            }
        }
    </script>
@endsection
