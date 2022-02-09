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
    @include('partials.content-header', ['name'=>'Sliders','key'=>'List'])
    <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        @can('slider-list')
                        <a href="{{route('slider.create')}}" class="btn btn-success float-right m2" >ADD</a>
                        @endcan
                    </div>
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên SLider</th>
                                <th scope="col"> Description</th>
                                <th scope="col"> Hình ảnh</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($sliders as $slider)

                                <tr>
                                    <th scope="row">{{$slider->id}}</th>
                                    <td>{{$slider->name}}</td>
                                    <td>{{$slider->description}}</td>
                                    <td>
                                        <img class="image_slider"
                                             src="{{$slider->image_path}}" alt="">
                                    </td>
                                    <td>
                                        @can('slider-edit')
                                        <a href="{{route('slider.edit', ['id' => $slider->id])}}" class="btn btn-default">Edit</a>
                                        @endcan

                                        @can('slider-delete')
                                        <a href=""
                                           data-url="{{route('slider.delete', ['id' => $slider->id])}}"
                                           class="btn btn-danger action_delete">Delete</a>
                                            @endcan
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6">
                        {{ $sliders->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-wrapper -->
@endsection



