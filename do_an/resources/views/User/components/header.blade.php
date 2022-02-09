<secsion class="top">
    <div class="container">
        <div class="row">
            <div class="top-logo">
                <a href="{{route('home')}}"><img  src="{{asset('ivymoda\image\logo.png')}}" alt=""> </a>

            </div>
                @include('User.components.mainmenu', [])
            <div class="top-menu-icons">
                <ul>
                    <li>
                        <input type="text" placeholder="tìm kiếm">
                        <i class="fas fa-search"></i>
                    </li>
                    <li>
                        <i class="fas fa-user-secret"></i>
                    </li>
                    <li >
                        <a href="{{route('cart-product')}}">    <i href="" class="fas fa-shopping-cart"></i></a></a>


                    </li>
                </ul>
            </div>
        </div>
    </div>
</secsion>
