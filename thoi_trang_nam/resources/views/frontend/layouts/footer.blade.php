<footer class="footer-wrap">
    <div class="container f-menu-list">
        <div class="row">
            <div class="f-menu">
                <a href="index.html">
                    <img src="{{ asset('frontend_asset/img/logo-b.png') }}" alt="AllStore - MultiConcept eCommerce Responsive HTML5 Template">
                    </br> Thương hiệu thời trang Việt Nam
                    </br></br>
                </a>
                <table>
                    <tbody>
                        @if (isset($infor['email']))
                            <tr>
                                <td>{{ $infor['email']['title'] . ' : '}}</td>
                                <td>{!! $infor['email']['content'] !!}</td>
                            </tr>
                        @endif
                        @if (isset($infor['hotline']))
                            <tr>
                                <td>{{ $infor['hotline']['title'] . ' : '}}</td>
                                <td>{!! $infor['hotline']['content'] !!}</td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            </div>
            <div class="f-menu">
                <h3>
                    Trợ Giúp và Tư Vấn
                </h3>
                <ul class="nav nav-pills nav-stacked">
                    @if (isset($infor['gioi-thieu']))
                    <li>
                        <a href="{{ route('client.about') }}">
                            {{ $infor['gioi-thieu']['title'] }}
                        </a>
                    </li>
                    @endif
                    @if (isset($infor['chinh-sach-giao-hang']))
                    <li>
                        <a href="{{ route('client.shopping_guide') }}">
                            {{ $infor['chinh-sach-giao-hang']['title'] }}
                        </a>
                    </li>
                    @endif
                    @if (isset($infor['chinh-sach-doi-hang']))
                    <li>
                        <a href="{{ route('client.policy') }}">
                            {{ $infor['chinh-sach-doi-hang']['title'] }}
                        </a>
                    </li>
                    @endif
                    <li>
                        <a href="{{ route('client.contact_create') }}">
                            Liên hệ
                        </a>
                    </li>
                </ul>
            </div>
            <div class="f-menu">
                <h3>
                    Pages
                </h3>
				<div id="fb-root"></div>
				<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v7.0" nonce="bIRiXnLp"></script>
				<ul class="nav nav-pills nav-stacked">
				<div class="fb-page" data-href="https://www.facebook.com/Th%E1%BB%9Di-Trang-Nam-107227287754631" data-tabs="timeline" data-width="250" data-height="150" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Th%E1%BB%9Di-Trang-Nam-107227287754631" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Th%E1%BB%9Di-Trang-Nam-107227287754631">Thời Trang Nam</a></blockquote></div>
				</ul>

            </div>
            <div class="f-menu">
                <h3>
                    Google Map
					
                </h3>
                <ul class="nav nav-pills nav-stacked">
                    <li>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.8337879629257!2d108.2073478147855!3d16.07411268887796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421848ee772d4d%3A0x3ff80132e58624a7!2zOTIgxJBpbmggVGnDqm4gSG_DoG5nLCBUaGFuaCBCw6xuaCwgSOG6o2kgQ2jDonUsIMSQw6AgTuG6tW5nIDU1MDAwMCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1596160902574!5m2!1svi!2s" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</footer>