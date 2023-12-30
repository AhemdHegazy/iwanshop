<div class="text-left">
    <!-- Product Name -->
    <!-- Without Wholesale -->
    @if (home_price($detailedProduct) != home_discounted_price($detailedProduct))
        <div class="row no-gutters mb-3">
            <div class="col-sm-12 btn btn-primary text-left px-3">

                <strong class="fs-18 fw-700 text-left">
                    {{ translate('Price') }} : <br> {{ home_discounted_price($detailedProduct) }}

                    <del class="fs-14 opacity-60 ml-2">
                        {{ home_price($detailedProduct) }}
                    </del>


                </strong>
                <!-- Discount percentage -->
                @if (discount_in_percentage($detailedProduct) > 0)
                    <span class="bg-primary ml-2 fs-11 fw-700 text-white w-35px text-center p-1"
                          style="padding-top:2px;padding-bottom:2px;">-{{ discount_in_percentage($detailedProduct) }}%</span>
                @endif

                @if ($detailedProduct->unit != null)
                    <span class="opacity-70 pull-left" style="float: left">( {{ $detailedProduct->unit }} )</span>
                @endif
            </div>
        </div>
    @else
        <div class="row no-gutters mb-3">
            <div class="col-sm-12 btn btn-primary text-left px-3">

                <strong class="fs-18 fw-700 text-left">
                    {{ translate('Price') }} : {{ home_discounted_price($detailedProduct) }}
                </strong>

                @if ($detailedProduct->unit != null)
                    <span class="opacity-70 pull-left" style="float: left">( {{ $detailedProduct->unit }} )</span>
                @endif
            </div>
        </div>
    @endif
    <div class="bg-light mb-2 border p-3 p-sm-4">
        <!-- Tabs -->
        <div class="nav aiz-nav-tabs">
            <a href="#tab_default_1" data-toggle="tab"
               class="pb-2 fs-16 fw-700 text-reset active show">{{ translate('Description') }}</a>
            @if ($detailedProduct->video_link != null)
                <a href="#tab_default_2" data-toggle="tab"
                   class="mr-5 pb-2 fs-16 fw-700 text-reset">{{ translate('Video') }}</a>
            @endif
            @if ($detailedProduct->pdf != null)
                <a href="#tab_default_3" data-toggle="tab"
                   class="mr-5 pb-2 fs-16 fw-700 text-reset">{{ translate('Downloads') }}</a>
            @endif
        </div>

        <!-- Description -->
        <div class="tab-content pt-0">
            <!-- Description -->
            <div class="tab-pane fade active show" id="tab_default_1">
                <div class="py-1">
                    <div class="mw-100 overflow-hidden text-left aiz-editor-data">
                        <?php echo $detailedProduct->description; ?>

                        @if ($detailedProduct->est_shipping_days)
                            <div class=" fs-14 mt-1">
                                <small class="opacity-50 fs-14">{{ translate('Estimate Shipping Time') }}:</small>
                                <span class="fw-500">{{ $detailedProduct->est_shipping_days }} {{ translate('Days') }}</span>
                            </div>
                        @endif
                    </div>
                </div>
            </div>

            <!-- Video -->
            <div class="tab-pane fade" id="tab_default_2">
                <div class="py-1">
                    <div class="embed-responsive embed-responsive-16by9">
                        @if ($detailedProduct->video_provider == 'youtube' && isset(explode('=', $detailedProduct->video_link)[1]))
                            <iframe class="embed-responsive-item"
                                    src="https://www.youtube.com/embed/{{ get_url_params($detailedProduct->video_link, 'v') }}"></iframe>
                        @elseif ($detailedProduct->video_provider == 'dailymotion' && isset(explode('video/', $detailedProduct->video_link)[1]))
                            <iframe class="embed-responsive-item"
                                    src="https://www.dailymotion.com/embed/video/{{ explode('video/', $detailedProduct->video_link)[1] }}"></iframe>
                        @elseif ($detailedProduct->video_provider == 'vimeo' && isset(explode('vimeo.com/', $detailedProduct->video_link)[1]))
                            <iframe
                                src="https://player.vimeo.com/video/{{ explode('vimeo.com/', $detailedProduct->video_link)[1] }}"
                                width="500" height="281" frameborder="0" webkitallowfullscreen
                                mozallowfullscreen allowfullscreen></iframe>
                        @endif
                    </div>
                </div>
            </div>

            <!-- Download -->
            <div class="tab-pane fade" id="tab_default_3">
                <div class="py-1 text-center ">
                    <a href="{{ uploaded_asset($detailedProduct->pdf) }}"
                       class="btn btn-primary">{{ translate('Download') }}</a>
                </div>
            </div>
        </div>
    </div>


    <!-- Brand Logo & Name -->
    @if ($detailedProduct->brand != null)
        <div class="d-flex flex-wrap align-items-center bg-light p-3 mb-1">
            <span class="mr-1 text-dark fs-16">{{ translate('Brand') }} : </span><br>
            <a href="{{ route('products.brand', $detailedProduct->brand->slug) }}"
               class="text-reset hov-text-primary fs-16 fw-700 mr-5" >{{ $detailedProduct->brand->name }}</a>
        </div>
    @endif

</div>


<!-- For auction product -->

