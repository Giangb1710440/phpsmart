

<!-- Header Section Begin -->
<header class="header-section">
    <div class="row a1">
        <div class="container ">
            <div class="inner-header">
                <div class="row">
                    <div class=" col-md-3">
                        <div class="logo">
                            <a href="{{asset(url('home'))}}">
                                <img src="{{asset('public/img/logo2.png')}}" alt=" ">
                            </a>
                        </div>
                    </div>
                        <div class="col-md-5 col-sm-8 col-xs-11 navbar-left">
                            <div class="navbar-form " role="search">
                                <form action="{{ route('searchProduct') }}" method="get">
                                    @csrf
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder=" Bạn cần tìm...  " name="srch-term" id="srch-term" style="margin-top: 15px;width: 500px  ;height: 50px;font-weight: bold">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default" style="background: #05b2e9;margin-top: 15px; height:50px;width: 50px;" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class=" text-right col-md-4 ad">

                            <ul class="nav-right">

                                @if(Auth::check())
                                    <style>
                                        .dropdown{
                                            float: right;
                                        }
                                        .dropdown:hover>.dropdown-menu {
                                            display: block;
                                        }

                                        .dropdown>.dropdown-toggle:active {
                                            /*Without this, clicking will make it sticky*/
                                            pointer-events: none;
                                        }
                                        .cart-icon{
                                            margin-right: 20px;
                                        }
                                    </style>

                                    <li class="cart-icon">

                                        <a href="{{ route('cart') }}">
                                            <i class='fas fa-shopping-cart' style='font-size:24px'></i>
                                            @if(Session::has('cart'))
                                                <span>{{Session('cart')->totalQty}}</span>
                                            @else
                                                <span>0</span>
                                            @endif
                                        </a>

                                        @if(Session::has('cart'))
                                        <div class="cart-hover" style="background-color: #f6f6f6"   >
                                            <div class="select-items" >
                                                <table>
                                                    <tbody>
                                                        @foreach($product_cart as $product)
                                                            <tr>
                                                                @foreach((array)json_decode($product['item']['image'], true) as $image)
                                                                    <td class="si-pic">
                                                                        <img style="width: 80px; height: 80px;" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                                                    </td>
                                                                    @break
                                                                @endforeach

                                                                <td class="si-text">
                                                                    <div class="product-selected">
                                                                        <p>{{ number_format($product['item']['unit_price']) }} đ</p>
                                                                        <h4>{{ $product['item']['name_product'] }}</h4>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="select-total">
                                                <span>Tổng Tiền:</span>
                                                <h5>{{ number_format($totalPrice) }} đ</h5>
                                            </div>
                                            <div class="select-button">
                                                <a href="{{url('/cart')}}" class="primary-btn view-card">XEM GIỎ HÀNG</a>
                                                <a href="{{url('/thanhtoan')}}" class="primary-btn view-card">ĐẶT HÀNG</a>
                                            </div>
                                        </div>
                                        @endif
                                    </li>

                                    <div class="dropdown" style="">
                                        <style>
                                            .dropdown-toggle{
                                                max-height: 30px;
                                                background-color: #F7BE81;
                                                color: #fff;
                                            }
                                            .btn-primary.focus, .btn-primary:focus {
                                                color: #fff;
                                                background-color: #F7BE81;
                                                border-color: #F7BE81;

                                            }
                                        </style>
                                        <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa fa-user-circle" aria-hidden="true"></i> {{ Auth::user()->name }}
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="background-color: #F7BE81">
                                            <a class="dropdown-item" href="{{ route('getProfile', Auth()->user()->id) }}">Thông tin</a>
                                            <a class="dropdown-item" href="{{ url('/info_user', Auth::user()->id) }}">Quản lý đơn hàng</a>
                                            <a class="dropdown-item" href="{{ url('/logout') }}">Đăng xuất</a>
                                        </div>
                                    </div>
                                @else
                                    <li class="cart-icon">
                                        <a href="{{ route('cart') }}">
                                            <i class='fas fa-shopping-cart' style='font-size:24px'></i>
                                            @if(Session::has('cart'))
                                                <span>{{Session('cart')->totalQty}}</span>
                                            @else
                                                <span>0</span>
                                            @endif

                                        </a>
                                        @if(Session::has('cart'))
                                        <div class="cart-hover" style="background-color: #f6f6f6"   >
                                            <div class="select-items" >
                                                <table>
                                                    <tbody>
                                                    @foreach($product_cart as $product)
                                                        <tr>
                                                            @foreach((array)json_decode($product['item']['image'], true) as $image)
                                                                <td class="si-pic">
                                                                    <img style="width: 80px; height: 80px;" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                                                </td>
                                                                @break
                                                            @endforeach
                                                            <td class="si-text">
                                                                <div class="product-selected">
                                                                    <p>{{ number_format($product['item']['unit_price']) }} đ</p>
                                                                    <h4>{{ $product['item']['name_product'] }}</h4>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="select-total">
                                                <span>Tổng Tiền:</span>
                                                <h5>{{ number_format($totalPrice) }} đ</h5>
                                            </div>
                                            <div class="select-button">
                                                <a href="{{url('/cart')}}" class="primary-btn view-card">XEM GIỎ HÀNG</a>
                                                <a href="{{url('/thanhtoan')}}" class="primary-btn view-card">THANH TOÁN</a>
                                            </div>
                                        </div>
                                        @endif
                                    </li>

                                    <li>
                                        <a style="background-color: #0f6674;border: #0f6674" href="{{ url('/login_page')}}" class="btn btn-primary">
                                            <i class="fa fa-user" aria-hidden="true"></i> Đăng nhập
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{url('/dang_ky')}}" class="btn btn-info">
                                            <i class="fa fa-arrow-circle-right" aria-hidden="true"></i> Đăng ký
                                        </a>
                                    </li>
                                @endif

                            </ul>
                        </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row scg">
        <div class="container ">
            <div class="row">
                <div class="col-md-3 pannerg">
                    <div id="menu">
                        <ul>
                            <li>

                                <a class="fa fa-list" href="#">   DANH MỤC</a>
                                <ul class="sub-menu">

                                    <li><a class="fa fa-mobile" href="{{url('/danhmuc',3)}}">iPhone</a>
                                        <ul>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone 11")}}"> iPhone 11/11Pro/11Pro Max</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone x")}}"> iPhone X/XS/XSMax</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone XR")}}"> iPhone XR</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone 8")}}"> iPhone 8/8Plus</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone 8")}}"> iPhone 7/7Plus</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone 6s")}}"> iPhone 6S/6SPlus</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPhone 5S")}}"> iPhone 5S/SE</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="fa fa-tablet" href="{{url('/danhmuc',4)}}">   iPad</a>
                                        <ul>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPad 3")}}"> iPad 3/iPad 4</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPad 9.7")}}"> iPad 9.7</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPad air")}}"> iPad Air</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPad mini")}}"> iPad Mini</a></li>
                                            <li><a class="fa fa-mobile" href="{{ url('/product_item',"iPad Pro")}}"> iPad Pro</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="fa fa-headphones" href="{{url('/danhmuc',5)}}">   Phụ kiện</a>
                                        <ul>
                                            <li><a class="fa fa-mobile" href="#"> Củ sạc iPhone</a></li>
                                            <li><a class="fa fa-mobile" href="#"> Củ Sạc iPad</a></li>
                                            <li><a class="fa fa-mobile" href="#"> Airpod</a></li>
                                            <li><a class="fa fa-mobile" href="#"> Tai Nghe</a></li>
                                            <li><a class="fa fa-mobile" href="#"> Pin dự phòng</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="fa fa-battery-full" href="{{url('/danhmuc',6)}}">   Linh kiện</a>
                                        <ul>
                                            <li><a class="fa fa-mobile" href="#"> Pin </a></li>
                                            <li><a class="fa fa-mobile" href="#"> Màn hình</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="fa fa-warning" href="#">   Hỗ Trợ</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 scg1" style="margin-left: 5px;margin-top: 10px;font-size: 13px;font-family: sans-serif">
                    <p style="color: #652F2F "> <i class="fa fa-life-ring"></i>Chính Sách Bảo Hành</p>
                </div>
                <div class="col-md-2 scg1" style="margin-left: 5px;margin-top: 10px;font-size: 13px;font-family: sans-serif">
                    <p style="color: #652F2F"><i class="fa fa-life-ring"></i> Hỗ trợ trả góp</p>
                </div>
                <div class="col-md-3 scg1" style="margin-left: 25px;margin-top: 10px;font-size: 13px;font-family: sans-serif">
                    <p style="color: #652F2F"><i class="fa fa-life-ring"></i> Hotline: 1900.988</p>
                </div>
            </div>
        </div>
    </div>
    <script>
        var msg1 = '{{Session::get('no_item_cart')}}';
        var exist1 = '{{Session::has('no_item_cart')}}';
        if(exist1){
            swal({
                title: "Giỏ hàng rỗng!",
                text: "Bạn cần thêm ít nhất 1 sản phẩm vào giỏ hàng.",
                type: "error",
                timer: 1500,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
    </script>
</header>
