@extends('frontend.layouts.app')

@section('content')
    <!-- Breadcrumb -->
    <section class="pt-4 mb-4">
        <div class="container text-center">
            <div class="row">
                <div class="col-lg-6 text-center text-lg-left">
                    <h1 class="fw-700 fs-20 fs-md-24 text-dark">
                        {{ translate('All Categories') }}
                    </h1>
                </div>
                <div class="col-lg-6">
                    <ul class="breadcrumb bg-transparent p-0 justify-content-center justify-content-lg-end">
                        <li class="breadcrumb-item has-transition opacity-60 hov-opacity-100">
                            <a class="text-reset" href="{{ route('home') }}">{{ translate('Home') }}</a>
                        </li>
                        <li class="text-dark fw-600 breadcrumb-item">
                            "{{ translate('All Categories') }}"
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- All Categories -->
    <section class="mb-5 pb-3">
        <div class="container">
            <div class="row">
                @foreach ($categories as $key => $category)
                  <div class="col-lg-3 col-md-6 col-sm-12 mt-sm-3" style="border-radius: 15px">
                      <div class="row p-3 pt-3 mr-1 bg-light">
                          <div class="col-sm-4">
                              <img src="{{ uploaded_asset($category->banner) }}" alt="" class="img-fluid" style="max-height: 80px;min-height: 80px">
                          </div>
                          <div class="col-sm-8">
                              <h5>{{ $category->name }}</h5>

                              @foreach ($category->childrenCategories()->limit(3)->get() as $key => $child_category)
                                  <a class="text-reset fw-700 fs-10 hov-text-primary"
                                     href="{{ route('products.category', $child_category->slug) }}">
                                      {{ $child_category->name }}
                                      @if(!$loop->last) ,@endif
                                  </a>
                              @endforeach
                          </div>
                      </div>

                  </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection

@section('script')
    <script>
        $('.show-hide-cetegoty').on('click', function() {
            var el = $(this).siblings('ul');
            if (el.hasClass('less')) {
                el.removeClass('less');
                $(this).html('{{ translate('Less') }} <i class="las la-angle-up"></i>');
            } else {
                el.addClass('less');
                $(this).html('{{ translate('More') }} <i class="las la-angle-down"></i>');
            }
        });
    </script>
@endsection
