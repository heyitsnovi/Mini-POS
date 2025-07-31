<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Carbon\Carbon;
use Illuminate\Support\Facades\File;

class SettingsController extends Controller
{
    public function settingsPage(){

   $jsonPath = base_path('store-settings.json');

    // Check if the file exists
    if (File::exists($jsonPath)) {
        // Read and decode the JSON file
        $data = json_decode(File::get($jsonPath), true);
    } else {
        // If file doesn't exist, use default empty values
        $data = [
            'store_name' => '',
            'contact_number' => '',
            'address' => '',
            'currency_sign'=>"₱",
            'theme' => 'skin-green', // Default theme if not set
        ];
    }


    return view('settings.index', compact('data'));

    }

    public function saveStoreSettings(Request $request){

    $validator = Validator::make($request->all(), [
        'storeName'      => 'required|string|max:255',
        'contactNumber'  => 'required|string|max:20',
        'address'        => 'required|string|max:500',
         'theme'          => 'required|string|in:skin-green,skin-blue,skin-black,skin-red,skin-purple,skin-yellow',
        'currency_symbol'        => 'max:1',
    ]);

    if ($validator->fails()) {
       
        return redirect()->back()
                         ->withErrors($validator)
                         ->withInput();
    }


    $data = [
        'store_name'     => $request->input('storeName'),
        'contact_number' => $request->input('contactNumber'),
        'address'        => $request->input('address'),
         'theme'          => $request->input('theme'),
         'currency_sign'=>$request->input('currency_symbol')
    ];

    $filePath = base_path('store-settings.json');

    File::put($filePath, json_encode($data, JSON_PRETTY_PRINT));

    return redirect()->back()->with('success', 'Store settings saved successfully.');

    }
}
