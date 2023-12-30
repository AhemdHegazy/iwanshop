<!doctype html>
<html dir="rtl" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url" content="{{ getBaseURL() }}">
    <meta name="file-base-url" content="{{ getFileBaseURL() }}">

    <!--oninvalid="this.setCustomValidity('هذا المدخل مطلوب')"  oninput="this.setCustomValidity('')" required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="icon" href="{{ uploaded_asset(get_setting('site_icon')) }}">
    <link rel="apple-touch-icon" href="{{ uploaded_asset(get_setting('site_icon')) }}">
    <title>{{ get_setting('website_name') . ' | ' . get_setting('site_motto') }}</title>

    <!-- google font -->
    {{-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"> --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap">

    <!-- aiz core css -->
    <link rel="stylesheet" href="{{ asset('assets/css/vendors.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap-rtl.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/aiz-core.css') }}">
    <style>
         @font-face {
            font-family: 'Tajawal';
            src: url('{{ asset("assets/Sala/PingAR+LT-Medium.otf") }}') format('opentype');
            /* You can also include additional font formats for better browser compatibility */
        }
        *{
            font-family: 'Tajawal', sans-serif;
        }
        input{
            direction: rtl !important;
        }

    </style>
    <style>
        :root {
            --blue: #3390f3;
            --hov-blue: #1f6dc2;
            --soft-blue: #f1fafd;
        }
        body {
            font-size: 12px;
            font-family: 'Public Sans', sans-serif;
        }
        /* .bootstrap-select .btn,
        .btn:not(.btn-circle),
        .form-control,
        .input-group-text,
        .custom-file-label, .custom-file-label::after {
            border-radius: 0;
        } */
        .border-gray {
            border-color: #e4e5eb !important;
        }
        .card {
            border-radius: 8px;
            background: #fff;
            border: 1px solid #f1f1f4;
            box-shadow: 0px 6px 14px rgba(35, 39, 52, 0.04);
        }
        .form-control {
            border: 1px solid #e4e5eb;
        }
        .aiz-color-input{
            border-top-left-radius: 4px !important;
            border-bottom-left-radius: 4px !important;
        }
        .form-control.file-amount{
            border-top-right-radius: 4px !important;
            border-bottom-right-radius: 4px !important;
        }
        .daterangepicker .ranges li{
            font-size: 12px;
            padding: 8px 12px;
            cursor: pointer;
            text-align: right;
        }
    </style>
    <script>
        var AIZ = AIZ || {};
        AIZ.local = {
            nothing_selected: '{!! translate('Nothing selected', null, true) !!}',
            nothing_found: '{!! translate('Nothing found') !!}',
            choose_file: '{{ translate('Choose file') }}',
            file_selected: '{{ translate('File selected') }}',
            files_selected: '{{ translate('Files selected') }}',
            add_more_files: '{{ translate('Add more files') }}',
            adding_more_files: '{{ translate('Adding more files') }}',
            drop_files_here_paste_or: '{{ translate('Drop files here, paste or') }}',
            browse: '{{ translate('Browse') }}',
            upload_complete: '{{ translate('Upload complete') }}',
            upload_paused: '{{ translate('Upload paused') }}',
            resume_upload: '{{ translate('Resume upload') }}',
            pause_upload: '{{ translate('Pause upload') }}',
            retry_upload: '{{ translate('Retry upload') }}',
            cancel_upload: '{{ translate('Cancel upload') }}',
            uploading: '{{ translate('Uploading') }}',
            processing: '{{ translate('Processing') }}',
            complete: '{{ translate('Complete') }}',
            file: '{{ translate('File') }}',
            files: '{{ translate('Files') }}',
        }
    </script>

</head>

<body class="">

    <div class="aiz-main-wrapper">
        @include('backend.inc.admin_sidenav')
        <div class="aiz-content-wrapper">
            @include('backend.inc.admin_nav')
            <div class="aiz-main-content">
                <div class="px-15px px-lg-25px">
                    @include("errors")
                    @yield('content')
                </div>
                <div class="bg-white text-center py-3 px-15px px-lg-25px mt-auto">
                    <p class="mb-0">&copy; {{ get_setting('site_name') }} v{{ get_setting('current_version') }}</p>
                </div>
            </div><!-- .aiz-main-content -->
        </div><!-- .aiz-content-wrapper -->
    </div><!-- .aiz-main-wrapper -->

    @yield('modal')


    <script src="{{ asset('assets/js/vendors.js') }}"></script>
    <script src="{{ asset('assets/js/aiz-core.js') }}"></script>

    @yield('script')

    <script type="text/javascript">


        $("#watermark").click(function (){
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{ route('session-save') }}?session_set="+$(this).prop("checked"),
                type: 'GET',
                success: function(response) {

                }
            });
        })
        @foreach (session('flash_notification', collect())->toArray() as $message)
            AIZ.plugins.notify('{{ $message['level'] }}', '{{ $message['message'] }}');
        @endforeach
        @if ($errors->any())
            @foreach ($errors->all() as $error)
                AIZ.plugins.notify('danger', '{{ $error }}');
            @endforeach
        @endif

        $('.dropdown-menu a[data-toggle="tab"]').click(function(e) {
            e.stopPropagation()
            $(this).tab('show')
        })

        if ($('#lang-change').length > 0) {
            $('#lang-change .dropdown-menu a').each(function() {
                $(this).on('click', function(e) {
                    e.preventDefault();
                    var $this = $(this);
                    var locale = $this.data('flag');
                    $.post('{{ route('language.change') }}', {
                        _token: '{{ csrf_token() }}',
                        locale: locale
                    }, function(data) {
                        location.reload();
                    });

                });
            });
        }

        function menuSearch() {
            var filter, item;
            filter = $("#menu-search").val().toUpperCase();
            items = $("#main-menu").find("a");
            items = items.filter(function(i, item) {
                if ($(item).find(".aiz-side-nav-text")[0].innerText.toUpperCase().indexOf(filter) > -1 && $(item)
                    .attr('href') !== '#') {
                    return item;
                }
            });

            if (filter !== '') {
                $("#main-menu").addClass('d-none');
                $("#search-menu").html('')
                if (items.length > 0) {
                    for (i = 0; i < items.length; i++) {
                        const text = $(items[i]).find(".aiz-side-nav-text")[0].innerText;
                        const link = $(items[i]).attr('href');
                        $("#search-menu").append(
                            `<li class="aiz-side-nav-item"><a href="${link}" class="aiz-side-nav-link"><i class="las la-ellipsis-h aiz-side-nav-icon"></i><span>${text}</span></a></li`
                            );
                    }
                } else {
                    $("#search-menu").html(
                        `<li class="aiz-side-nav-item"><span	class="text-center text-muted d-block">{{ translate('Nothing Found') }}</span></li>`
                        );
                }
            } else {
                $("#main-menu").removeClass('d-none');
                $("#search-menu").html('')
            }
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

        $(".bs-select-all").html("تحديد الكل")
        $(".bs-deselect-all").html("إلغاء تحديد الكل")
    </script>
</body>

</html>
