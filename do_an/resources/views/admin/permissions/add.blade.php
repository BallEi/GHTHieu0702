@extends('layouts.admin')

@section('title')
    <title>Trang Chủ</title>


@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name'=>'Permission','key'=>'Add'])
    <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7">
                        <form action="{{route('permission.store')}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label>Chọn tên Module</label>
                                <select class="form-control" name="module_parent">
                                    <option value="">Chọn tên Module</option>
                                    @foreach(config('permissions.table_module') as $moduleItem)
                                    <option value="{{$moduleItem}}">{{$moduleItem}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    @foreach(config('permissions.module_childrent') as $moduleItemC)
                                    <div class="col-md-3">
                                        <lable for="">
                                            <input type="checkbox" name="child[]" value="{{ $moduleItemC }}">
                                            {{ $moduleItemC }}
                                        </lable>
                                    </div>
                                    @endforeach
                            </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>

                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection



