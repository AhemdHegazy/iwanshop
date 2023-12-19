@extends('backend.layouts.app')

@section('content')
<div class="aiz-titlebar text-left mt-2 mb-3">
	<div class="row align-items-center">
		<div class="col-md-6">
			<h1 class="h3">{{translate('Upload New File')}}</h1>
		</div>
		<div class="col-md-6 text-md-right">
			<a href="{{ route('uploaded-files.index') }}" class="btn btn-link text-reset">
				<i class="las la-angle-left"></i>
				<span>{{translate('Back to uploaded files')}}</span>
			</a>
		</div>
	</div>
</div>
<div class="card">
    <div class="card-header">
        <h5 class="mb-0 h6">{{translate('Drag & drop your files')}}</h5>
    </div>
    <div class="card-body">

        <div class="form-group ">

                <label class="aiz-switch aiz-switch-success mb-0">
                    <input type="checkbox" {{session("watermark") == "yes" ? "checked" : ""}} name="watermark" id="watermark">
                    <span></span>
                </label>
            <label class=" col-from-label" style="font-size: 14px">{{translate("Enable Watermark in this image")}}</label>

        </div>
    	<div id="aiz-upload-files" class="h-420px" style="min-height: 65vh">

    	</div>
    </div>
</div>
@endsection

@section('script')
	<script type="text/javascript">
		$(document).ready(function() {
			AIZ.plugins.aizUppy();
		});

	</script>
@endsection
