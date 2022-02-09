

{{--<head>--}}
{{--    <meta charset="UTF-8">--}}
{{--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--}}

{{--    <meta name="robots" content="index, follow" />--}}
{{--    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">--}}
{{--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--}}
{{--    <!-- Favicon -->--}}
{{--    <link rel="shortcut icon" type="image/x-icon" href="/pronia/assets/images/favicon.ico" />--}}
{{--    @yield('title')--}}
{{--    <!-- CSS--}}
{{--    ============================================ -->--}}

{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\bootstrap.min.css')}}" />--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\font-awesome.min.css')}}" />--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\Pe-icon-7-stroke.css')}}" />--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\animate.min.css')}}">--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\swiper-bundle.min.css')}}">--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\nice-select.css')}}">--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\magnific-popup.min.css')}}" />--}}
{{--        <link rel="stylesheet" href="{{asset('pronia\assets\css\ion.rangeSlider.min.css')}}" />--}}
{{--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--}}
{{--    @yield('css')--}}
{{--</head>--}}
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>

    @yield('title')
    <link rel="stylesheet" href="{{asset('ivymoda\css\mainstyle.css')}}">
    <link rel="stylesheet" href="{{asset('ivymoda\css\cart.css')}}">
    <link rel="stylesheet" href="{{asset('ivymoda\css\delivery.css')}}">
    <link rel="stylesheet" href="{{asset('ivymoda\css\payment.css')}}">
    <link rel="stylesheet" href="{{asset('ivymoda\css\product.css')}}">
    <link rel="stylesheet" href="{{asset('ivymoda\css\product_detail.css')}}">
    @yield('css')
</head>
<body>


@include('User.components.header')



@yield('content')

@include('User.components.footer')


{{--<!-- JS Files--}}
{{--============================================ -->--}}

{{--<script src="{{asset('pronia\assets\js\vendor\bootstrap.bundle.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\vendor\jquery-3.6.0.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\vendor\jquery-migrate-3.3.2.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\vendor\jquery.waypoints.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\vendor\modernizr-3.11.2.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\wow.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\swiper-bundle.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\jquery.nice-select.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\parallax.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js/plugins\jquery.magnific-popup.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\tippy.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\ion.rangeSlider.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\ion.rangeSlider.min.js')}}"></script>--}}
{{--<script src="{{asset('pronia\assets\js\plugins\jquery.counterup.js')}}"></script>--}}

{{--<!--Main JS (Common Activation Codes)-->--}}
{{--<script src="{{asset('pronia\assets/js\main.js')}}"></script>--}}
{{--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--}}
<script src="{{asset('ivymoda\js\script.js')}}"></script>
@yield('js')
</body>
</html>
