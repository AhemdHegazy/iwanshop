<!-- New Address Modal -->
<div class="modal fade" id="new-address-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{{ translate('New Address') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="form-default" role="form" action="{{ route('addresses.store') }}" method="POST">
                @csrf
                <div class="modal-body c-scrollbar-light">
                    <div class="p-3">
                        <!-- Address -->
                        <div class="row">
                            <div class="col-md-2">
                                <label>{{ translate('Name')}}</label>
                            </div>
                            <div class="col-md-10">
                                <input class="form-control mb-3" id="name" placeholder="{{translate("Name")}}" name="name" required>

                                </input>
                            </div>
                        </div>
                        <style>
                            /* Style for the checked state */
                            input[type="radio"]:checked +.icon {
                                color: #fff; /* Example text color for the checked state */
                            }
                        </style>
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-10">
                                <div class="input-group mb-3">

                                    <input type="url" class="form-control" name="url" id="url" aria-label="Text input with radio button">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text facebook p-0">
                                            <input type="radio" id="facebook"  name="socialType" onclick="changeSocial('facebook')" value="facebook" aria-label="Radio button for following text input" style="display: none">
                                            <label for="facebook" style="padding: 10px;margin: 0" class="la la-facebook icon"></label>
                                        </div>
                                        <div class="input-group-text instagram p-0">
                                            <input type="radio" id="instagram" name="socialType" onclick="changeSocial('instagram')" value="instagram" aria-label="Radio button for following text input" style="display: none">
                                            <label for="instagram" style="padding: 10px;margin: 0" class="la la-instagram icon"></label>
                                        </div>
                                        <div class="input-group-text whatsapp p-0">
                                            <input type="radio" id="whatsapp" name="socialType" onclick="changeSocial('whatsapp')" value="whatsapp"  aria-label="Radio button for following text input"   style="display: none">
                                            <label for="whatsapp" style="padding: 10px;margin: 0" class="la la-whatsapp icon"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <label>{{ translate('Phone')}}</label>
                            </div>
                            <div class="col-md-10">
                                <div class="input-group  mb-3">
                                    <input type="text" class="form-control mb-3 rounded-0" placeholder="{{ translate('+880')}}" name="phone" value="" required>
                                    <div class="input-group-prepend">
                                        <span  class="input-group-text" style="height: 42px;" id="basic-addon1">  +964  <img src="{{asset("assets/img/flags/iq.png")}}" style="padding-right: 3px;margin-top: -3px" alt=""></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Postal Code -->
                        <div class="row">
                            <div class="col-md-2">
                                <label>{{ translate('Another Phone')}}</label>
                            </div>
                            <div class="col-md-10">
                                <div class="input-group  mb-3">
                                    <input type="text" class="form-control mb-3 rounded-0" placeholder="{{ translate('+880')}}" name="postal_code" value="" required>
                                    <div class="input-group-prepend">
                                        <span  class="input-group-text" style="height: 42px;" id="basic-addon1">  +964  <img src="{{asset("assets/img/flags/iq.png")}}" style="padding-right: 3px;margin-top: -3px" alt=""></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- State -->
                        <div class="row">
                            <div class="col-md-2">
                                <label>{{ translate('State')}}</label>
                            </div>
                            <div class="col-md-10">
                                <select class="form-control mb-3 aiz-selectpicker rounded-0" data-live-search="true" name="state_id" required>

                                </select>
                            </div>
                        </div>

                        <!-- City -->
                        <div class="row">
                            <div class="col-md-2">
                                <label>{{ translate('City')}}</label>
                            </div>
                            <div class="col-md-10">
                                <select class="form-control mb-3 aiz-selectpicker rounded-0" data-live-search="true" name="city_id" required>

                                </select>
                            </div>
                        </div>

                        @if (get_setting('google_map') == 1)
                            <!-- Google Map -->
                            <div class="row mt-3 mb-3">
                                <input id="searchInput" class="controls" type="text" placeholder="{{translate('Enter a location')}}">
                                <div id="map"></div>
                                <ul id="geoData">
                                    <li style="display: none;">Full Address: <span id="location"></span></li>
                                    <li style="display: none;">Postal Code: <span id="postal_code"></span></li>
                                    <li style="display: none;">Country: <span id="country"></span></li>
                                    <li style="display: none;">Latitude: <span id="lat"></span></li>
                                    <li style="display: none;">Longitude: <span id="lon"></span></li>
                                </ul>
                            </div>
                            <!-- Longitude -->
                            <div class="row">
                                <div class="col-md-2" id="">
                                    <label for="exampleInputuname">{{ translate('Longitude')}}</label>
                                </div>
                                <div class="col-md-10" id="">
                                    <input type="text" class="form-control mb-3 rounded-0" id="longitude" name="longitude" readonly="">
                                </div>
                            </div>
                            <!-- Latitude -->
                            <div class="row">
                                <div class="col-md-2" id="">
                                    <label for="exampleInputuname">{{ translate('Latitude')}}</label>
                                </div>
                                <div class="col-md-10" id="">
                                    <input type="text" class="form-control mb-3 rounded-0" id="latitude" name="latitude" readonly="">
                                </div>
                            </div>
                        @endif

                        <!-- Phone -->

                        <div class="row">
                            <div class="col-md-2">
                                <label>{{ translate('Address')}}</label>
                            </div>
                            <div class="col-md-10">
                                <textarea class="form-control mb-3 rounded-0"  placeholder="{{ translate('Your Address')}}" rows="2" name="address" required></textarea>
                            </div>
                        </div>
                        <input type="hidden" name="country_id" value="{{\App\Models\Country::first()->id}}">
                        <input type="hidden" name="social_type" id="social_type" value="facebook">
                        <!-- Save button -->
                        <div class="form-group text-right">
                            <button type="submit" class="btn btn-primary rounded-0 w-150px">{{translate('Save')}}</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Edit Address Modal -->
