@extends('backend.layouts.app')

@section('content')

<div class="row">

    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{translate('System Default Currency')}}</h5>
            </div>
            <div class="card-body">
                <form class="form-horizontal" action="{{ route('your_currency.update') }}" method="POST">
                    @csrf
                    <div class="form-group row">
                        <div class="col-lg-12">

                            <div class="form-group row">
                                <label class="col-sm-2 col-from-label" for="name">إسم العملة</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="الإسم" id="name" value="{{  $active_currencies->name }}" name="name" class="form-control" required="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-from-label" for="symbol">رمز العملة</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="رمز" id="symbol" value="{{  $active_currencies->symbol }}" name="symbol" class="form-control" required="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-from-label" for="code">كود العملة</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="رمز" id="code" value="{{  $active_currencies->code }}" name="code" class="form-control" required="">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="exchange_rate" value="1">
                        <div class="col-lg-3">
                            <button class="btn btn-sm btn-primary" type="submit">{{translate('Save')}}</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{translate('Set Currency Formats')}}</h5>
            </div>
            <div class="card-body">
                <form class="form-horizontal" action="{{ route('business_settings.update') }}" method="POST">
                    @csrf
                    <div class="form-group row">
                        <input type="hidden" name="types[]" value="symbol_format">
                        <div class="col-lg-3">
                            <label class="control-label">{{translate('Symbol Format')}}</label>
                        </div>
                        <div class="col-lg-6">
                            <select class="form-control aiz-selectpicker" name="symbol_format">
                                <option value="1" @if(get_setting('symbol_format') == 1) selected @endif>[دينار عراقي][1,000]</option>
                                <option value="2" @if(get_setting('symbol_format') == 2) selected @endif>[1,000][دينار عراقي]</option>
                                <option value="3" @if(get_setting('symbol_format') == 3) selected @endif>[دينار عراقي] [1,000]</option>
                                <option value="4" @if(get_setting('symbol_format') == 4) selected @endif>[1,000] [دينار عراقي]</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <input type="hidden" name="types[]" value="decimal_separator">
                        <div class="col-lg-3">
                            <label class="control-label">{{translate('Decimal Separator')}}</label>
                        </div>
                        <div class="col-lg-6">
                            <select class="form-control aiz-selectpicker" name="decimal_separator">
                                <option value="1" @if(get_setting('decimal_separator') == 1) selected @endif>1,23,456.70</option>
                                <option value="2" @if(get_setting('decimal_separator') == 2) selected @endif>1.23.456,70</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <input type="hidden" name="types[]" value="no_of_decimals">
                        <div class="col-lg-3">
                            <label class="control-label">{{translate('No of decimals')}}</label>
                        </div>
                        <div class="col-lg-6">
                            <select class="form-control aiz-selectpicker" name="no_of_decimals">
                                <option value="0" @if(get_setting('no_of_decimals') == 0) selected @endif>12345</option>
                                <option value="1" @if(get_setting('no_of_decimals') == 1) selected @endif>1234.5</option>
                                <option value="2" @if(get_setting('no_of_decimals') == 2) selected @endif>123.45</option>
                                <option value="3" @if(get_setting('no_of_decimals') == 3) selected @endif>12.345</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-sm btn-primary">{{translate('Save')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection

@section('modal')

    <!-- Delete Modal -->
    @include('modals.delete_modal')

    <div class="modal fade" id="add_currency_modal">
        <div class="modal-dialog">
            <div class="modal-content" id="modal-content">

            </div>
        </div>
    </div>

    <div class="modal fade" id="currency_modal_edit">
        <div class="modal-dialog">
            <div class="modal-content" id="modal-content">

            </div>
        </div>
    </div>

@endsection

@section('script')
    <script type="text/javascript">

        function sort_currencies(el){
            $('#sort_currencies').submit();
        }

        function currency_modal(){
            $.get('{{ route('currency.create') }}',function(data){
                $('#modal-content').html(data);
                $('#add_currency_modal').modal('show');
            });
        }

        function update_currency_status(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }

            $.post('{{ route('currency.update_status') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Currency Status updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }

        function edit_currency_modal(id){
            $.post('{{ route('currency.edit') }}',{_token:'{{ @csrf_token() }}', id:id}, function(data){
                $('#currency_modal_edit .modal-content').html(data);
                $('#currency_modal_edit').modal('show', {backdrop: 'static'});
            });
        }
    </script>
@endsection
