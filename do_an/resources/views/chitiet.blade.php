@extends('User.layouts.master')

@section('title')
    <title>Chi-Tiet</title>
@endsection
@section('css')

@endsection



@section('content')
    <section class="product">
        <div class="container">
            <div class="product-top row">
                <p>Trang chủ</p> <span>⟶	</span> <p>Nữ</p> <span>⟶</span> <p>Hàng nữ mới về</p><span>⟶</span> <p>áo thun cổ tròn MS 57E2969</p>
            </div>
            <div class="product-content row">
                <div class="product-content-left row">
                    <div class="product-content-left-big-img">
                        <img src="{{$product->feature_image_path}}" alt="">
                    </div>
                    <div class="product-content-left-small-img">
                        @foreach($spImage as $pro)
                        <img src="{{ $pro->image_path }}" alt="">
                        @endforeach
                    </div>
                </div>
                <div class="product-content-right">
                    <div class="product-content-right-product-name">
                        <h1>{{$product->name}}</h1>

                    </div>
                    <div class="product-content-right-product-price">
                        <p>{{number_format($product->price)}}<sup>đ</sup></p>
                    </div>
                    <div class="product-content-right-product-color">
                        <p><span style="font-weight: bold;">Màu sắc</span>:Xanh Cổ Vịt Nhạt <span style="color: red;">*</span></p>
                        <div class="product-content-right-product-color-img">
                            <img src="" alt="">
                        </div>
                    </div>
                    <div class="product-content-right-product-size">
                        <p style="font-weight: bold;">Size:</p>
                        <div class="size">
                            <span>S</span>
                        </div>
                    </div>
                    <div class="quantity">
                        <p style="font-weight: bold;">Số lượng:</p>
                        <input type="number" min="0" value="1">
                    </div>
                    <p style="color: red;">Vui lòng chọn size</p>
                    <div class="product-content-right-product-button add_to_cart">
                        <a href=""><button><i class="fas fa-shopping-cart"></i> <p>MUA HÀNG</p></button></a>
                        <button><p>TÌM TẠI CỬA HÀNG</p></button>
                    </div>
                    <div class="product-content-right-product-icon">
                        <div class="product-content-right-product-icon-item">
                            <i class="fas fa-phone-alt"></i> <p>Hotline</p>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <i class="far fa-comments"></i> <p>Chat</p>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <i class="far fa-envelope"></i><p>Mail</p>
                        </div>
                    </div>
                    <div class="product-content-right-product-QR">
                        <img src="image/qrcode2.png" alt="">
                    </div>
                    <div class="product-content-right-bottom">
                        <div class="product-content-right-bottom-top">
                            ∨
                        </div>
                        <div class="product-content-right-bottom-content-big">
                            <div class="product-content-right-bottom-content-title row">
                                <div class="product-content-right-bottom-content-title-item chitiet">
                                    <p>Chi tiết</p>
                                </div>
                                <div class="product-content-right-bottom-content-title-item baoquan">
                                    <p>Bảo quản</p>
                                </div>
                                <div class="product-content-right-bottom-content-title-item">
                                    <p>Tham khảo size</p>
                                </div>
                            </div>
                            <div class="product-content-right-bottom-content">
                                <div class="product-content-right-bottom-content-chitiet">
                                    <p>{{$product->content}}</p>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>

    </section>
    <!-- "product-related"------------------- -->
    <section class="product-related container">
        <div class="product-related-title">
            <p>SẢN PHẨM LIÊN QUAN</p>
        </div>
{{--        @foreach($TagsProduct as $tag)--}}
{{--        <div class=" row product-content">--}}
{{--            <div class="product-related-item">--}}
{{--                <img src="" alt="">--}}
{{--                <h1>{{$tag -> name}}</h1>--}}
{{--                <p>790.000<sup>đ</sup></p>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        @endforeach--}}
    </section>
@endsection
@section('js')
    <script src="http://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script>
        function addTocart(){
            alert(123);
        }
        $(function (){
            $('.add_to_cart').on('click', addTocart);
        });
    </script>
@endsection
