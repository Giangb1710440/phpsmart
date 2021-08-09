@extends('layout.master')

@section('title', $product->name_product.' - GiangIphone' )
@section('custom_css')
    <link rel="stylesheet" href="{{ asset('public/view_product.css') }}">
@endsection


@section('content')
    <hr style="border-style: revert;border-width: 5px;margin-top: 4px">
    <br>
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section" style="background-color:#f0f0f0">

        <div class="container" style="background-color: #fff;height: 30px;margin-top: 5px;padding-top: 1px">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="{{url('/home')}}"><i class="fa fa-home"></i> Home</a>
                        @php($getloai = DB::table('categories')->where('id', $product->category_id)->get())
                        @foreach($getloai as $data)
                            <a href="{{url('/danhmuc',$data->id)}}">{{$data->name}}</a>
                            <span>{{$product->name_product}}</span>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details" style="background-color:#f0f0f0;">
        <div class="container ctn1">
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    <div class="row">
                        <div class="col-lg-5">
                            <div>
                                @foreach((array)json_decode($product->image, true) as $image)
                                    <img class="card-img-top" src="{{ voyager::image($image) }}" alt="">
                                    @break
                                @endforeach
                            </div>
                            <br>
                            <div class="owl-wrapper-outer">
                                <div class="owl-wrapper" style="margin-bottom: 10px">
                                    @foreach((array)json_decode($product->image, true) as $image)
                                        <div class="pt active" data-imgbigurl="{{ voyager::image($image) }}" style="width: 65px;height: 65px;border-style: solid;
                                            border-color:#dfdfdf;border-width: 1px;padding: 1px;float: left">
                                            <a href=""> <img src="{{ voyager::image($image) }}" alt="" width=55px
                                                             height=60px style="padding: 0px"></a>

                                        </div>
                                    @endforeach

                                    {{--<div class="pt" data-imgbigurl="{{asset('public/img/11promaxgold.png')}}">
                                        <img src="{{asset('public/img/11promaxgold.png')}}" alt=""></div>

                                    <div class="pt" data-imgbigurl="{{asset('public/img/11promaxtrng.png')}}">
                                        <img src="{{asset('public/img/11promaxtrng.png')}}" alt=""></div>

                                    <div class="pt" data-imgbigurl="{{asset('public/img/11green.png')}}">
                                        <img src="{{asset('public/img/11green.png')}}" alt=""></div>--}}
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <p style="font-family: Apple;font-size: 30px;font-weight: bold;color: black;margin-top: 25px"> {{ $product->name_product }}</p>
                                    <hr style="background-color: #999999;border-width: 2px;color:black;border-style: solid;">
                                    <h3 style="color: darkslategrey;font-family: Apple"> {{ number_format($product->unit_price) }}
                                        <i>đ</i>
                                        <label class="ex_tragop"> Trả góp 0%</label></h3>
                                    @foreach($product_detail as $detail)
                                        <div class="selector-wrapper" style="text-align: left; margin-bottom: 5px;">
                                            <label>Dung lượng : </label>
                                            <select class="single-option-selector" data-option="option1"
                                                    id="product-selectors-option-0">
                                                <option value="64">{{ $detail->rom }}</option>
                                            </select>

                                        </div>
                                    @endforeach

                                </div>
                                <br>
                                <div class="quantity q">
                                    <label>Số lượng : </label>
                                    <div class="pro-qty" style="margin-left:33px">
                                        <input type="text" value="1">
                                    </div>
                                </div>

                                <a style="background: rosybrown;color: #0f6674"
                                   href="{{ route('addCard', $product->id) }}" class="primary-btn pd-cart1">Thêm vào giỏ
                                    hàng</a>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ex_rgtbox ex_camket">
                        <h3>Shop cam kết</h3>
                        <div class="boxes-title" style="display:none">
                            <h2>Cam kết iphone cũ</h2>
                        </div>
                        <div class="textwidget">
                            <ul>
                                <li>
                                        <span style="color: #ff0000;">
                                            <a style="color: #ff0000;" href="#">
                                                <strong> <i class="fa fa-check"></i> Bảo hành phần cứng trọn đời khi mua iPhone cũ</strong>
                                                <span style="color: #008000;">(chi tiết)</span>
                                            </a>
                                        </span>
                                </li>
                                <li class="p1"><i class="fa fa-check" style="color: #ff0000"></i>Tất cả iPhone cũ|TBH
                                    bán ra đều cam kết máy <strong>
                                        <span style="color: #ff0000;">đẹp – Nguyên bản</span>
                                    </strong> – tất cả iPhone cũ|TBH đều đã được mở máy kiểm tra zin. Khách hàng có thể
                                    mở máy tại shop để check
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="ex_rgtbox ex_camket">
                        <h3>ƯU ĐÃI TRẢ GÓP</h3>
                        <div class="boxes-title" style="display:none">
                            <h2>Cam kết iphone cũ</h2>
                        </div>
                        <div class="textwidget">
                            <ul>
                                <li>
                                        <span style="color: #191919 ;">
                                            <a style="color: #191919;" href="#">
                                                <strong> <i class="fa fa-check-square" style="color: #ff0000"
                                                            ex_tragop></i> Hỗ trợ trả góp các ngân hàng trả góp HD SaiSon, MB MCredit, Fe Credit</strong>
                                                <span style="color: #008000;">(chi tiết trả góp)</span>
                                            </a>
                                        </span>
                                </li>

                                <li>
                                        <span style="color: #191919 ;">
                                            <a style="color: #191919;" href="#">
                                                <strong style="color: #191919;"> <i class="fa fa-check-square"
                                                                                    style="color: #ff0000"></i> Chỉ cần bằng lái xe & chứng minh thư</strong>
                                            </a>
                                        </span>
                                </li>
                                <li>
                                        <span style="color: #191919 ;">
                                            <a style="color: #191919;" href="#">
                                                <strong style="color: #191919;"> <i class="fa fa-check-square"
                                                                                    style="color: #ff0000"></i> Trả trước 20% nhận máy sau 15 phút</strong>
                                            </a>
                                        </span>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-6">
                    <div id="fb-root"></div>
                    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0"></script>
                    <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#http://localhost/PhpSmart/product/{{ $product->id }}"
                         data-width="500" data-numposts="5"></div>
                </div>

                <div class="col-md-6">
                    @if(Auth()->check())
                        <style>
                            .rating_circle{
                                width: 180px;
                                height: 180px;
                                border-radius: 50%;
                                border: 1px none;
                                font-size: 50px;
                                font-weight: bold;
                            }
                            .rating_text{
                                margin-top:1px;
                                font-size: 20px;
                            }

                            /* Stylingand links*/
                            .starrating > input {display: none;}
                            .starrating > label:before {
                                content: "\f005";
                                margin: 5px;
                                font-size:40px;
                                font-family: FontAwesome, serif;
                                display: inline-block;
                            }
                            .starrating > label{color: #4a5568;}
                            .starrating > input:checked ~ label{ color: #ffca08 ; }
                            .starrating > input:hover ~ label{ color: #ffca08 ;  }
                        </style>
                        <div class="card pb-0 mt-5">
                            <div class="card-body pb-0">
                                <div class="row">
                                    <div class="col-12 col-md-4">
                                        <button class="rating_circle">
                                            @php($avg_rating = DB::table('rating_stars')->where('product_id', $product->id)->avg('rating_star'))
                                            {{ round($avg_rating, 1) }} / <span class="text-warning">5 <i class="fa fa-star" style="color:#ffca08;"></i></span>
                                        </button>
                                    </div>
                                    <div class="col-10 col-md-6">
                                        <div class="progress mt-2" style="height:15px;">
                                            <div class="progress-bar bg-success" style="width:100%;height:15px;">5 Sao</div>
                                        </div>
                                        <div class="progress mt-3" style="height:15px;">
                                            <div class="progress-bar bg-info" style="width:80%;height:15px;">4 Sao</div>
                                        </div>
                                        <div class="progress mt-3" style="height:15px;">
                                            <div class="progress-bar bg-primary" style="width:60%;height:15px;">3 Sao</div>
                                        </div>
                                        <div class="progress mt-3" style="height:15px;">
                                            <div class="progress-bar bg-warning" style="width:40%;height:15px;">2 Sao</div>
                                        </div>
                                        <div class="progress mt-3" style="height:15px;">
                                            <div class="progress-bar bg-danger" style="width:20%;height:15px;">1 Sao</div>
                                        </div>
                                    </div>
                                    <div class="col-2 col-md-2 mt-0">
                                        <div class="row">
                                            <b class="rating_text">
                                                @php($count_5 = DB::table('rating_stars')->where([['product_id','=',$product->id],['rating_star', '=',5]])->count())
                                                {{ $count_5 }}
                                            </b>
                                        </div>
                                        <div class="row">
                                            <b class="rating_text">
                                                @php($count_4 = DB::table('rating_stars')->where([['product_id','=',$product->id],['rating_star', '=',4]])->count())
                                                {{ $count_4 }}
                                            </b>
                                        </div>
                                        <div class="row">
                                            <b class="rating_text">
                                                @php($count_3 = DB::table('rating_stars')->where([['product_id','=',$product->id],['rating_star', '=',3]])->count())
                                                {{ $count_3 }}
                                            </b>
                                        </div>
                                        <div class="row">
                                            <b class="rating_text">
                                                @php($count_2 = DB::table('rating_stars')->where([['product_id','=',$product->id],['rating_star','=',2]])->count())
                                                {{ $count_2 }}
                                            </b>
                                        </div>
                                        <div class="row">
                                            <b class="rating_text">
                                                @php($count_1 = DB::table('rating_stars')->where([['product_id','=',$product->id],['rating_star','=',1]])->count())
                                                {{ $count_1 }}
                                            </b>
                                        </div>
                                    </div>
                                </div>

                                @if (Auth::check())
                                    <form action="{{ route('postRatingStar', [Auth::user()->id, $product->id]) }}" method="post" id="FormSubmit">
                                        @csrf
                                        <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
                                            <input type="radio" id="star5" name="rating" value="5" onclick="return SubmitFormFunction();"/><label for="star5" title="5 star"></label>
                                            <input type="radio" id="star4" name="rating" value="4" onclick="return SubmitFormFunction();"/><label for="star4" title="4 star"></label>
                                            <input type="radio" id="star3" name="rating" value="3" onclick="return SubmitFormFunction();"/><label for="star3" title="3 star"></label>
                                            <input type="radio" id="star2" name="rating" value="2" onclick="return SubmitFormFunction();"/><label for="star2" title="2 star"></label>
                                            <input type="radio" id="star1" name="rating" value="1" onclick="return SubmitFormFunction();"/><label for="star1" title="1 star"></label>
                                        </div>
                                    </form>
                                @else
                                    <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
                                        <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="5 star" onclick="MessageFunction()"></label>
                                        <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="4 star" onclick="MessageFunction()"></label>
                                        <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="3 star" onclick="MessageFunction()"></label>
                                        <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="2 star" onclick="MessageFunction()"></label>
                                        <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="1 star" onclick="MessageFunction()"></label>
                                    </div>
                                @endif
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>

    <div class="product-shop spad page-details" style="background-color:#f0f0f0;">
        <div class="container ctn1">
            <div class="row">
                <div class="col-md-8" style="border-right-style: groove;z-index: 1 ">
                    <h3>Đánh giá chi tiết</h3>
                    <hr>
                    <p style="text-align: justify">{{$product->describe_Htop}}</p>
                    @foreach((array)json_decode($product->describe_Itop, true) as $image)
                        <img src="{{ Voyager::image($image) }}" alt="">
                    @endforeach

                    <br><br>
                    <p style="text-align: justify">{{$product->describe_Hmid}}</p>
                    @foreach((array)json_decode($product->describe_Imid, true) as $image)
                        <img src="{{ voyager::image($image) }}" alt="">
                    @endforeach

                    <br><br>
                    <p style="text-align: justify">{{$product->describe_Hbot}}</p>
                    @foreach((array)json_decode($product->describe_Ibot, true) as $image)
                        <img src="{{ voyager::image($image) }}" alt="">
                    @endforeach

                </div>
                <style>
                    .thongso .list-group .list-group-item {
                        position: relative;
                        display: block;
                        padding: 10px 15px;
                        margin-bottom: -1px;
                        background-color: #fff;
                        border: 1px solid #eee;
                        border-right: none;
                        border-left: none;
                        border-radius: 0px;
                    }

                    .thongso .list-group .list-group-item strong {
                        float: right;
                        padding-right: 5px;
                    }
                </style>

                <div class="col-md-4 thongso">
                    <h3>Thông số kỹ thuật</h3>
                    <hr>
                    @foreach($product_detail as $detail)
                        <ul class="list-group">
                            <li class="list-group-item" style="background-color: ghostwhite"><span>Màn hình:</span>
                                <strong>{{ $detail->screen_resolution }}, {{ $detail->screen_size }} </strong></li>
                            <li class="list-group-item "><span>Hệ điều hành:</span> <strong>{{ $detail->os }}</strong>
                            </li>
                            <li class="list-group-item" style="background-color: ghostwhite"><span>Camera chính:</span>
                                <strong>{{ $detail->rear_camera }}</strong></li>
                            <li class="list-group-item "><span>Camera phụ:</span>
                                <strong>{{ $detail->front_camera }}</strong></li>
                            <li class="list-group-item"><span>Bộ nhớ trong:</span> <strong>{{ $detail->rom }}</strong>
                            </li>
                            <li class="list-group-item"><span>Ram:</span> <strong>{{ $detail->ram }}</strong></li>
                            <li class="list-group-item"><span>Thẻ Sim:</span> <strong>{{ $detail->type_sim }}</strong>
                            </li>
                            <li class="list-group-item"><span>Dung lượng pin:</span>
                                <strong>{{ $detail->battery_capacity }}, {{ $detail->type_battery }}</strong></li>
                        </ul>
                    @endforeach
                </div>

            </div>
        </div>
    </div>
    <!-- Product Shop Section End -->
    <br>
    <hr>
    <hr>
    <script>
        var msg = '{{Session::get('add_cart_success')}}';
        var exist = '{{Session::has('add_cart_success')}}';
        if (exist) {
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

    @if(session()->has('message_success'))
        <script>
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: '{{ session()->get('message_success') }}',
                showConfirmButton: false,
                timer: 1000
            })
        </script>
    @endif

    @if(session()->has('message_error'))
        <script>
            Swal.fire({
                position: 'center',
                icon: 'error',
                title: '{{ session()->get('message_error') }}',
                showConfirmButton: false,
                timer: 3000
            })
        </script>
    @endif

    <script>
        $(document).ready(function(){
            $('[data-toggle="popover"]').popover();
        });

        function MessageFunction() {
            Swal.fire({
                position: 'center',
                icon: 'error',
                title: 'Đăng nhập để đánh giá sao',
                showConfirmButton: false,
                timer: 1500
            });
            setTimeout(function() {
                location.href = "{{ url('/login') }}";
            }, 2000);
        }

        function SubmitFormFunction() {
            document.getElementById("FormSubmit").submit();
        }
    </script>


@endsection