@if ($detailedProduct->auction_product != 1)
    <form id="option-choice-form">
        @csrf
        <input type="hidden" name="id" value="{{ $detailedProduct->id }}">
        @if ($detailedProduct->choice_options != null)
            @foreach (json_decode($detailedProduct->choice_options) as $key => $choice)
                <div class="row no-gutters bg-light p-3 mb-1">
                    <div class="col-sm-2">
                        <div class="text-dark fs-14 fw-400 mt-2 ">
                            {{ get_single_attribute_name($choice->attribute_id) }}
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div class="aiz-radio-inline">
                            @foreach ($choice->values as $key => $value)
                                <label class="aiz-megabox pl-0 mr-2 mb-0">
                                    <input type="radio" name="attribute_id_{{ $choice->attribute_id }}"
                                           value="{{ $value }}"
                                           @if ($key == 0) checked @endif>
                                    <span
                                        class="aiz-megabox-elem rounded-0 d-flex align-items-center justify-content-center py-1 px-3">
                                                {{ $value }}
                                            </span>
                                </label>
                            @endforeach
                        </div>
                    </div>
                </div>
            @endforeach
        @endif

    <!-- Color Options -->
        @if ($detailedProduct->colors != null && count(json_decode($detailedProduct->colors)) > 0)
            <div class="row no-gutters bg-light p-3 mb-1">
                <div class="col-sm-2">
                    <div class="text-dark fs-14 fw-400 mt-2">{{ translate('Color') }}</div>
                </div>
                <div class="col-sm-10">
                    <div class="aiz-radio-inline">
                        @foreach (json_decode($detailedProduct->colors) as $key => $color)
                            <label class="aiz-megabox pl-0 mr-2 mb-0"  style="border-radius: 50% !important" data-toggle="tooltip"
                                   data-title="{{ get_single_color_name($color) }}">
                                <input type="radio" name="color" style="border-radius: 50% !important"
                                       value="{{ get_single_color_name($color) }}"
                                       @if ($key == 0) checked @endif>
                                <span style="border-radius: 50% !important"
                                    class="aiz-megabox-elem rounded-0 d-flex align-items-center justify-content-center p-1">
                                            <span class="size-25px d-inline-block rounded"
                                                  style="background: {{ $color }};border-radius: 50% !important"></span>
                                        </span>
                            </label>
                        @endforeach
                    </div>
                </div>
            </div>
    @endif

    @if ($detailedProduct->digital == 0)
        <!-- Choice Options -->

            <!-- Quantity + Add to cart -->
            <div class="row no-gutters mb-3 bg-light p-3">
                <div class="col-sm-2">
                    <div class="text-dark fs-14 fw-400 mt-2">{{ translate('Quantity') }}</div>
                </div>
                <div class="col-sm-10">
                    <div class="product-quantity d-flex align-items-center">
                        <div class="row no-gutters align-items-center aiz-plus-minus mr-3" style="width: 130px;">
                            <button class="btn col-auto btn-icon btn-sm btn-light bg-white rounded-0" type="button"
                                    data-type="minus" data-field="quantity" disabled="">
                                <i class="las la-minus"></i>
                            </button>
                            <input type="number" name="quantity"
                                   class="col border-0 text-center flex-grow-1 fs-16 input-number bg-light" placeholder="1"
                                   value="{{ $detailedProduct->min_qty }}" min="{{ $detailedProduct->min_qty }}"
                                   max="{{ $detailedProduct->max_qty }}" lang="en">
                            <button class="btn col-auto btn-icon btn-sm btn-light bg-white rounded-0" type="button"
                                    data-type="plus" data-field="quantity">
                                <i class="las la-plus"></i>
                            </button>
                        </div>
                        @php
                            $qty = 0;
                            foreach ($detailedProduct->stocks as $key => $stock) {
                                $qty += $stock->qty;
                            }
                        @endphp
                        <div class="avialable-amount opacity-60">
                            @if ($detailedProduct->stock_visibility_state == 'quantity')
                                (<span id="available-quantity">{{ $qty }}</span>
                                {{ translate('available') }})
                            @elseif($detailedProduct->stock_visibility_state == 'text' && $qty >= 1)
                                (<span id="available-quantity">{{ translate('In Stock') }}</span>)
                            @endif
                        </div>
                    </div>
                </div>
            </div>
    @else
        <!-- Quantity -->
            <input type="hidden" name="quantity" value="1">
    @endif

    <!-- Total Price -->
        <div class="row no-gutters bg-primary p-3 text-white d-none" id="chosen_price_div">
            <div class="col-sm-3">
                <div class="text-white fs-18 fw-400 mt-1">{{ translate('Total Price') }}:</div>
            </div>
            <div class="col-sm-9">
                <div class="product-price">
                    <strong id="chosen_price" class="fs-20 fw-700 text-white text-right" style="float: left">

                    </strong>
                </div>
            </div>
        </div>

    </form>
@endif



    <!-- Add to cart & Buy now Buttons -->
    <div class="mt-3">

            <button style="box-shadow: 0 0 5px 5px #e2e2e2" type="button" class="btn btn-block btn-outline-light fs-18 buy-now fw-600 add-to-cart min-w-150px rounded-0"
                    @if (Auth::check()) onclick="buyNow()" @else onclick="showLoginModal()" @endif>
                <i class="la la-shopping-cart fs-20"></i> {{ translate('Add to Cart') }}
            </button>

            <button type="button" class="btn btn-secondary out-of-stock fw-600 d-none" disabled>
                <i class="la la-cart-arrow-down"></i> {{ translate('Out of Stock') }}
            </button>

    </div>
