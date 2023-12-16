<?php

namespace App\Utility;

use App\Models\Currency;
use App\Models\Language;
use Config;
use Session;

class FontUtility
{
    public static function get_font_family()
    {
        $pdf_style_data = array();
        $currency_code = Currency::findOrFail(get_setting('system_default_currency'))->code;


        $direction = 'rtl';
        $text_align = 'right';
        $not_text_align = 'left';

        $font_family = "'arnamu','sans-serif'";

        $pdf_style_data['font_family'] = $font_family;
        $pdf_style_data['direction'] = $direction;
        $pdf_style_data['text_align'] = $text_align;
        $pdf_style_data['not_text_align'] = $not_text_align;
        return $pdf_style_data;
    }
}
