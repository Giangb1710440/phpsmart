@extends('layout.master')
@section('title','Trang chủ')
@section('content')
    <div class="container ">
{{--        <a href="{{route('test')}}">lien ket route</a>--}}
        <div class="row rowg">
            <div class="col-md-4" style="float: left">
                <div class="row">
                    <img height="150px" width="500px" style="border-style: solid" src="{{asset('/public/img/suachua.jpg')}}" alt="">
                </div>
                <div class="row" style="margin-top: 5px">
                    <img height="155px" width="550px" style="border-style: solid" src="{{asset('/public/img/qc3.png')}}" alt="">
                </div>
            </div>
            <div class="col-md-8 pannerg1">
                <div class="row" style="float: right">
                    <div id="carouselId" class="carousel slide" data-ride="carousel" >
                        <ol class="carousel-indicators">
                            <li data-target="#carouselId" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselId" data-slide-to="1"></li>
                            <li data-target="#carouselId" data-slide-to="2"></li>
                            <li data-target="#carouselId" data-slide-to="3"></li>
                            <li data-target="#carouselId" data-slide-to="4"></li>
                            <li data-target="#carouselId" data-slide-to="5"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img src="{{ asset('public/img/banner.png') }}" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('public/img/banner1.png') }}" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('public/img/banner2.png') }}" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('public/img/panner/slide-iPhone-12-series.gif') }}" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('public/img/panner/ipad-pro-97-1.png') }}" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('public/img/panner/slide-iphone-11-1604.png') }}" alt="Third slide">
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#carouselId" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselId" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br>
    @if(Auth()->check())
        <div class="container ctn2">
            <div class="row">
                <div class="col-md-12" style="border-style: solid;border-width: 1px;
            background-color: #999999;border-radius: 5px 5px 5px 5px ;position: relative;z-index: 2">
                    <p style="text-align: center;color:   #652F2F; font-size: 18px; font-weight: bold;padding: 3px;margin: 0;
                font-family: Apple ;text-shadow: #0f6674">ĐỀ XUẤT DÀNH CHO BẠN</p>
                </div>
            </div>
            <div class="row dt_ban_chay">
                @foreach($productAppoints as $productAppoint)
                    <div class="col-md-3 text-center hinhsp">
                        <div class="card">
                            <div class="card-body">
                                @foreach((array)json_decode($productAppoint->image, true) as $image)
                                    @if(Auth()->check())
                                        <a href="{{ route('viewProductHasLogin', [$productAppoint->id, Auth()->user()->id]) }}">
                                            <img  class="card-img-top" src="{{ \TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                        </a>
                                    @else
                                        <a href="{{ route('viewProduct', $productAppoint->id) }}">
                                            <img  class="card-img-top" src="{{ \TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                        </a>
                                    @endif
                                    @break
                                @endforeach
                                <br><br>
                                <p class="card-title"
                                   style="color: black; font-size: 18px; font-weight: bold;margin-bottom: 0px">{{ $productAppoint->name_product }}
                                </p>
                                <p class="card-text" style="color: red; font-weight: bold;">{{ number_format($productAppoint->unit_price) }} VNĐ</p>
                            </div>
                            <div class="card-footer text-muted">
                                <a href="{{ route('addCard', $productAppoint->id) }}" class="btn btn-danger">Đặt hàng</a>
                                @if(Auth()->check())
                                    <a href="{{ route('viewProductHasLogin', [$productAppoint->id, Auth()->user()->id]) }}" class="btn btn-info">Xem chi tiết</a>
                                @else
                                    <a href="{{ url('/product', $productAppoint->id) }}" class="btn btn-info">Xem chi tiết</a>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach

                    @foreach($productRatingAppoints as $productRatingAppoint)
                        <div class="col-md-3 text-center hinhsp">
                            <div class="card">
                                <div class="card-body">
                                    @foreach((array)json_decode($productRatingAppoint->image, true) as $image)
                                        @if(Auth()->check())
                                            <a href="{{ route('viewProductHasLogin', [$productRatingAppoint->id, Auth()->user()->id]) }}">
                                                <img  class="card-img-top" src="{{ \TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                            </a>
                                        @else
                                            <a href="{{ route('viewProduct', $productRatingAppoint->id) }}">
                                                <img  class="card-img-top" src="{{ \TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                            </a>
                                        @endif
                                        @break
                                    @endforeach
                                    <br><br>
                                    <p class="card-title"
                                       style="color: black; font-size: 18px; font-weight: bold;margin-bottom: 0px">{{ $productRatingAppoint->name_product }}
                                    </p>
                                    <p class="card-text" style="color: red; font-weight: bold;">{{ number_format($productRatingAppoint->unit_price) }} VNĐ</p>
                                </div>
                                <div class="card-footer text-muted">
                                    <a href="{{ route('addCard', $productRatingAppoint->id) }}" class="btn btn-danger">Đặt hàng</a>
                                    @if(Auth()->check())
                                        <a href="{{ route('viewProductHasLogin', [$productRatingAppoint->id, Auth()->user()->id]) }}" class="btn btn-info">Xem chi tiết</a>
                                    @else
                                        <a href="{{ url('/product', $productRatingAppoint->id) }}" class="btn btn-info">Xem chi tiết</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach

            </div>
        </div>
        <br>
    @endif
    <div class="container ctn2">
        <div class="row">
            <div class="col-md-12" style="border-style: solid;border-width: 1px;
            background-color: #999999;border-radius: 5px 5px 5px 5px ;position: relative;z-index: 2">
                <p style="text-align: center;color:   #652F2F; font-size: 18px; font-weight: bold;padding: 3px;margin: 0;
                font-family: Apple ;text-shadow: #0f6674">MUA NHIỀU NHẤT</p>
            </div>
        </div>
        <div class="row dt_ban_chay">
            @foreach($muanhieus as $muanhieu)
                <div class="col-md-3 text-center hinhsp">
                    <div class="card">
                        <div class="card-body">
                            @foreach((array)json_decode($muanhieu->image, true) as $image)
                                @if(Auth()->check())
                                    <a href="{{ route('viewProductHasLogin', [$muanhieu->id, Auth()->user()->id]) }}">
                                        <img  class="card-img-top" src="{{ \TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                    </a>
                                @else
                                    <a href="{{ route('viewProduct', $muanhieu->id) }}">
                                        <img  class="card-img-top" src="{{ \TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                    </a>
                                @endif
                                @break
                            @endforeach
                            <br><br>
                            <p class="card-title"
                               style="color: black; font-size: 18px; font-weight: bold;margin-bottom: 0px">{{ $muanhieu->name_product }}
                            </p>
                            <p class="card-text" style="color: red; font-weight: bold;">{{ number_format($muanhieu->unit_price) }} VNĐ</p>
                        </div>
                        <div class="card-footer text-muted">
                            <a href="{{ route('addCard', $muanhieu->id) }}" class="btn btn-danger">Đặt hàng</a>
                            @if(Auth()->check())
                                <a href="{{ route('viewProductHasLogin', [$muanhieu->id, Auth()->user()->id]) }}" class="btn btn-info">Xem chi tiết</a>
                            @else
                                <a href="{{ url('/product', $muanhieu->id) }}" class="btn btn-info">Xem chi tiết</a>
                            @endif
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
    <br>

    <div class="container ctn2">
        <div class="row" >
            <div class="col-md-3" style="border-style: solid;border-width: 1px;
            background-color: #05b2e9;border-radius: 5px 20px 0px 20px ;position: relative;z-index: 2">
                <p style="text-align: center;color: white; font-size: 18px; font-weight: bold;padding: 3px;margin: 0;
                font-family: Apple ;text-shadow: #0f6674">iPhone Bán Chạy</p>
            </div>
            <div class="col-md-9" style="margin-left: -15px;border-style: solid;border-width: 1px
            ;border-radius: 0px 0px 20px 0px ;border-left: white;position: relative;z-index: 1;background-color: #999999">
                <a href="#" style="margin-top: 6px;font-family: Apple;float: right"> iPhone 6/6 Plus </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPhone 7/7 Plus </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPhone 8/8 Plus </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPhone X/Xr </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPhone Xs/Xs Max </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPhone 11/Pro/Pro Max </a>


            </div>
        </div>
        <div class="row dt_ban_chay">
            @foreach($dienthoais as $dienthoai)
                <div class="col-md-3 text-center hinhsp" style="margin-top: 10px">
                    <div class="card">
                        <div class="card-body">
                            @foreach((array)json_decode($dienthoai->image, true) as $image)
                                @if(Auth()->check())
                                    <a href="{{ route('viewProductHasLogin', [$dienthoai->id, Auth()->user()->id]) }}">
                                        <img class="card-img-top" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                    </a>
                                @else
                                    <a href="{{ route('viewProduct', $dienthoai->id) }}">
                                        <img class="card-img-top" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                    </a>
                                @endif
                                @break
                            @endforeach
                            <br>
                            <p class="card-title"
                               style="color: black; font-size: 18px; font-weight: bold;margin-bottom: 0px">{{ $dienthoai->name_product }} </p>
                            <p class="card-text" style="color: red; font-weight: bold;">{{ number_format($dienthoai->unit_price) }} VNĐ</p>
                        </div>
                        <div class="card-footer text-muted">
                            <a href="{{ route('addCard', $dienthoai->id) }}" class="btn btn-danger">Đặt hàng</a>
                            @if(Auth()->check())
                                <a href="{{ route('viewProductHasLogin', [$dienthoai->id, Auth()->user()->id]) }}" class="btn btn-info">Xem chi tiết</a>
                            @else
                                <a href="{{ route('viewProduct', $dienthoai->id) }}" class="btn btn-info">Xem chi tiết</a>
                            @endif
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <br>
    <div class="container ctn2">
        <div class="row" >
            <div class="col-md-3" style="border-style: solid;border-width: 1px;
            background-color: #05b2e9;border-radius: 5px 20px 0px 20px ;position: relative;z-index: 2">
                <p style="text-align: center;color: white; font-size: 18px; font-weight: bold;
                padding: 3px;margin: 0;font-family: Apple ;text-shadow: #0f6674">iPad Bán Chạy</p>
            </div>
            <div class="col-md-9" style="margin-left: -15px;border-style: solid;border-width: 1px
            ;border-radius: 0px 0px 20px 0px ;border-left: white;position: relative;z-index: 1;background-color: #999999">
                <a href="#" style="margin-top: 6px;font-family: Apple;float: right"> iPad 3/4 </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPad 9.7/10.2 </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPad Air </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPad Mini </a>
                <a href="#" style=" margin-top: 6px;font-family: Apple;float: right"> iPad Pro </a>
            </div>
        </div>
        <div class="row dt_ban_chay">
            @foreach($ipads as $ipad)
                <div class="col-md-3 text-center hinhsp">
                    <div class="card-body">
                        @foreach((array)json_decode($ipad->image, true) as $image)
                            @if(Auth()->check())
                                <a href="{{ route('viewProductHasLogin', [$ipad->id, Auth()->user()->id]) }}">
                                    <img class="card-img-top" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                </a>
                            @else
                                <a href="{{ route('viewProduct', $ipad->id) }}">
                                    <img class="card-img-top" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                </a>
                            @endif
                            @break
                        @endforeach
                        <br><br>
                        <p class="card-title"
                           style="color: black; font-size: 18px; font-weight: bold;margin-bottom: 0px">{{ $ipad->name_product }} </p>
                        <p class="card-text" style="color: red; font-weight: bold;">{{ number_format($ipad->unit_price) }} VNĐ</p>
                    </div>
                    <div class="card-footer text-muted">
                        <a href="{{ route('addCard', $ipad->id) }}" class="btn btn-danger">Đặt hàng</a>
                        @if(Auth()->check())
                            <a href="{{ route('viewProductHasLogin', [$ipad->id, Auth()->user()->id]) }}" class="btn btn-info">Xem chi tiết</a>
                        @else
                            <a href="{{ route('viewProduct', $dienthoai->id) }}" class="btn btn-info">Xem chi tiết</a>
                        @endif
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <br><br>
    <script>
        var msg = '{{Session::get('add_cart_success')}}';
        var exist = '{{Session::has('add_cart_success')}}';
        if(exist){
            swal({
                title: "Đã thêm vào giỏ hàng",
                text: "",
                type: "success",
                timer: 1200,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
    </script>

    <script>
        $(document).ready(function() {

            $(".owl-carousel").owlCarousel({

                autoPlay: 3000,
                items : 4,
                itemsDesktop : [1199,3],
                itemsDesktopSmall : [979,3],
                center: true,
                nav:true,
                loop:true,
                responsive: {
                    600: {
                        items: 4
                    }
                }
            });
        });
    </script>

@endsection

<!-- Hero Section Begin -->

