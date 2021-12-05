@extends('layout.master')
@section('title', 'Giỏ hàng')
@section('custom_css_cart')
    <link rel="stylesheet" href="{{ asset('public/custom_css_cart.css') }}">
@endsection
@section('content')
    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            @if(Session('cart')->totalQty <= 0)
                <div class="row">
                    <div class="col-lg-12">
                        <div class="cart-table">
                            <table>
                                <thead style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268">
                                <tr >
                                    <th colspan="5" style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center">
                                        Bạn chưa thêm sản phẩm nào vào giỏ hàng
                                    </th>
                                </tr>
                                </thead>
                            </table>
                            <div class="alert alert-warning" style="color: #8a6d3b;background-color: #fcf8e3;border-color: #faebcc;">
                                <p>
                                    <strong>Giỏ hàng của bạn đang rỗng.</strong>
                                </p>
                                <p>Bạn nên chuyển về trang chủ để tiếp tục mua sắm vì giỏ hàng của bạn hiện chưa có sản phẩm nào!
                                    <a href="{{asset(url('/home'))}}"><i class="fab fa-apple"></i></a></p>
                            </div>
                        </div>

                    </div>
                </div>
            @else
                <div class="row">
                    <div class="col-lg-12">
                        <div class="cart-table">
                            <table>
                                <thead style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268">
                                <tr >
                                    <th style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center">ẢNH</th>
                                    <th style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center"  class="p-name">TÊN SẢN PHẨM</th>
                                    <th style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center" >ĐƠN GIÁ</th>
                                    <th style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center">SỐ LƯỢNG</th>
                                    <th style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center">THÀNH TIỀN</th>
                                    <th style="border-style: solid;border-color: #5a6268;border-width: 1px;border-bottom: #5a6268;text-align: center" ><i class="ti-close"></i></th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($product_cart ?? '' as $product)
                                    <tr>
                                        @foreach((array)json_decode($product['item']['image'], true) as $image)
                                            <td class="cart-pic first-row">
                                                <img style="width: 100px; height: 100px;" src="{{ TCG\Voyager\Facades\Voyager::image($image) }}" alt="">
                                            </td>
                                            @break
                                        @endforeach

                                        <td class="cart-title first-row">
                                            <h5 style="color: #337ab7"><b>{{ $product['item']['name_product'] }}</b></h5>
                                        </td>

                                        <td
                                            class="p-price first-row">{{ number_format($product['item']['unit_price']) }} <i>đ</i>
                                        </td>

                                        <td class="qua-col first-row">
                                            <div class="quantity">
                                                <style>button{height: 20rem; padding-top: 5px}</style>
                                                <input style="width: 50%;" type="number" id="txt_solg"
                                                       value="{{$product['qty']}}" class="form-control quantity"
                                                       onchange="update_cart({{ $product['item']['id'] }} + ',' + this.value)">

                                            </div>
                                        </td>

                                        <td
                                            class="total-price first-row">{{ number_format($product['qty'] * $product['item']['unit_price']) }} đ
                                        </td>

                                        <td class="close-td first-row">
                                            <a onclick="return xacnhanxoa('Ban co chac chan xoa?')"
                                               href="{{ route('getDeleteCart',$product['item']['id']) }}"
                                               class="btn btn-danger"
                                               data-toggle="tooltip"
                                               title="xóa">
                                                <i class="glyphicon glyphicon-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="cart-buttons">
                                    <a href="{{ route('home') }}" class="primary-btn continue-shop">TIẾP TỤC MUA HÀNG</a>
                                </div>
                                <div class="discount-coupon">
                                    <h6>MÃ GIẢM GIÁ</h6>
                                    <form action="#" class="coupon-form">
                                        <input type="text" placeholder="Enter your codes">
                                        <button type="submit" class="site-btn coupon-btn">Apply</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-4 offset-lg-4">
                                <div class="proceed-checkout">
                                    <ul>
                                        <li class="cart-total">Total <span>{{ number_format($totalPrice) }} đ</span></li>
                                    </ul>
                                    <a href="{{url('/thanhtoan')}}" class="proceed-btn">Thanh Toán</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </section>
    <br>
    <!-- Shopping Cart Section End -->

    <script>
        function update_cart(e) {
            var ele = e.split(",");
            var ktra = document.getElementById('txt_solg').value;

            if(ktra > 0 && ktra < 5){
                $.ajax({
                    url: '{{ route('getUpdateCart') }}',
                    method: "get",
                    data: {_token: '{{ csrf_token() }}',
                        id: ele[0],
                        quantity: ele[1]},
                    success: function (response) {
                        swal({
                            title: "Đã cập nhật giỏ hàng",
                            text: "",
                            type: "success",
                            timer: 900,
                            showConfirmButton: false,
                            position: 'top-end',
                        });
                        window.setTimeout(function(){
                            location.reload();
                        } ,900);
                    }
                });
            }else{
                swal({
                    title: "Số lượng không cho phép !",
                    text: "",
                    type: "warning",
                    timer: 1000,
                    showConfirmButton: false,
                    position: 'top-end',
                });
                document.getElementById('txt_solg').value = 1;
            }
        }

        var msg = '{{Session::get('delete_cart')}}';
        var exist = '{{Session::has('delete_cart')}}';
        if(exist){
            swal({
                title: "Đã xóa sản phẩm ra khỏi giỏ hàng.",
                text: "",
                type: "success",
                timer: 1000,
                showConfirmButton: false,
                position: 'top-end',
            });
        }

        function xacnhanxoa(msg){
            if(window.confirm(msg)){
                return true;
            }
            return false;
        }

    </script>
@endsection
