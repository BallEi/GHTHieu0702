@extends('layouts.admin')

@section('title')
    <title>Trang Chủ</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('admins\slider\index\index.css')}}">
@endsection
@section('js')
    <script src="{{asset('vender/sweetAlert/sweetalert2@11.js')}}"></script>
    <script src="{{ asset('admins/slider/index/index.js')}}"></script>
@endsection
@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name'=>'Roles','key'=>'List'])
    <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        @can('role-add')
                        <a href="{{route('roles.create')}}" class="btn btn-success float-right m2" >ADD</a>
                        @endcan
                    </div>
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên Vai trò</th>
                                <th scope="col"> Mô tả </th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($roles as $role)

                                <tr>
                                    <th scope="row">{{$role->id}}</th>
                                    <td>{{$role->name}}</td>
                                    <td>{{$role->display_name}}</td>
                                    <td>
                                        @can('role-edit')
                                        <a href="{{route('roles.edit',['id' => $role->id])}}" class="btn btn-default">Edit</a>
                                        @endcan

                                        @can('role-delete')
                                        <a href=""
                                           data-url="{{route('roles.delete', ['id' => $role->id])}}"
                                           class="btn btn-danger action_delete">Delete</a>
                                            @endcan
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6">
                        {{ $roles->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-wrapper -->
@endsection



