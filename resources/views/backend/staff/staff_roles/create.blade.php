@extends('backend.layouts.app')

@section('content')

<div class="col-lg-12 mx-auto">
    <div class="card row">
        <div class="card-header ">
          <div class="col-lg-12">
          <div class="row">
              <div class="col-lg-8">
                  <h5 class="mb-0 h6">{{translate('Role Information')}}</h5>
              </div>

          </div>
          </div>
        </div>
        <form action="{{ route('roles.store') }}" method="POST">
            @csrf
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-md-3 col-from-label" for="name">{{translate('Name')}}</label>
                    <div class="col-md-9">
                        <input type="text" placeholder="{{translate('Name')}}" id="name" name="name" class="form-control" required>
                    </div>
                </div>
                <div class="card-header">
                    <h5 class="mb-0 h6">
                        <label class="aiz-checkbox mb-3">
                            <input
                                type="checkbox"
                                name="all"
                                id="all"
                                onclick="checkAllPermissions('all')"
                                value="all"
                            >
                            <span class="aiz-square-check"></span>
                        </label>
                        {{ translate('Permissions') }}</h5>
                </div>
                <br>
                @php
                    $permission_groups =  \App\Models\Permission::all()->groupBy('section');
                    $addons = array("offline_payment", "club_point", "pos_system", "paytm", "seller_subscription", "otp_system", "refund_request", "affiliate_system", "african_pg", "delivery_boy", "auction", "wholesale");
                @endphp
                @foreach ($permission_groups as $key => $permission_group)
                    @php
                        $show_permission_group = true;

                        if(in_array($permission_group[0]['section'], $addons)){

                            if (addon_is_activated($permission_group[0]['section']) == false) {
                                $show_permission_group = false;
                            }
                        }
                    @endphp
                    @if($show_permission_group)
                        <ul class="list-group mb-4">
                            <li class="list-group-item bg-light" aria-current="true">
                                <label class="aiz-checkbox mb-3">
                                    <input
                                        type="checkbox"
                                        class="checkboxes"
                                        id="{{$permission_group[0]['section']}}"
                                        name="{{$permission_group[0]['section']}}"
                                        onclick="checkCategory('{{$permission_group[0]['section']}}')"
                                        value="{{$permission_group[0]['section']}}"
                                    >
                                    <span class="aiz-square-check"></span>
                                </label>
                                {{ translate(Str::headline($permission_group[0]['section'])) }}

                            </li>
                            <li class="list-group-item">
                                <div class="row">
                                    @foreach ($permission_group as $key => $permission)
                                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                                            <div class="p-2 border mt-1 mb-2">
                                                <label class="control-label d-flex">{{ translate(Str::headline($permission->name)) }}</label>
                                                <label class="aiz-switch aiz-switch-success">
                                                    <input type="checkbox" name="permissions[]" class="form-control checkboxes check_{{$permission_group[0]['section']}} demo-sw" value="{{ $permission->id }}">
                                                    <span class="slider round"></span>
                                                </label>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </li>
                        </ul>
                    @endif
                @endforeach

                <div class="form-group mb-3 mt-3 text-right">
                    <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection
@section("script")
    <script>
        function checkCategory(caterory){
            if ($('#'+caterory).prop("checked")) {
                $('.check_'+caterory).prop("checked", true);

            } else {
                $('.check_'+caterory).prop("checked", false);

            }
        }
        checkAllPermissions()
        function checkAllPermissions(){
            if ($('#all').prop("checked")) {
                $('.checkboxes').prop("checked", true);

            } else {
                $('.checkboxes').prop("checked", false);

            }
        }
    </script>
@endsection
