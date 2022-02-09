@extends('layouts.admin')

@section('title')
    <title>Add Product</title>
@endsection
@section('css')
  <link rel="stylesheet" href="{{ asset('admins/product/index/list.css') }}" >
@endsection
@section('js')
    <script src="{{asset('vender/sweetAlert/sweetalert2@11.js')}}"></script>
    <script src="{{ asset('admins/product/index/list.js')}}"></script>
@endsection
@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name'=>'product','key'=>'List'])
    <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        @can('product-list')
                        <a href="{{route('product.create')}}" class="btn btn-success float-right m2" >ADD</a>
                        @endcan
                    </div>
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($products as $productsItem)

                                <tr>
                                    <th scope="row">{{ $productsItem->id }}</th>
                                    <td>{{ $productsItem -> name }}</td>
                                    <td>{{ number_format($productsItem->price)  }}</td>
                                    <td><img class="product_image" src="{{ $productsItem -> feature_image_path }}" alt=""></td></td>
                                    <td>{{ optional($productsItem->category)->name }}</td>
                                    <td>
                                        @can('product-edit')
                                        <a href="{{ route('product.edit', ['id'=> $productsItem->id]) }}" class="btn btn-default">Edit</a>
                                        @endcan

                                        @can('product-delete')
                                        <a
                                            href=""
                                            data-url="{{route('product.delete', ['id' => $productsItem->id])}}"
                                            class="btn btn-danger action_delete">Delete</a>
                                            @endcan
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-12">
                        {{ $products -> links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-wrapper -->
@endsection



