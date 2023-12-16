<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{  translate('INVOICE') }}</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
    <style media="all">

        @page {
            margin: 0;
            padding:0;
        }
        body{
            font-size: 0.875rem;
            font-family: '<?php echo  $font_family ?>';
            font-weight: normal;
            direction: <?php echo  $direction ?>;
            text-align: <?php echo  $text_align ?>;
            padding:0;
            margin:0;
        }
        .gry-color *,
        .gry-color{
            color:#000;
            padding: 5px;
            border-color: transparent;
        }
        table{
            width: 100%;
        }
        table th{
            font-weight: normal;
        }
        table.padding th{
            padding: .25rem .7rem;
        }
        table.padding td{
            padding: .25rem .7rem;
        }
        table.sm-padding td{
            padding: .1rem .7rem;
        }
        .border-bottom td,
        .border-bottom th{
            border-bottom:1px solid #eceff4;
        }
        th td,tr td,table,tr{
            border: 0;
        }
        .text-left{
            text-align:<?php echo  $text_align ?>;
        }
        .text-right{
            text-align:<?php echo  $not_text_align ?>;
        }
        @page {
            header: page-header;
            footer: page-footer;
        }
    </style>
</head>
<body>
<div>

    @php
        $logo = get_setting('header_logo');
    @endphp

    <div>
        <table class="text-right sm-padding small strong">
            <thead>
            <tr>
                <th width="67%"></th>
                <th width="33%"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="text-left">
                    <img src="{{asset("assets/Sala/bill.png")}}" height="50" alt="">
                </td>
                <td>
                    <table class="text-left sm-padding small strong">
                        <tbody>
                        <tr>
                            <th class="gry-color text-left"> <span style="color: #19a09c">رقم الطـلب : </span>{{ $order->code }}</th>
                        </tr>
                        <tr>
                            <th class="gry-color text-left" > <span style="color: #19a09c">تاريخ الطلب : </span>{{ date('d-m-Y', $order->date) }}</th>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <div style="padding: 1rem;padding-bottom: 0">
        <table class="text-right sm-padding small strong" style="background: #19a09c;padding: 15px">
            <thead>
            <tr>
                <th width="85%"></th>
                <th width="15%"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="text-left">
                    <table>
                        @php
                            $shipping_address = json_decode($order->shipping_address);
                        @endphp

                        @if(isset(json_decode($order->shipping_address)->state))

                            <tr><td class="gry-color small" style="font-size: 18px;color: #fff"><span style="font-weight: bold;font-size: 24px;">{{ $shipping_address->city }} </span>, {{ json_decode($order->shipping_address)->state }} - @endif {{ $shipping_address->postal_code }},{{ $shipping_address->address }}</td></tr>
                            <tr><td class="strong" style="color: #fff;font-size: 18px">{{ $shipping_address->phone }}</td></tr>
                            <tr><td class="strong" style="color: #fff;font-size: 18px">السيد / {{ $shipping_address->name }}</td></tr>
                    </table>

                </td>
                <td style="border: 5px solid #fff;background: #fff">
                    @php
                        $removedXML = '<?xml version="1.0" encoding="UTF-8"?>';
                    @endphp
                    <div  >
                        {!! str_replace($removedXML,"", QrCode::size(120)->generate($order->code)) !!}
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <div style="padding: 1rem;">
        <table class="padding text-left small border-bottom" style="border: 0 !important;">
            <thead>

            </thead>
            <tbody class="strong" style="border-color:#999999 !important;">
            <tr class="gry-color" style="background: #999999;border-color:#999999 !important;padding: 15px !important;height: 45px;margin: 10px">
                <td class="text-left" style="color: #fff;padding: 5px;border-color:#999999  !important;margin:  5px">ت</td>
                <td class="text-left" style="color: #fff;padding: 5px;border-color:#999999  !important;margin:  5px"></td>
                <td class="text-left" style="color: #fff;padding: 5px;border-right-color:#999999  !important;margin:  5px">التفاصيل</td>
                <td class="text-left" style="color: #fff;padding: 5px;border-left-color:#999999  !important;margin:  5px">العدد</td>
                <td class="text-left" style="color: #fff;padding: 5px;border-right-color:#999999  !important;margin:  5px">السعر</td>
                <td class="text-left" style="color: #fff;padding: 5px;border-left-color:#999999  !important;margin:  5px">المجموع</td>
            </tr>
            @foreach ($order->orderDetails as $key => $orderDetail)
                @if ($orderDetail->product != null)
                    <tr class="">
                        <td>
                            {{$loop->iteration}}
                        </td>
                        <td>
                            <img height="75" style="border: 1px solid #ddd;padding: 10px" src="{{ uploaded_asset($orderDetail->product->thumbnail_img) }}">
                        </td>
                        <td>
                            {{ $orderDetail->product->name }}
                            @if($orderDetail->variation != null) ({{ $orderDetail->variation }}) @endif
                            <br>
                            <small style="padding-top: 5px">
                                @php
                                    $product_stock = json_decode($orderDetail->product->stocks->first(), true);
                                @endphp
                                {{translate('SKU')}}: {{ $product_stock['sku'] }}
                            </small>
                        </td>
                        {{--								<td>--}}
                        {{--									@if ($order->shipping_type != null && $order->shipping_type == 'home_delivery')--}}
                        {{--										{{ translate('Home Delivery') }}--}}
                        {{--									@elseif ($order->shipping_type == 'pickup_point')--}}
                        {{--										@if ($order->pickup_point != null)--}}
                        {{--											{{ $order->pickup_point->name }} ({{ translate('Pickip Point') }})--}}
                        {{--										@else--}}
                        {{--                                            {{ translate('Pickup Point') }}--}}
                        {{--										@endif--}}
                        {{--									@elseif ($order->shipping_type == 'carrier')--}}
                        {{--										@if ($order->carrier != null)--}}
                        {{--											{{ $order->carrier->name }} ({{ translate('Carrier') }})--}}
                        {{--											<br>--}}
                        {{--											{{ translate('Transit Time').' - '.$order->carrier->transit_time }}--}}
                        {{--										@else--}}
                        {{--											{{ translate('Carrier') }}--}}
                        {{--										@endif--}}
                        {{--									@endif--}}
                        {{--								</td>--}}
                        <td class=""><div style="width: 40px !important;padding:15px;height: 40px;color: #0c5460;border: 1px solid #ddd;border-radius: 50%;font-size: 19px;font-weight: bold">
                                {{ $orderDetail->quantity }}
                            </div></td>
                        <td class="currency">{{ single_price($orderDetail->price/$orderDetail->quantity) }}
                        </td>
                        <td class="text-right currency">
                            <small style="color: #0c5460">{{ $orderDetail->quantity }} X {{ single_price($orderDetail->price/$orderDetail->quantity) }}</small><br>{{ single_price($orderDetail->price+$orderDetail->tax) }}</td>
                    </tr>
                @endif
            @endforeach
            </tbody>
        </table>
    </div>

    <div style="padding: 1.5rem;">
        <table class="text-right sm-padding small strong">
            <thead>
            <tr>
                <th width="50%"></th>
                <th width="50%"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="text-left">

                </td>
                <td>
                    <table class="text-right sm-padding small strong">
                        <tbody>
                        <tr>
                            <th class="gry-color text-left">المبلغ الكلي للمنتجات</th>
                            <td class="currency">{{ single_price($order->orderDetails->sum('price')) }}</td>
                        </tr>

                        <tr class="border-bottom">
                            <th class="gry-color text-left">{{ translate('Total Tax') }}</th>
                            <td class="currency">{{ single_price($order->orderDetails->sum('tax')) }}</td>
                        </tr>
                        <tr class="border-bottom">
                            <th class="gry-color text-left"  style="color: #a80101">الخصم</th>
                            <td class="currency" style="color: #a80101">{{ single_price($order->coupon_discount) }}</td>
                        </tr>
                        <tr>
                            <th class="gry-color text-left">كلفة التوصيل</th>
                            <td class="currency">{{ single_price($order->orderDetails->sum('shipping_cost')) }}</td>
                        </tr>
                        <tr>
                            <th class="text-left strong" style="font-weight: bold;color: #19a09c">المبلغ المطلوب للدفع </th>
                            <td class="currency" style="font-family: 'cairo';color: #19a09c">{{ single_price($order->grand_total) }}</td>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <div>
        <table class="text-right sm-padding small strong">
            <thead>
            <tr>
                <th width="2%"></th>
                <th width="48%"></th>
                <th width="2%"></th>
                <th width="48%"></th>
                <th width="2%"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td width=""></td>
                <td class="text-left border-bottom" style="color: #19a09c;font-size: 18px;font-weight: bold;border-bottom: 1px solid #ddd">
                    توقيع الزبون
                </td>
                <td width=""></td>
                <td class="text-left " style="color: #19a09c;font-size: 18px;font-weight: bold;border-bottom: 1px solid #ddd">
                    ملاحظات التاجر

                </td>
                <td width=""></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td class="text-left">
                         <span style="font-size: 15px;color: #333">
                            {{$order->additional_info ?? "لا يوجد "}}
                        </span>
                </td>
                <td></td>
            </tr>

            </tbody>
        </table>
    </div>
</div>
<htmlpagefooter name="page-footer" >
    <img src="{{asset("assets/Sala/footer.png")}}" style="width: 100%" alt="">
</htmlpagefooter>

</body>
</html>
