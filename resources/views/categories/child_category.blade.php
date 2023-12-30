@php
    $value = null;
    for ($i=0; $i < $child_category->level; $i++){
        $value .= '--';
    }
@endphp
<option value="{{ $child_category->id }}">{{ $value." ".$child_category->name }}</option>
@if ($child_category->categories)
    @if(isset($id))
        @foreach ($child_category->categories()->where("id","<>",$id)->get() as $childCategory)
            @include('categories.child_category', ['child_category' => $childCategory])
        @endforeach
    @else
        @foreach ($child_category->categories as $childCategory)
            @include('categories.child_category', ['child_category' => $childCategory])
        @endforeach
    @endif
@endif
