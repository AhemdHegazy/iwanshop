<?php


return [
    'mode'                 => '',
    'format'               => 'A4',

    'orientation'          => 'P',
    'title'                => 'Romooz',
    'author'               => 'Romooz',
    'watermark'            => '',
    'show_watermark'       => false,
    'watermark_font'       => 'sans-serif',
    'display_mode'         => 'fullpage',
    'watermark_text_alpha' => 0.1,
    'custom_font_dir' => base_path('resources/fonts/'), // don't forget the trailing slash!
    'custom_font_data' => [
        'cairo' => [
            'R'  => 'ArbFONTS-riyad-bank-Regular.ttf',    // regular font
            'B'  => 'ArbFONTS-riyad-bank-Bold.ttf',       // optional: bold font
            'I'  => 'Cairo-Italic.ttf',     // optional: italic font
            'BI' => 'Cairo-BoldItalic.ttf', // optional: bold-italic font,
            'useOTL' => 0xFF,
            'useKashida' => 75,
        ]
        // ...add as many as you want.
    ],
    'auto_language_detection'  => true,
    'tempDir'               => base_path('temp/'),
];


