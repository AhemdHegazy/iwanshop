<option value="0">{{ translate('No Parent') }}</option>
@foreach ($categories as $category)
    <option value="{{ $category->id }}">{{ $category->name }}</option>
    @if(isset($id))

        @foreach ($category->childrenCategories()->where("id","<>",$id)->get() as $childCategory)
            @if(isset($id))
                @include('categories.child_category', ['child_category' => $childCategory,"id" => $id])
            @endif
        @endforeach
    @else
        @foreach ($category->childrenCategories()->get() as $childCategory)
            @include('categories.child_category', ['child_category' => $childCategory,"id" => 0])
        @endforeach
    @endif

@endforeach
