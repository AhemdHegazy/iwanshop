<div class="sticky-top z-3 row gutters0 m-0 p-0">
    @php
        $photos = [];
    @endphp
    @if ($detailedProduct->photos != null)
        @php
            $photos = explode(',', $detailedProduct->photos);
        @endphp
    @endif

    <div class="card">
        <div class="card-body">
            <!-- Gallery Images -->
            <div class="col-12 m-auto">
                <h2 class="mb-1 fs-20 fw-700 text-dark text-center bg-light p-3">
                    {{ $detailedProduct->name }}
                </h2>
            </div>
            <div class="col-12">

                <a id="heart" href="javascript:void(0)" style="
    position: absolute;
    left: 0%;
    z-index: 9;
    font-size: 57px;
    top: 5%;
    background: transparent;
" onclick="addToWishList({{ $detailedProduct->id }})"
                   class="mr-3 fs-14 text-dark " data-toggle="tooltip" title="{{translate("Add To Favourites")}}">
                    <i  style="
    font-size: 40px;
    background: #fff;
    padding: 5px;
    border-radius: 6px;
    color: #ddd;
    border:2px solid #ddd;
" class="la la-heart "></i>
                </a>
                <div class="aiz-carousel product-gallery arrow-inactive-transparent arrow-lg-none  rounded-3"
                     data-nav-for='.product-gallery-thumb' data-fade='true' data-auto-height='true' data-arrows='true'>

                    @foreach ($photos as $key => $photo)
                        <div class="carousel-box img-zoo rounded-3 ">
                            <img class="img-fluid h-auto lazyload mx-auto  bg-light"
                                 src="{{ asset('assets/img/placeholder.jpg') }}" data-src="{{ uploaded_asset($photo) }}"
                                 onerror="this.onerror=null;this.src='{{ asset('assets/img/placeholder.jpg') }}';">
                        </div>
                    @endforeach

                </div>
            </div>
            <!-- Thumbnail Images -->
            <div class="col-12 mt-3 d-none d-lg-block">
                <div class="aiz-carousel half-outside-arrow product-gallery-thumb mt-5" data-items='4' data-nav-for='.product-gallery'
                     data-focus-select='true' data-arrows='true' data-vertical='false' data-auto-height='true'>

                    @foreach ($photos as $key => $photo)
                        <div class="carousel-box c-pointer rounded-2 " style="margin-top: 25px" >

                                <img class="lazyload mw-100 mx-auto border" style="height: 100px;width: 80%;box-shadow: 0 0 5px 5px #e2e2e2"
                                     src="{{ asset('assets/img/placeholder.jpg') }}" data-src="{{ uploaded_asset($photo) }}"
                                     onerror="this.onerror=null;this.src='{{ asset('assets/img/placeholder.jpg') }}';">


                        </div>
                    @endforeach

                </div>
            </div>
            <div class="col-lg-12">
                <!-- Share -->
                <div class="row mt-3">
                   <div class="col-lg-12 py-2 bg-light">
                       <div class="row m-0 p-0">
                           <div class="col-lg-3 p-0 col-md-12">
                               <div class="text-secondary fs-12 fw-400 mt-2">{{ translate('Share On') }}</div>
                           </div>
                           <div class="col-lg-9 p-0 col-md-12 text-left">

                               <div class="aiz-share text-left"></div>
                           </div>
                       </div>
                   </div>
                </div>
            </div>


        </div>
    </div>
</div>
