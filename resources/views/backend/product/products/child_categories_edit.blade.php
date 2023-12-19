@php
    $value = null;
    for ($i=0; $i < $child_category->level; $i++){
        $value .= '_';
    }
@endphp
<option id="{{ $childCategory->id }}" {{in_array($childCategory->id,$array ?? []) ? "selected" : ""}} value="{{ $childCategory->id }}">{{ $value." " }}{{ $childCategory->name }}</option>
@if ($child_category->childrenCategories)
    @foreach ($child_category->childrenCategories as $childCategory)
        @include('backend.product.products.child_categories_edit', ['child_category' => $childCategory,"array" => $array])
    @endforeach
@endif
