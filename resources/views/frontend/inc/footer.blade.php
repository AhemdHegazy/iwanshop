<!-- footer Description -->
@if (get_setting('footer_title') != null || get_setting('footer_description') != null)
    <section class="bg-light border-top border-bottom mt-auto">
        <div class="container py-4">
            <h1 class="fs-18 fw-700 text-gray-dark mb-3">{{ get_setting('footer_title',null) }}</h1>
            <p class="fs-13 text-gray-dark text-justify mb-0">
                {!! nl2br(get_setting('footer_description',null)) !!}
            </p>
        </div>
    </section>
@endif

<!-- footer top Bar -->
<section class="bg-light border-top mt-auto">
    <div class="container px-xs-0">
        <div class="row no-gutters border-left border-soft-light">
            <!-- Terms & conditions -->
            {{-- @php
                 $terms_conditions_page =  Page::where('type', 'terms_conditions_page')->first();
                 $return_policy_page =  Page::where('type', 'return_policy_page')->first();
                 $return_policy_page =  Page::where('type', 'return_policy_page')->first();
                 $support_policy_page =  Page::where('type', 'support_policy_page')->first();
             @endphp--}}
            <div class="col-lg-3 col-6 policy-file">
                <a class="text-reset h-100  border-right border-bottom border-soft-light text-center p-2 p-md-4 d-block hov-ls-1" href="{{ route('terms') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26.004" height="32" viewBox="0 0 26.004 32">
                        <path id="Union_8" data-name="Union 8" d="M-14508,18932v-.01a6.01,6.01,0,0,1-5.975-5.492h-.021v-14h1v13.5h0a4.961,4.961,0,0,0,4.908,4.994h.091v0h14v1Zm17-4v-1a2,2,0,0,0,2-2h1a3,3,0,0,1-2.927,3Zm-16,0a3,3,0,0,1-3-3h1a2,2,0,0,0,2,2h16v1Zm18-3v-16.994h-4v-1h3.6l-5.6-5.6v3.6h-.01a2.01,2.01,0,0,0,2,2v1a3.009,3.009,0,0,1-3-3h.01v-4h.6l0,0H-14507a2,2,0,0,0-2,2v22h-1v-22a3,3,0,0,1,3-3v0h12l0,0,7,7-.01.01V18925Zm-16-4.992v-1h12v1Zm0-4.006v-1h12v1Zm0-4v-1h12v1Z" transform="translate(14513.998 -18900.002)" fill="#919199"/>
                    </svg>
                    <h4 class="text-dark fs-14 fw-700 mt-3">{{ translate('Terms & conditions') }}</h4>
                </a>
            </div>

            <!-- Return Policy -->
            <div class="col-lg-3 col-6 policy-file">
                <a class="text-reset h-100  border-right border-bottom border-soft-light text-center p-2 p-md-4 d-block hov-ls-1" href="{{ route('returnpolicy') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32.001" height="23.971" viewBox="0 0 32.001 23.971">
                        <path id="Union_7" data-name="Union 7" d="M-14490,18922.967a6.972,6.972,0,0,0,4.949-2.051,6.944,6.944,0,0,0,2.052-4.943,7.008,7.008,0,0,0-7-7v0h-22.1l7.295,7.295-.707.707-7.779-7.779-.708-.707.708-.7,7.774-7.779.712.707-7.261,7.258H-14490v0a8.01,8.01,0,0,1,8,8,8.008,8.008,0,0,1-8,8Z" transform="translate(14514.001 -18900)" fill="#919199"/>
                    </svg>
                    <h4 class="text-dark fs-14 fw-700 mt-3">{{ translate('Return Policy') }}</h4>
                </a>
            </div>

            <!-- Support Policy -->
            <div class="col-lg-3 col-6 policy-file">
                <a class="text-reset h-100  border-right border-bottom border-soft-light text-center p-2 p-md-4 d-block hov-ls-1" href="{{ route('supportpolicy') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32.002" height="32.002" viewBox="0 0 32.002 32.002">
                        <g id="Group_24198" data-name="Group 24198" transform="translate(-1113.999 -2398)">
                            <path id="Subtraction_14" data-name="Subtraction 14" d="M-14508,18916h0l-1,0a12.911,12.911,0,0,1,3.806-9.187A12.916,12.916,0,0,1-14496,18903a12.912,12.912,0,0,1,9.193,3.811A12.9,12.9,0,0,1-14483,18916l-1,0a11.918,11.918,0,0,0-3.516-8.484A11.919,11.919,0,0,0-14496,18904a11.921,11.921,0,0,0-8.486,3.516A11.913,11.913,0,0,0-14508,18916Z" transform="translate(15626 -16505)" fill="#919199"/>
                            <path id="Subtraction_15" data-name="Subtraction 15" d="M-14510,18912h-1a3,3,0,0,1-3-3v-6a3,3,0,0,1,3-3h1a2,2,0,0,1,2,2v8A2,2,0,0,1-14510,18912Zm-1-11a2,2,0,0,0-2,2v6a2,2,0,0,0,2,2h1a1,1,0,0,0,1-1v-8a1,1,0,0,0-1-1Z" transform="translate(15628 -16489)" fill="#919199"/>
                            <path id="Subtraction_19" data-name="Subtraction 19" d="M4,12H3A3,3,0,0,1,0,9V3A3,3,0,0,1,3,0H4A2,2,0,0,1,6,2v8A2,2,0,0,1,4,12ZM3,1A2,2,0,0,0,1,3V9a2,2,0,0,0,2,2H4a1,1,0,0,0,1-1V2A1,1,0,0,0,4,1Z" transform="translate(1146.002 2423) rotate(180)" fill="#919199"/>
                            <path id="Subtraction_17" data-name="Subtraction 17" d="M-14512,18908a2,2,0,0,1-2-2v-4a2,2,0,0,1,2-2,2,2,0,0,1,2,2v4A2,2,0,0,1-14512,18908Zm0-7a1,1,0,0,0-1,1v4a1,1,0,0,0,1,1,1,1,0,0,0,1-1v-4A1,1,0,0,0-14512,18901Z" transform="translate(20034 16940.002) rotate(90)" fill="#919199"/>
                            <rect id="Rectangle_18418" data-name="Rectangle 18418" width="1" height="4.001" transform="translate(1137.502 2427.502) rotate(90)" fill="#919199"/>
                            <path id="Intersection_1" data-name="Intersection 1" d="M-14508.5,18910a4.508,4.508,0,0,0,4.5-4.5h1a5.508,5.508,0,0,1-5.5,5.5Z" transform="translate(15646.004 -16482.5)" fill="#919199"/>
                        </g>
                    </svg>
                    <h4 class="text-dark fs-14 fw-700 mt-3">{{ translate('Support Policy') }}</h4>
                </a>
            </div>

            <!-- Privacy Policy -->
            <div class="col-lg-3 col-6 policy-file">
                <a class="text-reset h-100 border-right border-bottom border-soft-light text-center p-2 p-md-4 d-block hov-ls-1" href="{{ route('privacypolicy') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
                        <g id="Group_24236" data-name="Group 24236" transform="translate(-1454.002 -2430.002)">
                            <path id="Subtraction_11" data-name="Subtraction 11" d="M-14498,18932a15.894,15.894,0,0,1-11.312-4.687A15.909,15.909,0,0,1-14514,18916a15.884,15.884,0,0,1,4.685-11.309A15.9,15.9,0,0,1-14498,18900a15.909,15.909,0,0,1,11.316,4.688A15.885,15.885,0,0,1-14482,18916a15.9,15.9,0,0,1-4.687,11.316A15.909,15.909,0,0,1-14498,18932Zm0-31a14.9,14.9,0,0,0-10.605,4.393A14.9,14.9,0,0,0-14513,18916a14.9,14.9,0,0,0,4.395,10.607A14.9,14.9,0,0,0-14498,18931a14.9,14.9,0,0,0,10.607-4.393A14.9,14.9,0,0,0-14483,18916a14.9,14.9,0,0,0-4.393-10.607A14.9,14.9,0,0,0-14498,18901Z" transform="translate(15968 -16470)" fill="#919199"/>
                            <g id="Group_24196" data-name="Group 24196" transform="translate(0 -1)">
                                <rect id="Rectangle_18406" data-name="Rectangle 18406" width="2" height="10" transform="translate(1469 2440)" fill="#919199"/>
                                <rect id="Rectangle_18407" data-name="Rectangle 18407" width="2" height="2" transform="translate(1469 2452)" fill="#919199"/>
                            </g>
                        </g>
                    </svg>
                    <h4 class="text-dark fs-14 fw-700 mt-3">{{ translate('Privacy Policy') }}</h4>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- footer subscription & icons -->
