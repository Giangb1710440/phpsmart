@extends('layout.master')
@foreach($cates as $cate)
    @section('title', $cate->name.' - GiangIphone' )
@endforeach

@section('content')
    <div class="container ctn2">
        <br>
        <div class="row">
            <div class="col-md-12" style="border-style: solid;border-width: 1px;
            background-color: #999999;border-radius: 5px 5px 5px 5px ;position: relative;z-index: 2">
                @foreach($cates as $cate)
                <p style="text-align: center;color:   #652F2F; font-size: 18px; font-weight: bold;padding: 3px;margin: 0;
                font-family: Apple ;text-shadow: #0f6674"> Danh mục {{$cate->name}}</p>
                @endforeach
            </div>
        </div>
        <hr style="height: 1px; color: #1b1e21;">
        <div class="row dt_ban_chay">
            @foreach($danhmucs as $muanhieu)

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

@endsection

<!-- Hero Section Begin -->

