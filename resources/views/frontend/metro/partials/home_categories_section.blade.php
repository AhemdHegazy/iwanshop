

<!-- Featured Categories -->
@if (get_setting('home_categories') != null)
    @php
        $home_categories = json_decode(get_setting('home_categories'));
        $categories = get_category($home_categories);
    @endphp

    <section class="mb-2 mb-md-3 mt-2 mt-md-3">
        <div class="container">
            <div class="bg-white">
                <!-- Top Section -->
                <div class="d-flex mt-2 mt-md-3 mb-2 mb-md-3 align-items-baseline justify-content-between">
                    <!-- Title -->
                    <h3 class="fs-16 fs-md-20 fw-700 mb-2 mb-sm-0">
                        <span class="text-primary border-primary" style="border-bottom: 2px solid #0ea09b !important">{{ translate(' Category Wise') }}</span>
                    </h3>
                </div>
            </div>
            <!-- Categories -->
            <div class="bg-white px-sm-3">
                <div class="aiz-carousel sm-gutters-17" data-items="4" data-xxl-items="4" data-xl-items="3.5"
                     data-lg-items="3" data-md-items="2" data-sm-items="2" data-xs-items="1" data-arrows="true"
                     data-dots="false" data-autoplay="false" data-infinite="true">
                    @foreach ($categories as $category_key => $category)
                        @php
                            $category_name = $category->name;
                        @endphp
                        <div class="carousel-box position-relative p-0 has-transition border-right border-top border-bottom @if ($category_key == 0) border-left @endif">
                            <div class="h-200px h-sm-250px h-md-340px">
                                <div class="h-100 w-100 w-xl-auto position-relative hov-scale-img overflow-hidden">
                                    <div class="position-absolute h-100 w-100 overflow-hidden">
                                        <img src="{{ isset($category->coverImage->file_name) ? my_asset($category->coverImage->file_name) : static_asset('assets/img/placeholder.jpg') }}"
                                             alt="{{ $category_name }}"
                                             class="img-fit h-100 has-transition"
                                             onerror="this.onerror=null;this.src='{{ asset('assets/img/placeholder.jpg') }}';">
                                    </div>
                                    <div class="pb-4 px-4 absolute-bottom-left has-transition h-50 w-100 d-flex flex-column align-items-center justify-content-end"
                                         style="background: linear-gradient(to top, rgba(0,0,0,0.5) 50%,rgba(0,0,0,0) 100%) !important;">
                                        <div class="w-100">
                                            <a class="fs-16 fw-700 text-white animate-underline-white home-category-name d-flex align-items-center hov-column-gap-1"
                                               href="{{ route('products.category', $category->slug) }}"
                                               style="width: max-content;">
                                                {{ $category_name }}&nbsp;
                                                <i class="las la-angle-right"></i>
                                            </a>
                                            <div class="d-flex flex-wrap h-50px overflow-hidden mt-2">
                                                @foreach (get_cached_products($category->id) as $product_key => $product)
                                                    <div
                                                        class="carousel-box px-3 position-relative has-transition hov-animate-outline">
                                                        @include('frontend.'.get_setting('homepage_select').'.partials.product_box_2', ['product' => $product])
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endif