@php
    $col_values = ((get_setting('vendor_system_activation') == 1) || addon_is_activated('delivery_boy')) ? "col-lg-3 col-md-6 col-sm-6" : "col-md-4 col-sm-6";
@endphp
<section class="py-lg-3 text-light footer-widget" style="background-color: #19a09c !important;">
    <!-- footer widgets ========== [Accordion Fotter widgets are bellow from this]-->
    <div class="container d-none d-lg-block">
        <div class="row">
            <!-- Quick links -->
            <div class="col-xl-5 col-lg-5">
                <div class="row">
                    <div class="col-lg-2 text-center">
                        <a href="{{ route('home') }}" class="d-block">
                            @if(get_setting('footer_logo') != null)
                                <img class="lazyload img-fluid" style="max-height: 150px" height="150" src="{{ asset('assets/img/placeholder-rect.jpg') }}" data-src="{{ uploaded_asset(get_setting('footer_logo')) }}" alt="{{ env('APP_NAME') }}">
                            @else
                                <img class="lazyload img-fluid" style="max-height: 150px"  height="150" src="{{ asset('assets/img/placeholder-rect.jpg') }}" data-src="{{ asset('assets/img/logo-w.png') }}" alt="{{ env('APP_NAME') }}">
                            @endif
                        </a>
                    </div>
                    <div class="col-lg-9  text-sm-center">

                        <div class="mb-4 text-white text-justify">
                            {!! get_setting('about_us_description',null,App::getLocale()) !!}
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <h5 class="fs-14 fw-700 text-soft-light mt-1 mb-3">{{ translate('Subscribe to our newsletter') }}</h5>
                        <div class="mb-3">
                            <form method="POST" action="{{ route('subscribers.store') }}">
                                @csrf
                                <div class="row gutters-10">
                                    <div class="col-8 p-0">
                                        <div class="input-group  mb-3">
                                            <input type="tel" id="email"
                                                   class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                                   value="{{ old('email') }}" placeholder="" name="email" autocomplete="off">
                                            <div class="input-group-prepend">
                                                <span  style="height: 42px;border-left: 3px solid #ddd;" class="input-group-text bg-primary border-1 text-white" style="height: 42px;" id="basic-addon1">  +964  <img src="{{asset("assets/img/flags/iq.png")}}" style="padding-right: 3px;margin-top: -3px" alt=""></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 p-0">
                                        <button type="submit" class="btn btn-primary rounded-0 w-100" style="background-color: #11b5b0;">{{ translate('Subscribe') }}</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                    <div class="col-lg-12">
                        <h5 class="fs-14 fw-700 text-soft-light mt-1 mb-3">{{ translate('Follow Us') }}</h5>
                    @if ( get_setting('show_social_links') )
                            <ul class="list-inline social  mb-4 text-left">
                                @if (!empty(get_setting('facebook_link')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('facebook_link') }}" target="_blank"
                                           class="facebook"><i class="lab la-facebook-f"></i></a>
                                    </li>
                                @endif
                                @if (!empty(get_setting('whatsapp_phone')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('whatsapp_phone') }}" target="_blank"
                                           class="twitter"><i class="lab la-whatsapp"></i></a>
                                    </li>
                                @endif
                                {{-- @if (!empty(get_setting('twitter_link')))
                                     <li class="list-inline-item">
                                         <a href="{{ get_setting('twitter_link') }}" target="_blank"
                                            class="twitter"><i class="lab la-twitter"></i></a>
                                     </li>
                                 @endif--}}
                                @if (!empty(get_setting('blogger_b')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('blogger_b') }}" target="_blank"
                                           class="twitter"><i class="lab la-blogger-b"></i></a>
                                    </li>
                                @endif
                                @if (!empty(get_setting('pinterest')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('pinterest') }}" target="_blank"
                                           class="twitter"><i class="lab la-pinterest"></i></a>
                                    </li>
                                @endif
                                @if (!empty(get_setting('telegram')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('telegram') }}" target="_blank"
                                           class="twitter"><i class="lab la-telegram"></i></a>
                                    </li>
                                @endif
                                @if (!empty(get_setting('instagram_link')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('instagram_link') }}" target="_blank"
                                           class="instagram"><i class="lab la-instagram"></i></a>
                                    </li>
                                @endif
                                @if (!empty(get_setting('youtube_link')))
                                    <li class="list-inline-item">
                                        <a href="{{ get_setting('youtube_link') }}" target="_blank"
                                           class="youtube"><i class="lab la-youtube"></i></a>
                                    </li>
                                @endif
                                {{-- @if (!empty(get_setting('linkedin_link')))
                                     <li class="list-inline-item">
                                         <a href="{{ get_setting('linkedin_link') }}" target="_blank"
                                            class="linkedin"><i class="lab la-linkedin-in"></i></a>
                                     </li>
                                 @endif--}}
                            </ul>
                        @endif
                    </div>
                </div>

            </div>

            <div class="col-xxl-3 col-xl-3 col-lg-3">
                <div class="text-center text-sm-left mt-4">
                    <h4 class="fs-14 text-white text-uppercase fw-700 mb-3">{{ translate('Contacts') }}</h4>
                    <ul class="list-unstyled">
                        <li >
                            <p  class="fs-13 text-white mb-1">{{ translate('Address') }}</p>
                            <p  class="fs-15 text-soft-light">{{ get_setting('contact_address',null,App::getLocale()) }}</p>
                        </li>
                        <li >
                            <p  class="fs-13 text-white mb-1">{{ translate('Phone') }}</p>
                            <p  class="fs-15 text-soft-light">{{ get_setting('contact_phone') }}</p>
                        </li>
                        <li >
                            <p  class="fs-13 text-white mb-1">{{ translate('Email') }}</p>
                            <p  class="">
                                <a href="mailto:{{ get_setting('contact_email') }}" class="fs-15 text-soft-light hov-text-primary">{{ get_setting('contact_email')  }}</a>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- My Account -->
            <div class="col-xxl-2 col-xl-2 col-lg-2">
                <div class="text-center text-sm-left mt-4">
                    <h4 class="fs-14 text-white text-uppercase fw-700 mb-3">{{ translate('My Account') }}</h4>
                    <ul class="list-unstyled">
                        @if (Auth::check())
                            <li >
                                <a class="fs-15 text-soft-light animate-underline-white" href="{{ route('logout') }}">
                                    {{ translate('Logout') }}
                                </a>
                            </li>
                        @else
                            <li >
                                <a class="fs-15 text-soft-light animate-underline-white" href="{{ route('user.login') }}">
                                    {{ translate('Login') }}
                                </a>
                            </li>
                        @endif
                        <li >
                            <a class="fs-15 text-soft-light animate-underline-white" href="{{ route('purchase_history.index') }}">
                                {{ translate('Order History') }}
                            </a>
                        </li>
                        <li >
                            <a class="fs-15 text-soft-light animate-underline-white" href="{{ route('wishlists.index') }}">
                                {{ translate('My Wishlist') }}
                            </a>
                        </li>
                        <li >
                            <a class="fs-15 text-soft-light animate-underline-white" href="{{ route('orders.track') }}">
                                {{ translate('Track Order') }}
                            </a>
                        </li>
                        @if (addon_is_activated('affiliate_system'))
                            <li >
                                <a class="fs-15 text-soft-light animate-underline-white" href="{{ route('affiliate.apply') }}">
                                    {{ translate('Be an affiliate partner')}}
                                </a>
                            </li>
                        @endif
                    </ul>
                </div>


            </div>
            <div class="col-xxl-2 col-xl-2 col-lg-2">
                <div class="text-center text-sm-left mt-4">
                    <h4 class="fs-14 text-white text-uppercase fw-700 mb-3">{{ translate('Payment Methods') }}</h4>
                    <ul class="list-unstyled">
                        @if ( get_setting('payment_method_images') !=  null )
                            @foreach (explode(',', get_setting('payment_method_images')) as $key => $value)
                                <li class="list-inline-item mr-3 mb-2">
                                    <img src="{{ uploaded_asset($value) }}" height="" class="w-100 h-auto bg-white rounded-1" style="max: 20px" alt="{{ translate('payment_method') }}">
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Accordion Fotter widgets -->
    <div class="container d-lg-none bg-transparent">
        <!-- Quick links -->
        <div class="row p-2 pb-5" style="background: #19a09c">

            <div class="col-md-6 p-2">

                <!-- Contacts -->
                <div class="aiz-accordion-wrap bg-primary" style="direction: ltr">
                    <div class="aiz-accordion-heading container" style="background-color: #138c87">
                        <button class="aiz-accordion fs-14 text-white bg-transparent">{{ translate('Contacts') }}</button>
                    </div>
                    <div class="aiz-accordion-panel bg-transparent" style="background-color: #138c87 !important;">
                        <div class="container">
                            <ul class="list-unstyled mt-3">
                                <li >
                                    <span  class="fs-15 text-soft-light">{{ get_setting('contact_address',null,App::getLocale()) }}</span>
                                </li>
                                <li >
                                    <span  class="fs-15 text-soft-light">{{ get_setting('contact_phone') }}</span>
                                </li>
                                <li >
                                    <span  class="">
                                        <a href="mailto:{{ get_setting('contact_email') }}" class="fs-15 text-soft-light hov-text-primary">{{ get_setting('contact_email')  }}</a>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-6 p-2">
                <!-- My Account -->
                <div class="aiz-accordion-wrap">
                    <div class="aiz-accordion-heading container" style="background-color: #138c87">
                        <button class="aiz-accordion fs-14 text-white bg-transparent">{{ translate('My Account') }}</button>
                    </div>
                    <div class="aiz-accordion-panel bg-transparent" style="background-color: #138c87 !important;">
                        <div class="container">
                            <ul class="list-unstyled mt-3">
                                @auth
                                    <li class=" pb-1">
                                        <a class="fs-15 text-soft-light text-sm-white animate-underline-white" href="{{ route('logout') }}">
                                            {{ translate('Logout') }}
                                        </a>
                                    </li>
                                @else
                                    <li class=" pb-1 {{ areActiveRoutes(['user.login'],' active')}}">
                                        <a class="fs-15 text-soft-light text-sm-white animate-underline-white" href="{{ route('user.login') }}">
                                            {{ translate('Login') }}
                                        </a>
                                    </li>
                                @endauth
                                <li class=" pb-1 {{ areActiveRoutes(['purchase_history.index'],' active')}}">
                                    <a class="fs-15 text-soft-light text-sm-white animate-underline-white" href="{{ route('purchase_history.index') }}">
                                        {{ translate('Order History') }}
                                    </a>
                                </li>
                                <li class=" pb-1 {{ areActiveRoutes(['wishlists.index'],' active')}}">
                                    <a class="fs-15 text-soft-light text-sm-white animate-underline-white" href="{{ route('wishlists.index') }}">
                                        {{ translate('My Wishlist') }}
                                    </a>
                                </li>
                                <li class=" pb-1 {{ areActiveRoutes(['orders.track'],' active')}}">
                                    <a class="fs-15 text-soft-light text-sm-white animate-underline-white" href="{{ route('orders.track') }}">
                                        {{ translate('Track Order') }}
                                    </a>
                                </li>
                                @if (addon_is_activated('affiliate_system'))
                                    <li class=" pb-1 {{ areActiveRoutes(['affiliate.apply'],' active')}}">
                                        <a class="fs-15 text-soft-light text-sm-white animate-underline-white" href="{{ route('affiliate.apply') }}">
                                            {{ translate('Be an affiliate partner')}}
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 p-2">
                <!-- My Account -->
                <div class="aiz-accordion-wrap">
                    <div class="aiz-accordion-heading container" style="background-color: #138c87">
                        <button class="aiz-accordion fs-14 text-white bg-transparent">{{ translate('Payment Methods') }}</button>
                    </div>
                    <div class="aiz-accordion-panel bg-transparent" style="background-color: #138c87 !important;">
                        <div class="container">
                            <ul class="list-unstyled mt-3">
                                @if ( get_setting('payment_method_images') !=  null )
                                    @foreach (explode(',', get_setting('payment_method_images')) as $key => $value)
                                        <li class="list-inline-item mr-3 mb-2">
                                            <img src="{{ uploaded_asset($value) }}" height="" class="w-100 h-auto bg-white rounded-1" style="max-width: 120px" alt="{{ translate('payment_method') }}">
                                        </li>
                                    @endforeach
                                @endif

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 p-2">
                <!-- My Account -->
                <div class="aiz-accordion-wrap">
                    <div class="aiz-accordion-heading container" style="background-color: #138c87">
                        <button class="aiz-accordion fs-14 text-white bg-transparent">{{ translate('Follow Us') }}</button>
                    </div>
                    <div class="aiz-accordion-panel bg-transparent" style="background-color: #138c87 !important;">
                        <div class="container">
                            @if ( get_setting('show_social_links') )
                                <ul class="list-inline social  mb-4 text-center">
                                    @if (!empty(get_setting('facebook_link')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('facebook_link') }}" target="_blank"
                                               class="facebook"><i class="lab la-facebook-f"></i></a>
                                        </li>
                                    @endif
                                    @if (!empty(get_setting('whatsapp_phone')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('whatsapp_phone') }}" target="_blank"
                                               class="twitter"><i class="lab la-whatsapp"></i></a>
                                        </li>
                                    @endif
                                   {{-- @if (!empty(get_setting('twitter_link')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('twitter_link') }}" target="_blank"
                                               class="twitter"><i class="lab la-twitter"></i></a>
                                        </li>
                                    @endif--}}
                                        @if (!empty(get_setting('blogger_b')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('blogger_b') }}" target="_blank"
                                               class="twitter"><i class="lab la-blogger-b"></i></a>
                                        </li>
                                    @endif
                                    @if (!empty(get_setting('pinterest')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('pinterest') }}" target="_blank"
                                               class="twitter"><i class="lab la-pinterest"></i></a>
                                        </li>
                                    @endif
                                    @if (!empty(get_setting('telegram')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('telegram') }}" target="_blank"
                                               class="twitter"><i class="lab la-telegram"></i></a>
                                        </li>
                                    @endif
                                    @if (!empty(get_setting('instagram_link')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('instagram_link') }}" target="_blank"
                                               class="instagram"><i class="lab la-instagram"></i></a>
                                        </li>
                                    @endif
                                    @if (!empty(get_setting('youtube_link')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('youtube_link') }}" target="_blank"
                                               class="youtube"><i class="lab la-youtube"></i></a>
                                        </li>
                                    @endif
                                   {{-- @if (!empty(get_setting('linkedin_link')))
                                        <li class="list-inline-item">
                                            <a href="{{ get_setting('linkedin_link') }}" target="_blank"
                                               class="linkedin"><i class="lab la-linkedin-in"></i></a>
                                        </li>
                                    @endif--}}
                                </ul>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>
