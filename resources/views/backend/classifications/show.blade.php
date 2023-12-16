@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <h5 class="mb-0 h6">عرض عملاء التصنيف </h5>
</div>

<div class="col-lg-12 mx-auto">
   <div class="row">
       <div class="card-body">
           <table class="table aiz-table mb-0">
               <thead>
               <tr>
                   <!--<th data-breakpoints="lg">#</th>-->
                   <th>
                       <div class="form-group">
                           <div class="aiz-checkbox-inline">
                               <label class="aiz-checkbox">
                                   <input type="checkbox" class="check-all">
                                   <span class="aiz-square-check"></span>
                               </label>
                           </div>
                       </div>
                   </th>
                   <th>{{translate('Name')}}</th>
                   <th data-breakpoints="lg">{{translate('Email Address')}}</th>
                   <th data-breakpoints="lg">{{translate('Phone')}}</th>
                   <th data-breakpoints="lg">{{translate('عدد الطلبات')}}</th>
                   <th data-breakpoints="lg">{{translate('حجم الإنفاق')}}</th>
                   <th class="text-right">{{translate('Options')}}</th>
               </tr>
               </thead>
               <tbody>
       @foreach($classification->users as $key =>$class)
           @php($user = $class->user)
           @if ($user != null)
               <tr>
               <!--<td>{{ ($key+1)  }}</td>-->
                   <td>
                       <div class="form-group">
                           <div class="aiz-checkbox-inline">
                               <label class="aiz-checkbox">
                                   <input type="checkbox" class="check-one" name="id[]" value="{{$user->id}}">
                                   <span class="aiz-square-check"></span>
                               </label>
                           </div>
                       </div>
                   </td>
                   <td>@if($user->banned == 1) <i class="fa fa-ban text-danger" aria-hidden="true"></i> @endif {{$user->name}}</td>
                   <td>{{$user->email}}</td>
                   <td>{{$user->phone ?? "لا يوجد "}}</td>
                   <td>
                       {{ $user->orders_count}} طلب
                   </td>
                   <td>{{single_price($user->orders_sum_grand_total)}}</td>
                   <td class="text-right">

                       @can('login_as_customer')
                           <a href="{{route('customers.login', encrypt($user->id))}}" class="btn btn-soft-primary btn-circle btn-sm" title="{{ translate('Log in as this Customer') }}">
                               <i class="la la-sign-in"></i>
                               تسجيل الدخول بهذا العميل
                           </a>
                       @endcan
                       @can('ban_customer')
                           @if($user->banned != 1)
                               <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm" onclick="confirm_ban('{{route('customers.ban', encrypt($user->id))}}');" title="{{ translate('Ban this Customer') }}">
                                   <i class="las la-user-slash"></i>
                               </a>
                           @else
                               <a href="#" class="btn btn-soft-success btn-icon btn-circle btn-sm" onclick="confirm_unban('{{route('customers.ban', encrypt($user->id))}}');" title="{{ translate('Unban this Customer') }}">
                                   <i class="las la-user-check"></i>
                               </a>
                           @endif
                       @endcan
                       <a  class="btn btn-soft-warning btn-icon btn-circle btn-sm " href="{{route('customers.edit', $user->id)}}">
                           <i class="las la-edit"></i>
                       </a>
                       @can('delete_customer')
                           <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('customers.destroy', $user->id)}}" title="{{ translate('Delete') }}">
                               <i class="las la-trash"></i>
                           </a>
                       @endcan
                       <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirms-delete" id="{{$user->id}}" title="أضافة إلى تصنيفات">
                           <i class="las la-plus"></i>
                       </a>

                   </td>
               </tr>
           @endif
       @endforeach
               </tbody>
           </table>
           <div class="aiz-pagination">
           </div>
       </div>
   </div>
</div>

@endsection
