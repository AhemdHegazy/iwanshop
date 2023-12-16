<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="{{ asset('assets/css/vendors.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/aiz-core.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/custom-style.css') }}">
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
</head>
<body>
    <section class="py-4 mb-4 bg-light">
        <div class="container text-center">
            <div class="row">
                <div class="col-lg-6 text-center mx-auto">
                    <h1 class="fw-600 h4">{{ $page->title }}</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="mb-4">
    	<div class="container-fluid">
    		{!! $page->content !!}
    	</div>
    </section>
</body>
</html>
