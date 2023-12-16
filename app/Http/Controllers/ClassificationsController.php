<?php

namespace App\Http\Controllers;

use App\Models\UserClassification;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Classification;
use App\Models\Product;
use Illuminate\Support\Str;

class ClassificationsController extends Controller
{
    public function __construct() {
        // Staff Permission Check
      /*  $this->middleware(['permission:view_all_classifications'])->only('index');
        $this->middleware(['permission:add_classification'])->only('create');
        $this->middleware(['permission:edit_classification'])->only('edit');
        $this->middleware(['permission:delete_classification'])->only('destroy');*/
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort_search =null;
        $classifications = Classification::orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $classifications = $classifications->where('name', 'like', '%'.$sort_search.'%');
        }
        $classifications = $classifications->paginate(15);
        return view('backend.classifications.index', compact('classifications', 'sort_search'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $classification = new Classification;
        $classification->name = $request->name;
        $classification->related = $request->related;
        $classification->max = $request->related == "orders_count" || $request->related == "orders_sum_grand_total" ? $request->max : null;
        $classification->min = $request->related == "orders_count" || $request->related == "orders_sum_grand_total" ? $request->min : null;
        $classification->category_id = $request->related == "category" ? $request->category_id : null;
        $classification->badge_id = $request->related == "badge" ? $request->badge_id : null;
        $classification->description = $request->description;
        $classification->logo = $request->logo;
        $classification->save();

        flash(translate('تم أدخال التصنيف بنجاح'))->success();
        return redirect()->route('classifications.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getUser($id){
        $data='';
        $user= User::with("classifications")->find($id);
        foreach (Classification::all() as $item) {
            $select = $user->classifications()->where("classification_id",$item->id)->count() > 0 ? "selected" : "";
            $data.="<option value=$item->id $select>$item->name</option>";
        }
        return $data;
    }
    public function show($id)
    {
        $classification = Classification::with("users")->find($id);
        $sort_search = null;
        $users = User::whereHas("classifications",function ($q) use ($classification){
            $q->where("classification_id", $classification->id);
        })->withCount("orders")->withSum("orders","grand_total",function ($query) {
            $query->where('payment_status', 'paid');
        })->where('user_type', 'customer')->where('email_verified_at', '!=', null)->orderBy('created_at', 'desc');

        $users = $users->paginate(15);
        return view('backend.customer.customers.index_', compact('users', 'sort_search','classification'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $lang   = $request->lang;
        $classification  = Classification::findOrFail($id);
        return view('backend.classifications.edit', compact('classification','lang'));
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
        $classification = Classification::findOrFail($id);
        $classification->name = $request->name;
        $classification->related = $request->related;
        $classification->max = $request->related == "orders_count" || $request->related == "orders_sum_grand_total" ? $request->max : null;
        $classification->min = $request->related == "orders_count" || $request->related == "orders_sum_grand_total" ? $request->min : null;
        $classification->category_id = $request->related == "category" ? $request->category_id : null;
        $classification->badge_id = $request->related == "badge" ? $request->badge_id : null;
        $classification->description = $request->description;
        $classification->logo = $request->logo;
        $classification->save();

        flash(translate('تم تعديل التصنيف بنجاح'))->success();
        return back();

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $classification = Classification::findOrFail($id);
        UserClassification::where('classification_id', $classification->id)->delete();
        Classification::destroy($id);

        flash(translate('تم حذف التصنيف بنجاح'))->success();
        return redirect()->route('classifications.index');

    }
}
