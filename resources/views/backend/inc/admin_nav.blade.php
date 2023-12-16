<div class="aiz-topbar px-15px px-lg-25px d-flex align-items-stretch justify-content-between">
    <div class="d-flex">
        <!-- Mobile toggler -->
        <div class="aiz-topbar-nav-toggler d-flex align-items-center justify-content-start mr-2 mr-md-3 ml-0"
            data-toggle="aiz-mobile-nav">
            {{-- <button class="aiz-mobile-toggler">
                <span></span>
            </button> --}}
            <a class="btn btn-topbar has-transition btn-icon p-0 d-flex align-items-center" href="javascript:void(0)">
                <img src="{{ asset("assets/Sala/list.png") }}" class="img-fluid" alt="">
            </a>
        </div>
    </div>
    <div class="d-flex justify-content-between align-items-stretch flex-grow-xl-1">
        <div class="d-flex justify-content-around align-items-center align-items-stretch">
            <div class="d-flex justify-content-around align-items-center align-items-stretch">
                <!-- Browse Website -->
                <div class="aiz-topbar-item">
                    <div class="d-flex align-items-center">
                        <a style="background: #19a09c" class="btn btn-topbar has-transition btn-icon btn-circle btn-light d-flex align-items-center justify-content-center"
                            href="{{ route('home') }}" target="_blank" data-toggle="tooltip" data-title="{{ translate('Browse Website') }}">
                            <img src="{{ asset("assets/img/logo-w.png") }}" class="img-fluid" alt="">
                        </a>
                    </div>
                </div>
            </div>
            @if (addon_is_activated('pos_system') && auth()->user()->can('pos_manager'))
                <!-- POS -->
                <div class="d-flex justify-content-around align-items-center align-items-stretch ml-3">
                    <div class="aiz-topbar-item">
                        <div class="d-flex align-items-center">
                            <a class="btn btn-topbar has-transition btn-icon btn-circle btn-light d-flex align-items-center justify-content-center"
                                href="{{ route('poin-of-sales.index') }}" target="_blank" data-toggle="tooltip" data-title="{{ translate('POS') }}">
                                {{-- <i class="las la-print"></i> --}}
                                <svg xmlns="http://www.w3.org/2000/svg" width="13.79" height="16" viewBox="0 0 13.79 16">
                                    <g id="_371925cdd3f531725a9fa8f3ebf8fe9e" data-name="371925cdd3f531725a9fa8f3ebf8fe9e" transform="translate(-2.26 0)">
                                      <path id="Path_40673" data-name="Path 40673" d="M10.69,7H3.26a1.025,1.025,0,0,0-1,1V18.45a1.03,1.03,0,0,0,1,1.05h7.43a1.03,1.03,0,0,0,1.03-1.03V8A1.025,1.025,0,0,0,10.69,7ZM4.94,17.86H3.995v-.95H4.94Zm0-2.355H3.995v-.95H4.94Zm0-2.355H3.995V12.2H4.94Zm2.5,4.71H6.5v-.95h.955Zm0-2.355H6.5v-.95h.955Zm0-2.355H6.5V12.2h.955Zm2.5,4.71H8.99v-.95h.95Zm0-2.355H8.99v-.95h.95Zm0-2.355H8.99V12.2h.95Zm.325-3a.17.17,0,0,1-.165.17H3.835a.17.17,0,0,1-.165-.17V8.795a.165.165,0,0,1,.165-.165H10.13a.165.165,0,0,1,.165.165Zm5.09-1.45H15.13v9.09h.25a.67.67,0,0,0,.67-.67V9.375a.67.67,0,0,0-.695-.675Z" transform="translate(0 -3.5)" fill="#9da3ae"/>
                                      <rect id="Rectangle_20842" data-name="Rectangle 20842" width="1.465" height="9.095" transform="translate(12.185 5.2)" fill="#9da3ae"/>
                                      <rect id="Rectangle_20843" data-name="Rectangle 20843" width="0.63" height="9.095" transform="translate(14.06 5.2)" fill="#9da3ae"/>
                                      <path id="Path_40674" data-name="Path 40674" d="M13.895.895a.89.89,0,0,0-.26-.635A.91.91,0,0,0,13,0a.895.895,0,0,0-.91.895v.53h1.79Zm-2.2,0a.76.76,0,0,1,0-.145.68.68,0,0,1,0-.1h.01A.5.5,0,0,1,11.755.5.43.43,0,0,1,11.79.4a1.2,1.2,0,0,1,.145-.26.5.5,0,0,1,.04-.055L12.045,0H7.995A.815.815,0,0,0,7.18.81V3.03h4.5Z" transform="translate(-2.46)" fill="#9da3ae"/>
                                    </g>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            @endif
            <!-- Clear Cache -->
            <div class="d-flex justify-content-around align-items-center align-items-stretch ml-3">
                <div class="aiz-topbar-item">
                    <div class="d-flex align-items-center">
                        <a class="btn btn-light btn-sm d-flex align-items-center"
                            href="{{ route('cache.clear') }}">
                            <i class="las la-hdd fs-20" style="color:#19a09c"></i>
                            <span class=" ml-2 mr-0 d-none d-md-block" style="color:#19a09c ">{{ translate('Clear Cache') }}</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-around align-items-center align-items-stretch">
            <!-- Notifications -->
            <div class="aiz-topbar-item ml-2">
                <div class="align-items-stretch d-flex dropdown">
                    @php
                        $support_ticket = DB::table('tickets')
                                    ->where('viewed', 0)
                                    ->select('id')
                                    ->count();
                    @endphp
                    <a class="dropdown-toggle no-arrow mr-3" href="{{ route('support_ticket.admin_index') }}">
                        <span style="border-radius: 50%" class="btn btn-icon bg-white p-0 d-flex justify-content-center align-items-center" data-toggle="tooltip" data-title="{{ translate('Notification') }}">
                            <span class="d-flex align-items-center position-relative">
                                {{-- <i class="las la-bell fs-24"></i> --}}
                                <div class="px-2">
                                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                                    <g id="Group_28286" data-name="Group 28286" transform="translate(0)">
                                      <path id="Path_40743" data-name="Path 40743" d="M16,9.125a3.122,3.122,0,0,0-1.255-2.5,6.9,6.9,0,0,0-1.94-4.6,6.725,6.725,0,0,0-9.61,0,6.9,6.9,0,0,0-1.94,4.6,3.124,3.124,0,0,0,1.87,5.627h1.25A.625.625,0,0,0,5,11.625v-5A.625.625,0,0,0,4.375,6H3.125a3.129,3.129,0,0,0-.569.052,5.487,5.487,0,0,1,10.887,0A3.129,3.129,0,0,0,12.875,6h-1.25A.625.625,0,0,0,11,6.625v5a.625.625,0,0,0,.625.625h.625v.625a1.877,1.877,0,0,1-1.875,1.875H8A.625.625,0,0,0,8,16h2.375A3.129,3.129,0,0,0,13.5,12.875v-.688A3.13,3.13,0,0,0,16,9.125ZM3.75,7.25V11H3.125a1.875,1.875,0,0,1,0-3.75ZM12.875,11H12.25V7.25h.625a1.875,1.875,0,1,1,0,3.75Z" fill="eee"></path>
                                      <path id="Path_40744" data-name="Path 40744" d="M197.875,113.25a.626.626,0,0,1,.625.625.618.618,0,0,1-.137.391,4.365,4.365,0,0,0-1.113,2.746v.613a.625.625,0,0,0,1.25,0v-.613a3.186,3.186,0,0,1,.838-1.964A1.875,1.875,0,1,0,196,113.875a.625.625,0,0,0,1.25,0A.626.626,0,0,1,197.875,113.25Z" transform="translate(-189.875 -108.5)" fill="#eee"></path>
                                      <circle id="Ellipse_891" data-name="Ellipse 891" cx="0.625" cy="0.625" r="0.625" transform="translate(7.375 11)" fill="#fff"></circle>
                                    </g>
                                </svg>
                                </div>
                                @if($support_ticket > 0)
                                    <span class="puls badge badge-sm  badge-circle badge-danger position-absolute absolute-top-left" style="right: -6px !important;top: -10px;padding: 9px;">{{ $support_ticket }}</span>
                                @else
                                    <span class="badge badge-sm  badge-circle badge-danger position-absolute absolute-top-left" style="right: -6px !important;top: -10px;padding: 9px;">{{ Auth::user()->unreadNotifications->count() }}</span>
                                @endif
                            </span>
                        </span>
                    </a>
                    <a class="dropdown-toggle no-arrow" data-toggle="dropdown" href="javascript:void(0);" role="button"
                        aria-haspopup="false" aria-expanded="false">
                        <span style="border-radius: 50%" class="btn btn-icon bg-white p-0 d-flex justify-content-center align-items-center" data-toggle="tooltip" data-title="{{ translate('Notification') }}">
                            <span class="d-flex align-items-center position-relative">
                                {{-- <i class="las la-bell fs-24"></i> --}}
                                <div class="px-2">
                                    <img src="{{ asset("assets/Sala/bell.png") }}" class="img-fluid" alt="">
                                </div>
                                @if (Auth::user()->unreadNotifications->count() > 0)
                                    <span class="puls badge badge-sm  badge-circle badge-danger position-absolute absolute-top-left" style="right: -6px !important;top: -10px;padding: 9px;">{{ Auth::user()->unreadNotifications->count() }}</span>
                                @endif
                                <span class="badge badge-sm  badge-circle badge-danger position-absolute absolute-top-left" style="right: -6px !important;top: -10px;padding: 9px;">{{ Auth::user()->unreadNotifications->count() }}</span>

                            </span>
                        </span>
                    </a>


                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-xl py-0">
                        <div class="notifications">
                            <ul class="nav nav-tabs nav-justified" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link text-dark active" data-toggle="tab" data-type="order" href="javascript:void();"
                                        data-target="#orders-notifications" role="tab" id="orders-tab">{{ translate('Orders') }}</a>
                                </li>
{{--                                <li class="nav-item">--}}
{{--                                    <a class="nav-link text-dark" data-toggle="tab" data-type="seller" href="javascript:void();"--}}
{{--                                        data-target="#sellers-notifications" role="tab" id="sellers-tab">{{ translate('Sellers') }}</a>--}}
{{--                                </li>--}}
                                <li class="nav-item">
                                    <a class="nav-link text-dark" data-toggle="tab" data-type="seller" href="javascript:void();"
                                        data-target="#payouts-notifications" role="tab" id="sellers-tab">{{ translate('Payouts') }}</a>
                                </li>
                            </ul>
                            <div class="tab-content c-scrollbar-light overflow-auto" style="height: 75vh; max-height: 400px; overflow-y: auto;">
                                <div class="tab-pane active" id="orders-notifications" role="tabpanel">
                                    <x-notification :notifications="auth()->user()->unreadNotifications()->where('type', 'App\Notifications\OrderNotification')->take(20)->get()" />
                                </div>
{{--                                <div class="tab-pane" id="sellers-notifications" role="tabpanel">--}}
{{--                                    <x-notification :notifications="auth()->user()->unreadNotifications()->where('type', 'like', '%shop%')->take(20)->get()" />--}}
{{--                                </div>--}}
                                <div class="tab-pane" id="payouts-notifications" role="tabpanel">
                                    <x-notification :notifications="auth()->user()->unreadNotifications()->where('type', 'App\Notifications\PayoutNotification')->take(20)->get()" />
                                </div>
                            </div>
                        </div>

                        <div class="text-center border-top">
                            <a href="{{ route('admin.all-notification') }}" class="text-reset d-block py-2">
                                {{ translate('View All Notifications') }}
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- language -->
            @php
                if (Session::has('locale')) {
                    $locale = Session::get('locale', Config::get('app.locale'));
                } else {
                    $locale = env('DEFAULT_LANGUAGE');
                }
            @endphp

            <!-- User -->
            <div class="aiz-topbar-item ml-2 ml-md-3">
                <div class="align-items-stretch d-flex dropdown">
                    <!-- Image & Name -->
                    <a class="dropdown-toggle no-arrow text-dark" data-toggle="dropdown" href="javascript:void(0);"
                        role="button" aria-haspopup="false" aria-expanded="false">
                        <span class="d-flex align-items-center">

                            <span class="size-45px rounded-content overflow-hidden ml-md-2">
                                <img src="{{ uploaded_asset(Auth::user()->avatar_original) }}" class="img-fit"
                                    onerror="this.onerror=null;this.src='{{ asset('assets/img/avatar-place.png') }}';">
                            </span>
                             <span class="d-none d-md-block">
                                <span class="d-block text-white fw-500">{{ Auth::user()->name }}</span>
                                <span class="d-block small text-white text-left">{{ translate(ucfirst(Auth::user()->user_type)) }}</span>
                            </span>
                        </span>
                    </a>
                    <!-- User dropdown Menus -->
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-md">
                        <a href="{{ route('profile.index') }}" class="dropdown-item">
                            <i class="las la-user-circle"></i>
                            <span>{{ translate('Profile') }}</span>
                        </a>

                        <a href="{{ route('logout') }}" class="dropdown-item">
                            <i class="las la-sign-out-alt"></i>
                            <span>{{ translate('Logout') }}</span>
                        </a>
                    </div>
                </div>
            </div><!-- .aiz-topbar-item -->
        </div>
    </div>
</div><!-- .aiz-topbar -->
