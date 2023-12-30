<form class="form-default" role="form" action="{{ route('addresses.update', $address_data->id) }}" method="POST">
    @csrf
    <div class="p-3">
        <!-- Address -->
        <div class="row">
            <div class="col-md-2">
                <label>{{ translate('Name')}}</label>
            </div>
            <div class="col-md-10">
                <input class="form-control mb-3" id="name" placeholder="{{translate("Name")}}" value="{{$address_data->name}}" name="name" required>

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

                    <input type="url" class="form-control" name="url" id="url" value="{{$address_data->url}}" aria-label="Text input with radio button">
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

        <input type="hidden" name="country_id" value="{{\App\Models\Country::first()->id}}">
        <input type="hidden" name="social_type" id="social_type" value="facebook">


        <!-- Phone -->
        <div class="row">
            <div class="col-md-2">
                <label>{{ translate('Phone')}}</label>
            </div>
            <div class="col-md-10">

                <div class="input-group  mb-3">
                    <input type="text" class="form-control mb-3 rounded-0" placeholder="{{ translate('+880')}}" value="{{ $address_data->phone }}" name="phone" value="" required>
                    <div class="input-group-prepend">
                        <span  class="input-group-text" style="height: 42px;" id="basic-addon1">  +964  <img src="{{asset("assets/img/flags/iq.png")}}" style="padding-right: 3px;margin-top: -3px" alt=""></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <label>{{ translate('Another Phone')}}</label>
            </div>
            <div class="col-md-10">
                <div class="input-group  mb-3">
                    <input type="text" class="form-control mb-3 rounded-0" placeholder="{{ translate('+880')}}" value="{{ $address_data->postal_code }}" name="postal_code"  required>
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
                <select class="form-control mb-3 aiz-selectpicker rounded-0" name="state_id" id="edit_state"  data-live-search="true" required>
                    @foreach ($states as $key => $state)
                        <option value="{{ $state->id }}" @if($address_data->state_id == $state->id) selected @endif>
                            {{ $state->name }}
                        </option>
                    @endforeach
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
                    @foreach ($cities as $key => $city)
                        <option value="{{ $city->id }}" @if($address_data->city_id == $city->id) selected @endif>
                            {{ $city->name }}
                        </option>
                    @endforeach
                </select>
            </div>
        </div>

        @if (get_setting('google_map') == 1)
            <!-- Google Map -->
            <div class="row mt-3 mb-3">
                <input id="edit_searchInput" class="controls" type="text" placeholder="Enter a location">
                <div id="edit_map"></div>
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
                    <input type="text" class="form-control mb-3 rounded-0" id="edit_longitude" name="longitude" value="{{ $address_data->longitude }}" readonly="">
                </div>
            </div>
            <!-- Latitude -->
            <div class="row">
                <div class="col-md-2" id="">
                    <label for="exampleInputuname">{{ translate('Latitude')}}</label>
                </div>
                <div class="col-md-10" id="">
                    <input type="text" class="form-control mb-3 rounded-0" id="edit_latitude" name="latitude" value="{{ $address_data->latitude }}" readonly="">
                </div>
            </div>
        @endif


        <div class="row">
            <div class="col-md-2">
                <label>{{ translate('Address')}}</label>
            </div>
            <div class="col-md-10">
                <textarea class="form-control mb-3 rounded-0" placeholder="{{ translate('Your Address')}}" rows="2" name="address" required>{{ $address_data->address }}</textarea>
            </div>
        </div>
        <!-- Save button -->
        <div class="form-group text-right">
            <button type="submit" class="btn btn-primary rounded-0 w-150px">{{translate('Save')}}</button>
        </div>
    </div>
</form>
