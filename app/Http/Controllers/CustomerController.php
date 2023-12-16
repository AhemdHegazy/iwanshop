<?php

namespace App\Http\Controllers;

use App\Models\Classification;
use App\Models\UserClassification;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class CustomerController extends Controller
{
    public function __construct() {
        // Staff Permission Check
        $this->middleware(['permission:view_all_customers'])->only('index');
        $this->middleware(['permission:login_as_customer'])->only('login');
        $this->middleware(['permission:ban_customer'])->only('ban');
        $this->middleware(['permission:delete_customer'])->only('destroy');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort_search = null;
        $users = User::withCount("orders")->withSum("orders","grand_total",function ($query) {
            $query->where('payment_status', 'paid');
         })->where('user_type', 'customer')->where('email_verified_at', '!=', null)->orderBy('created_at', 'desc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $users->where(function ($q) use ($sort_search){
                $q->where('name', 'like', '%'.$sort_search.'%')->orWhere('email', 'like', '%'.$sort_search.'%');
            });
        }
        $users = $users->paginate(15);
        $classifications = Classification::all();
        return view('backend.customer.customers.index', compact('users', 'sort_search','classifications'));
    }



    public function create()
    {
        return view('backend.customer.customers.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        /*Phone Code ***/
        $request->validate([
            'name'                   => 'required',
            'email'                  => 'required',
            'phone' =>          'regex:/^7[3-9]\d{8}$/',

            'password' => 'required|string|min:6|confirmed',
        ]);


        $request->merge([
            "user_type"     => "customer",
            "email_verified_at" => now(),
            "password"  =>  Hash::make($request->password)

        ]);
        $data = $request->all();
        $user = User::create($data);
        flash(translate('تم إنشاء العميل بنجاح'))->success();
        return redirect()->route('customers.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('backend.customer.customers.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $delivery_boy = User::findOrFail($id);

        $array=[
            'name'                   => 'required',
            'email'                  => 'required',
            'phone' =>          'regex:/^7[3-9]\d{8}$/',
        ];

        $password =$delivery_boy->password;
        if ($request->has("password") && $request->password != null){
            $array=[
                'name'                   => 'required',
                'email'                  => 'required',
                'phone' =>          'regex:/^07[3-9]\d{8}$/',
                'password' => 'string|min:6|confirmed',
            ];
            $password= Hash::make($request->password);
        }
        $request->validate($array);
        $delivery_boy->name      = $request->name;
        $delivery_boy->email     = $request->email;
        $delivery_boy->phone     = $request->phone;
        $delivery_boy->password     =  $password;
        $delivery_boy->user_type = "customer";

        $delivery_boy->save();

        flash(translate('Customer has been updated successfully'))->success();
        return redirect()->route('customers.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $customer = User::findOrFail($id);
        $customer->customer_products()->delete();

        User::destroy($id);
        flash(translate('تم حذف العميل بنجاح'))->success();
        return redirect()->route('customers.index');
    }

    public function classifications(Request $request)
    {
        $customer = User::findOrFail($request->customer_id);
        $customer->classifications()->delete();
        foreach ($request->classifications ?? [] as $item) {
            UserClassification::create([
                "user_id"   => $customer->id,
                "classification_id"   => $item,
            ]);
        }
        flash(translate('تم   أضافة التصنيفات'))->success();
        return redirect()->route('customers.index');
    }

    public function bulk_customer_delete(Request $request) {
        if($request->id) {
            foreach ($request->id as $customer_id) {
                $customer = User::findOrFail($customer_id);
                $customer->customer_products()->delete();
                $this->destroy($customer_id);
            }
        }

        return 1;
    }

    public function login($id)
    {
        $user = User::findOrFail(decrypt($id));
        session()->put("admin_id",auth()->id());
        auth()->login($user, true);

        return redirect()->route('dashboard');
    }

    public function ban($id) {
        $user = User::findOrFail(decrypt($id));

        if($user->banned == 1) {
            $user->banned = 0;
            flash(translate('Customer UnBanned Successfully'))->success();
        } else {
            $user->banned = 1;
            flash(translate('Customer Banned Successfully'))->success();
        }

        $user->save();

        return back();
    }
}
