<?php

namespace App\Http\Controllers;

use App\Models\Classification;
use App\Models\UserClassification;
use Illuminate\Http\Request;
use App\Models\Badge;
use App\Models\Product;
use Illuminate\Support\Str;

class BadgesController extends Controller
{
    public function __construct() {
        // Staff Permission Check
       /* $this->middleware(['permission:view_all_badges'])->only('index');
        $this->middleware(['permission:add_badge'])->only('create');
        $this->middleware(['permission:edit_badge'])->only('edit');
        $this->middleware(['permission:delete_badge'])->only('destroy');*/
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort_search =null;
        $badges = Badge::orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $badges = $badges->where('name', 'like', '%'.$sort_search.'%');
        }
        $badges = $badges->paginate(15);
        return view('backend.badges.index', compact('badges', 'sort_search'));
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
        $badge = new Badge;
        $badge->name = $request->name;
        $badge->description = $request->description;
        $badge->logo = $request->logo;
        $badge->save();

        flash(translate('تم أنشاء البدج بنجاح'))->success();
        return redirect()->route('badges.index');

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
    public function edit(Request $request, $id)
    {
        $lang   = $request->lang;
        $badge  = Badge::findOrFail($id);
        return view('backend.badges.edit', compact('badge','lang'));
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
        $badge = Badge::findOrFail($id);
        $badge->name = $request->name;
        $badge->description = $request->description;
        $badge->logo = $request->logo;
        $badge->save();

        flash(translate('تم حفظ البادج بنجاح'))->success();
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
        $badge = Badge::findOrFail($id);
        Classification::where('badge_id', $badge->id)->update([
            "badge_id"  => null
        ]);
        Badge::destroy($id);

        flash(translate('تم حذف البادج بنجاح '))->success();
        return redirect()->route('badges.index');

    }
}
