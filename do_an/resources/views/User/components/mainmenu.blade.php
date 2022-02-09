<div class="top-menu-items">
    <ul>
        <li><a href="{{route('user.product.index')}}">Sản Phẩm</a></li>
        @foreach($categorysLimit as $categoryParent)
        <li><a href="user/{{ $categoryParent->slug }}">{{ $categoryParent->name }}</a>
            @include('User.components.child_menu', ['$categoryParent' => $categoryParent])
        </li>
        @endforeach

        <li>Tin tức</li>
        <li>Thông tin</li>
    </ul>
</div>

