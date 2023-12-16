@extends('backend.layouts.app')

@section('content')

    <div class="aiz-titlebar text-left mt-2 mb-3">
        <div class="align-items-center">
            <h1 class="h3">{{ translate('All Colors') }}</h1>
        </div>
    </div>

    <div class="row">
        <div class="@if(auth()->user()->can('add_color')) col-lg-7 @else col-lg-12 @endif">
            <div class="card">
                {{--<div class="dropdown mb-2 mb-md-0">
                    <button class="btn border dropdown-toggle" type="button" data-toggle="dropdown">
                        {{translate('Bulk Action')}}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item confirm-alert" href="javascript:void(0)"  data-target="#bulk-delete-modal"> {{translate('Delete selection')}}</a>
                    </div>
                </div>--}}
                <form class="" id="sort_colors" action="" method="GET">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ translate('Colors') }}</h5>
                        <div class="col-md-5">
                            <div class="form-group mb-0">
                                <input type="text" class="form-control form-control-sm" id="search" name="search"
                                    @isset($sort_search) value="{{ $sort_search }}" @endisset
                                    placeholder="{{ translate('Type color name & Enter') }}">
                            </div>
                        </div>
                    </div>
                </form>

                <div class="card-body">
                    <table class="table aiz-table mb-0">
                        <thead>
                        <tr>
                            <th>#</th>
                            {{--<th>
                                <div class="form-group">
                                    <div class="aiz-checkbox-inline">
                                        <label class="aiz-checkbox">
                                            <input type="checkbox" class="check-all">
                                            <span class="aiz-square-check"></span>
                                        </label>
                                    </div>
                                </div>
                            </th>--}}
                            <th>{{translate('Name') }}</th>
                            <th>{{translate('Code') }}</th>
                            <th class="text-right">{{translate('Options') }}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($colors as $key => $color)
                            <tr>
                                <td>{{ ($key+1) + ($colors->currentPage() - 1)*$colors->perPage() }}</td>
                                {{--<td>
                                    <div class="form-group d-inline-block">
                                        <label class="aiz-checkbox">
                                            <input type="checkbox" class="check-one" name="id[]" value="{{$color->id}}">
                                            <span class="aiz-square-check"></span>
                                        </label>
                                    </div>
                                </td>--}}
                                <td>{{ $color->name }}</td>
                                <td><div style="width: 15px;height: 15px;background: {{ $color->code }}"></div></td>
                                <td class="text-right">
                                    <a class="btn btn-soft-primary btn-icon btn-circle btn-sm"
                                       href="{{ route('colors.edit', ['id' => $color->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}"
                                       title="{{translate('Edit') }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                    <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm  confirm-delete"
                                       data-href="{{ route('colors.destroy', $color->id) }}"
                                       title="{{translate('Delete') }}">
                                        <i class="las la-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div class="aiz-pagination">
                        {{ $colors->appends(request()->input())->links() }}
                    </div>
                </div>
            </div>
        </div>
        @can('add_color')
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ translate('Add New Color') }}</h5>
                    </div>
                    <div class="card-body">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form action="{{ route('colors.store') }}" method="POST">
                            @csrf
                            <div class="form-group mb-3">
                                <label for="name">{{ translate('Name') }}</label>
                                <input type="text" placeholder="{{ translate('Name') }}" id="name" name="name"
                                    class="form-control" value="{{ old('name') }}" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">{{ translate('Color Code') }}</label>
                                <input type="text" placeholder="{{ translate('Color Code') }}" id="code" name="code"
                                    class="form-control" value="{{ old('code') }}" required>
                            </div>
                            <div class="form-group mb-3 text-right">
                                <button type="submit" class="btn btn-primary">{{ translate('Save') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="mb-0 h6">{{translate('Color filter activation')}}</h3>
                    </div>
                    <div class="card-body text-center">
                        <label class="aiz-switch aiz-switch-success mb-0">
                            <input type="checkbox" onchange="updateSettings(this, 'color_filter_activation')" <?php if(get_setting('color_filter_activation') == 1) echo "checked";?>>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>
            </div>
        @endcan
    </div>


@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">
        function updateSettings(el, type){
            if($(el).is(':checked')){
                var value = 1;
            }
            else{
                var value = 0;
            }

            $.post('{{ route('business_settings.update.activation') }}', {_token:'{{ csrf_token() }}', type:type, value:value}, function(data){
                if(data == '1'){
                    AIZ.plugins.notify('success', '{{ translate('Settings updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', 'Something went wrong');
                }
            });
        }
    </script>
@endsection