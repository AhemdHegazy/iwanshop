<div class="bg-white border text-center mb-4">
    <div class="m-3 m-sm-4 fs-16 fw-600 ml-4 fs-19 text-primary fw-700 border-bottom" style="border-bottom: 2px solid #07928e !important">
        {{ translate('Top Selling Products') }}
    </div>
    <div class="px-3 px-sm-4 pb-4">
        <ul class="list-group list-group-flush">
            @foreach (get_best_selling_products(6, $detailedProduct->user_id) as $key => $top_product)
                <li class="py-3 px-0 list-group-item border-0 bg-light rounded-1 p-2 mb-1 has-transition hov-shadow-md  border-right border-top border-bottom border-left  hov-animate-outline">
                    <div class="row gutters-10 align-items-center hov-scale-img">
                        <div class="col-xl-4 col-lg-6 col-4">
                            <!-- Image -->
                            <a href="{{ route('product', $top_product->slug) }}"
                                class="d-block text-reset">
                                <img class="img-fit lazyload h-80px h-md-150px h-lg-80px has-transition"
                                    src="{{ asset('assets/img/placeholder.jpg') }}"
                                    data-src="{{ uploaded_asset($top_product->thumbnail_img) }}"
                                    alt="{{ $top_product->name }}"
                                    onerror="this.onerror=null;this.src='{{ asset('assets/img/placeholder.jpg') }}';">
                            </a>
                        </div>
                        <div class="col text-left">
                            <!-- Product name -->
                            <div class="d-lg-none d-xl-block mb-3">
                                <h4 class="fs-14 fw-400 text-truncate-2">
                                    <a href="{{ route('product', $top_product->slug) }}"
                                        class="d-block text-reset hov-text-primary">{{ $top_product->name }}</a>
                                </h4>
                            </div>
                            <div class="">
                                <!-- Price -->
                                <span class="fs-14 fw-700 text-primary">{{ home_discounted_base_price($top_product) }}</span>
                                <!-- Home Price -->
                                @if(home_price($top_product) != home_discounted_price($top_product))
                                    <br>
                                <del class="fs-14 fw-700 text-danger ml-1 ml-lg-0 ml-xl-1">
                                    {{ home_price($top_product) }}
                                </del>
                                @endif
                            </div>
                        </div>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>
