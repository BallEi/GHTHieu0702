@extends('layouts.admin')

@section('title')
    <title> Add Product</title>
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

    @include('partials.content-header', ['name'=>'product','key'=>'Add'])
    <!-- /.content-header -->
{{--    <div class="col-md-12">--}}
{{--        @if ($errors->any())--}}
{{--            <div class="alert alert-danger">--}}
{{--                <ul>--}}
{{--                    @foreach ($errors->all() as $error)--}}
{{--                        <li>{{ $error }}</li>--}}
{{--                    @endforeach--}}
{{--                </ul>--}}
{{--            </div>--}}
{{--        @endif--}}
{{--    </div>--}}
        <!-- Main content -->
        <form action="{{ route('product.store') }}" method="post" enctype="multipart/form-data">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-7">

                            @csrf
                            <div class="form-group">
                                <label >Tên sản phẩm</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                       placeholder="Nhập tên sản phẩm"
                                       value="{{ old('name') }}">
                                @error('name')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label >Giá sản phẩm</label>
                                <input type="text" class="form-control @error('price') is-invalid @enderror" name="price"
                                       placeholder="Nhập giá sản phẩm"
                                       value="{{ old('price') }}">
                                @error('price')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label >Ảnh đại diện</label>
                                <input type="file" class="form-control-file"
                                       name="feature_image_path">
                            </div>
                            <div class="form-group">
                                <label >Ảnh chi tiết</label>
                                <input type="file" class="form-control-file"
                                       multiple="multiple"
                                       name="image_path[]">
                            </div>
                            <div class="form-group">
                                <label>Chọn danh mục </label>
                                <select class="form-control select2_unit @error('category_id') is-invalid @enderror" name="category_id">
                                    <option value="">Chọn danh mục</option>
                                    {!! $htmlOption !!}
                                </select>
                                @error('category_id')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Nhập Tags </label>
                                <select name="tags[]" class="form-control tags_select" multiple="multiple">

                                </select>
                            </div>




                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Nhập mô tả</label>
                            <textarea name="contents"
                                      class="form-control tinymce_edit
                                      @error('contents') is-invalid @enderror " rows="15">
                                      {{ old('contents') }}
                            </textarea>
                            @error('contents')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
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