<footer class="pt-3 pb-3 pb-xl-2 bg- text-soft-light" style="background: #16908c">
    <div class="container">
        <div class="row align-items-center ">
            <!-- Copyright -->
            <div class="col-lg-6 order-1 order-lg-0">
                <div class="text-center text-lg-left fs-14" current-verison="{{get_setting("current_version")}}">
                    {!! get_setting('frontend_copyright_text', null, App::getLocale()) !!}
                </div>
            </div>

            <!-- Payment Method Images -->
            <div class="col-lg-6 mb-4 mb-lg-0">
                <div class="text-center text-lg-right">

                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Mobile bottom nav -->
<div class="aiz-mobile-bottom-nav d-xl-none fixed-bottom border-top border-sm-bottom border-sm-left border-sm-right mx-auto mb-sm-2" style="background-color: rgb(255 255 255 / 100%)!important;">
    <div class="row align-items-center gutters-5">
        <!-- Home -->
        <div class="col">
            <a href="{{ route('home') }}" class="text-white d-block text-center pb-2 pt-3 {{ areActiveRoutes(['home'],'svg-active')}}">
                <i class="la la-home text-dark" style="font-size: 45px"></i>
            </a>
        </div>

        <!-- Categories -->
        <div class="col">
            <a href="{{ route('categories.all') }}" class="text-white d-block text-center pb-2 pt-3 {{ areActiveRoutes(['categories.all'],'svg-active')}}">
                <i class="la la-table text-dark" style="font-size: 45px"></i>

            </a>
        </div>
        <!-- Cart -->
        @php
            $count = count(get_user_cart());
        @endphp
        <div class="col-auto">
            <a href="{{ route('cart') }}" class="text-white d-block text-center pb-2 pt-3 px-3 {{ areActiveRoutes(['cart'],'svg-active')}}">
                <span class="d-inline-block position-relative px-2">
                  <i class="la la-shopping-bag text-dark" style="font-size: 45px"></i>
                    @if($count > 0)
                        <span class="badge badge-sm badge-dot badge-circle badge-primary position-absolute absolute-top-right" style="right: 5px;top: -2px;"></span>
                    @endif
                </span>
            </a>
        </div>

        <!-- Notifications -->
        <div class="col">
            <a href="{{ route('all-notifications') }}" class="text-white d-block text-center pb-2 pt-3 {{ areActiveRoutes(['all-notifications'],'svg-active')}}">
                <span class="d-inline-block position-relative px-2">
                   <i class="las la-file-invoice  text-dark " style="font-size: 45px"></i>
                    @if(Auth::check() && count(Auth::user()->unreadNotifications) > 0)
                        <span class="badge badge-sm badge-dot badge-circle badge-primary position-absolute absolute-top-right" style="right: 5px;top: -2px;"></span>
                    @endif
                </span>
            </a>
        </div>

        <!-- Account -->
        <div class="col">
            @if (Auth::check())
                @if(isAdmin())
                    <a href="{{ route('admin.dashboard') }}" class="text-white d-block text-center pb-2 pt-3">
                        <i class="la la-user-cog text-dark" style="font-size: 45px"></i>
                    </a>
                @else
                    <a href="javascript:void(0)" class="text-white d-block text-center pb-2 pt-3 mobile-side-nav-thumb" data-toggle="class-toggle" data-backdrop="static" data-target=".aiz-mobile-side-nav">
                        <i class="la la-cog text-dark" style="font-size: 45px"></i>
                        <span class="d-block mt-1 fs-10 fw-600 text-reset">{{ translate('My Account') }}</span>
                    </a>
                @endif
            @else
                <a href="{{ route('user.login') }}" class="text-white d-block text-center pb-2 pt-3">
                    <i class="la la-user text-dark" style="font-size: 45px"></i>
                </a>
            @endif
        </div>

    </div>
</div>

@if (Auth::check() && !isAdmin())
    <!-- User Side nav -->
    <div class="aiz-mobile-side-nav collapse-sidebar-wrap sidebar-xl d-xl-none z-1035">
        <div class="overlay dark c-pointer overlay-fixed" data-toggle="class-toggle" data-backdrop="static" data-target=".aiz-mobile-side-nav" data-same=".mobile-side-nav-thumb"></div>
        <div class="collapse-sidebar bg-white">
            @include('frontend.inc.user_side_nav')
        </div>
    </div>
@endif
