
@extends('User.layouts.master')

@section('title')
    <title>Sản Phẩm</title>
@endsection
@section('css')

@endsection

@section('content')

    <section class="cartegory">
        <div class="container">
            <div class="cartegory-top row">
                <p>Trang chủ</p> <span>⟶	</span> <p>Nữ</p> <span>⟶</span> <p>Hàng nữ mới về</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="cartegory-left">
                    <ul>
                        @foreach($categorys as $category)
                        <li class="cartegory-left-li "><a href="#">{{ $category->name }}</a>


                            <ul>
                                @foreach($category->categoryChildrent as $categoryChild )
                                <li><a href="{{ $categoryChild->slug }}">{{$categoryChild->name}}</a>
{{--                                 <ul>--}}
{{--                                    <li><a href="">Áo</a></li>--}}
{{--                                 </ul>--}}
                                </li>
                                @endforeach
                            </ul>
                        </li>
                        @endforeach
                    </ul>

                </div>
                <div class="cartegory-right row">
                    <div class="cartegory-right-top-item">
                        <p></p>
                    </div>
                    <div class="cartegory-right-top-item">
                        <button><span>Bộ lọc</span> <i class="fas fa-sort-down"></i></button>
                    </div>
                    <div class="cartegory-right-top-item">
                        <select name="" id="">
                            <option value="">Sắp xếp</option>
                            <option value="">Giá cao đến thấp</option>
                            <option value="">Giá thấp đến cao</option>
                        </select>
                    </div>
                    <div class="cartegory-right-content row">
                        @foreach($products as $product)
                        <div class="cartegory-right-content-item">
                            <a href="{{route('user.product.product-detail', ['id' => $product->id])}}" id=""> <img  src="{{ $product->feature_image_path }}" alt=""></a>

                            <h1>{{ $product ->name }}</h1>
                            <p>{{number_format($product->price)  }}<sup>đ</sup></p>
                        </div>
                        @endforeach
                    </div>


                    <div class="cartegory-right-bottom row">
                        <div class="cartegory-right-bottom-items">
                            <p>Hiện thị 2 <span>|</span> 4 sản phẩm</p>
                        </div>
                        <div class="cartegory-right-bottom-items">
                            <p><span>«</span>1 2 3 4 5<span>»</span>Trang cuối</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

@endsection
@section('js')
 <script src="http://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
@endsection
