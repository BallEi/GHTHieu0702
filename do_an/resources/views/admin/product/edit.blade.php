@extends('layouts.admin')

@section('title')
    <title> Add Product</title>
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('admins/product/index/list.css') }}" >
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

    @include('partials.content-header', ['name'=>'product','key'=>'Edit'])
    <!-- /.content-header -->

        <!-- Main content -->
        <form action="{{ route('product.update', ['id' => $product->id]) }}" method="post" enctype="multipart/form-data">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7">

                            @csrf
                            <div class="form-group">
                                <label >Tên sản phẩm</label>
                                <input type="text" class="form-control " name="name"
                                       placeholder="Nhập tên sản phẩm"
                                       value="{{$product->name}}">
                            </div>
                            <div class="form-group">
                                <label >Giá sản phẩm</label>
                                <input type="text" class="form-control" name="price"
                                       placeholder="Nhập giá sản phẩm"
                                       value="{{$product->price}}"
                                        >
                            </div>
                            <div class="form-group ">
                                <label >Ảnh đại diện</label>
                                <input type="file" class="form-control-file"
                                       name="feature_image_path">
                                <div class="col-md-12">
                                    <div class="row">
                                        <img class="image_product" src="{{ $product->feature_image_path }}" alt="Img">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label >Ảnh chi tiết</label>
                                <input type="file" class="form-control-file"
                                       multiple="multiple"
                                       name="image_path[]">
                                <div class="col-md-12">
                                    <div class="row">
                                        @foreach($product->productImages as $productImageItem)
                                        <div class="col-md-4">
                                            <img class="image_detail_product" src="{{$productImageItem->image_path}}" alt="">
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Chọn danh mục </label>
                                <select class="form-control select2_unit" name="category_id">
                                    <option value="">Chọn danh mục</option>
                                    {!! $htmlOption !!}
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Nhập Tags </label>
                                <select name="tags[]" class="form-control tags_select" multiple="multiple">
                                    @foreach($product->tags as $tagItem)
                                    <option value="{{ $tagItem->name }}"
                                            selected
                                    >
                                            {{$tagItem->name}}
                                    </option>
                                    @endforeach
                                </select>
                            </div>




                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Nhập mô tả</label>
                            <textarea name="contents" class="form-control tinymce_edit " rows="15" >{{$product->content}}"</textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
        </form>
    </div>
    <!-- /.content-wrapper -->
@endsection

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        $(function (){
            $ ( ".tags_select" ). select2 ({
                tags : true ,
                tokenSeparators : [ ',' ] })

        });
        $(function (){
            $ ( ".select2_unit" ). select2 ({
                placeholder: "Chọn danh mục",
                allowClear: true })

        })

    </script>
    <script>
        let editor_config = {
            path_absolute : "/",
            selector: 'textarea.tinymce_edit',
            relative_urls: false,
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table directionality",
                "emoticons template paste textpattern"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
            file_picker_callback : function(callback, value, meta) {
                let x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
                let y = window.innerHeight|| document.documentElement.clientHeight|| document.getElementsByTagName('body')[0].clientHeight;

                var cmsURL = editor_config.path_absolute + 'filemanager?editor=' + meta.fieldname;
                if (meta.filetype == 'image') {
                    cmsURL = cmsURL + "&type=Images";
                } else {
                    cmsURL = cmsURL + "&type=Files";
                }

                tinyMCE.activeEditor.windowManager.openUrl({
                    url : cmsURL,
                    title : 'Filemanager',
                    width : x * 0.8,
                    height : y * 0.8,
                    resizable : "yes",
                    close_previous : "no",
                    onMessage: (api, message) => {
                        callback(message.content);
                    }
                });
            }
        };

        tinymce.init(editor_config);
    </script>
@endsection

