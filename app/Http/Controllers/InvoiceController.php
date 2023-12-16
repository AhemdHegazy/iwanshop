<?php

namespace App\Http\Controllers;

use App\Models\Currency;
use App\Models\Language;
use App\Models\Order;
use Session;
use PDF;
use Config;

class InvoiceController extends Controller
{
    //download invoice
    public function invoice_download_image($id){
        $currency_code = Currency::findOrFail(get_setting('system_default_currency'))->code;


        $direction = 'rtl';
        $text_align = 'right';
        $not_text_align = 'left';

        // general for all
        $font_family = "'Cairo'";


        $config = [];
        Session::put('currency_symbol',"د.ع  ");
        $order = Order::findOrFail($id);
        return view('backend.invoices.image', [
            'order' => $order,
            'font_family' => $font_family,
            'direction' => $direction,
            'text_align' => $text_align,
            'not_text_align' => $not_text_align,
            "name"  => 'الطلب -' . $order->code .'-فاتورة'. '.pdf'
        ]);

    }
    public function invoice_download($id)
    {

        $currency_code = Currency::findOrFail(get_setting('system_default_currency'))->code;


        $direction = 'rtl';
        $text_align = 'right';
        $not_text_align = 'left';

        // general for all
        $font_family = "'Cairo'";


        $config = [];

        $order = Order::findOrFail($id);
        $pdf = PDF::loadView('backend.invoices.invoice', [
            'order' => $order,
            'font_family' => $font_family,
            'direction' => $direction,
            'text_align' => $text_align,
            'not_text_align' => $not_text_align
        ]);
        Session::put('currency_symbol',"د.ع  ");
        $pdf->autoScriptToLang = true;
        $pdf->baseScript = 1;
        $pdf->allow_charset_conversion = false;

        $pdf->useAdobeCJK = true;
        $pdf->autoVietnamese = true;
        $pdf->autoArabic = true;
        $pdf->autoLangToFont = true;
        $pdf->img_dpi = 96;
        $pdf->showImageErrors = true;

        return $pdf->stream('الطلب -' . $order->code .'-فاتورة'. '.pdf');
    }
}
