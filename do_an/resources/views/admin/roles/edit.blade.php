@extends('layouts.admin')

@section('title')
    <title>Trang Chủ</title>
@endsection
@section('css')
    <style>
        .card-header {
            background-color: #3fc3ee;
        }
    </style>
@endsection
@section('js')
    <script>
        $('.checkbox_wraper').on('click', function (){
            $(this).parents('.card').find('.checkbox_child').prop('checked', $(this).prop('checked'));
        });
    </script>
@endsection

@section('content')

    <div class="content-wrapper">
    @include('partials.content-header', ['name'=>'Roles','key'=>'Edit'])

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <form action="{{route('roles.update', ['id' => $role->id ] )}}" method="post" enctype="multipart/form-data" style="width: 100%">
                     <div class="col-md-7">
                            @csrf
                            <div class="form-group">
                                <label >Tên Vai trò</label>
                                <input type="text"
                                       class="form-control "
                                       name="name"
                                       placeholder="Nhập vai trò"
                                       value="{{$role->name}}"
                                >
                            </div>
                            <div class="form-group">
                                <label >Mô tả</label>
                                <textarea name="display_name" class="form-control "
                                          rows="5"
                                >{{$role->display_name}}</textarea>
                            </div>
                     </div>
                     <div class="col-md-7">
                         <div class="row">
                             @foreach($permiissionParent as $permission)
                             <div class="card border-primary mb-3 col-md-12  ">
                                 <div class="card-header">
                                     <lable>
                                         <input type="checkbox" value="" class="checkbox_wraper">
                                     </lable>
                                     Module {{$permission->name}}
                                 </div>
                                 <div class="row">
                                     @foreach($permission->permissionChildren as $permissionItem)
                                         <div class="card-body col-md-3">
                                             <h5 class="card-title">
                                                 <lable>
                                                     <input type="checkbox" name="permission_id[]"
                                                            {{$permissionsCheked->contains('id',$permissionItem->id) ? 'checked' : ''}}
                                                            class="checkbox_child"
                                                            value="{{$permissionItem->id}}">
                                                 </lable>
                                                 {{$permissionItem->name}}
                                             </h5>
                                         </div>
                                     @endforeach
                                 </div>


                             </div>
                             @endforeach
                         </div>


                     </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                </div>

        </div>

    </div>

@endsection



