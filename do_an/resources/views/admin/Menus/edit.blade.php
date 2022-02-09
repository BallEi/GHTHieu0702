@extends('layouts.admin')

@section('title')
    <title>Trang Chủ</title>


@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name'=>'menus','key'=>'Edit'])
    <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7">
                        <form action="{{route('menus.update', ['id' => $menuFollowIdEdit->id])}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label >Tên Menus</label>
                                <input type="text" class="form-control" name="name"
                                       value="{{ $menuFollowIdEdit->name }}"
                                       placeholder="Nhập tên danh mục">
                            </div>
                            <div class="form-group">
                                <label>Chọn menus cha</label>
                                <select class="form-control" name="parent_id">
                                    <option value="0">Chọn menus cha</option>
                                    {!! $optionSelect !!}
                                </select>
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