<div class="modal fade" id="edit-address-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{{ translate('Edit Address') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body c-scrollbar-light" id="edit_modal_body">

            </div>
        </div>
    </div>
</div>

@section('script')
    <script type="text/javascript">
        @if ($errors->any())
        @foreach ($errors->all() as $error)
        AIZ.plugins.notify('danger', '{{ $error }}');
        @endforeach
        @endif
        changeSocial('facebook')

        function changeSocial(val){
            $(".whatsapp").css("background","#f7f8fa")
            $(".whatsapp .icon").css("color","#666")
            $(".facebook").css("background","#f7f8fa")
            $(".facebook .icon").css("color","#666")
            $(".instagram").css("background","#f7f8fa")
            $(".instagram .icon").css("color","#666")
            $("."+val).css("background","#19a09c")
            $("."+val+" .icon").css("color","#fff")
            $("#social_type").val(val)
        }
        function add_new_address(){
            $('#new-address-modal').modal('show');
        }

        function edit_address(address) {
            var url = '{{ route("addresses.edit", ":id") }}';
            url = url.replace(':id', address);

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: url,
                type: 'GET',
                success: function (response) {
                    $('#edit_modal_body').html(response.html);
                    $('#edit-address-modal').modal('show');
                    AIZ.plugins.bootstrapSelect('refresh');
                    changeSocial(response.data.address_data.social_type)
                    @if (get_setting('google_map') == 1)
                        var lat     = -33.8688;
                        var long    = 151.2195;

                        if(response.data.address_data.latitude && response.data.address_data.longitude) {
                            lat     = parseFloat(response.data.address_data.latitude);
                            long    = parseFloat(response.data.address_data.longitude);
                        }

                        initialize(lat, long, 'edit_');
                    @endif
                }
            });
        }
        var country_id = "{{\App\Models\Country::first()->id}}";

        get_states(country_id);
        $(document).on('change', '[name=country_id]', function() {
            var country_id = $(this).val();
            get_states(country_id);
        });

        $(document).on('change', '[name=state_id]', function() {
            var state_id = $(this).val();
            get_city(state_id);
        });

        function get_states(country_id) {
            $('[name="state"]').html("");
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('get-state')}}",
                type: 'POST',
                data: {
                    country_id  : country_id
                },
                success: function (response) {
                    var obj = JSON.parse(response);
                    if(obj != '') {
                        $('[name="state_id"]').html(obj);
                        AIZ.plugins.bootstrapSelect('refresh');
                    }
                }
            });
        }

        function get_city(state_id) {
            $('[name="city"]').html("");
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('get-city')}}",
                type: 'POST',
                data: {
                    state_id: state_id
                },
                success: function (response) {
                    var obj = JSON.parse(response);
                    if(obj != '') {
                        $('[name="city_id"]').html(obj);
                        AIZ.plugins.bootstrapSelect('refresh');
                    }
                }
            });
        }
    </script>


    @if (get_setting('google_map') == 1)
        @include('frontend.'.get_setting('homepage_select').'.partials.google_map')
    @endif
@endsection
