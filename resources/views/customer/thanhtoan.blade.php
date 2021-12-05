@extends('layout.master')
@section('title', 'Thanh Toán')
@section('content')
    <section class="checkout-section spad">
    <div class="container">
        <form action="{{ route('datHang') }}" class="checkout-form" method="post">
            @csrf
            <div class="row">
                <div class="col-lg-6">
                    <h4>Chi tiết thanh toán</h4>
                    @if(Auth::check())
                        <div class="row">
                            <div class="col-lg-6">
                                <label for="fir">Họ & Tên Người Nhận<span>*</span></label>
                                <input type="text" id="fullname" name="fullname" value="{{ Auth::user()->name }}" disabled>
                            </div>

                            <div class="col-lg-6">
                                <label for="email">Email (Nếu có)<span></span></label>
                                <input type="text" id="email" name="email" disabled value="{{ Auth::user()->email }}">
                            </div>
                            <div class="col-lg-6">
                                <label for="phone">Số điện thoại<span>*</span></label>
                                <input type="text" id="phone" name="phone" value="{{ Auth::user()->phone }}" disabled>
                            </div>

                            <div class="col-lg-12">
                                <label for="street">Địa chỉ cụ thể<span>*</span></label>
                                <input type="text" id="address" class="street-first" name="address" disabled value="{{ Auth::user()->address }}">
                            </div>

                            <input type="hidden" value="{{ Auth::user()->id }}" name="user_id">

                        </div>
                    @else
                        <div class="row">
                            <div class="col-lg-6">
                                <label for="fir">Họ & Tên<span>*</span></label>
                                <input type="text" id="fullname" name="fullname" value="" required>
                            </div>

                            <div class="col-lg-6">
                                <label for="email">Email <span>*</span></label>
                                <input type="text" id="email" name="email" value="" required>
                            </div>
                            <div class="col-lg-6">
                                <label for="phone">Số điện thoại<span>*</span></label>
                                <input type="text" id="phone" name="phone" value="" required>
                            </div>

                            <div class="col-lg-12">
                                <label for="street">Địa chỉ cụ thể<span>*</span></label>
                                <input type="text" id="address" class="street-first" name="address" value="" required>
                            </div>
                            <input type="hidden" value="-1" name="user_id">
                            <div class="col-lg-12">
                                <div class="create-item">
                                    <label for="acc-create">
                                        <a href="{{url('/dang_ky')}}"> <span> Đăng ký tài khoản? </span> </a>
                                    </label>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
                <div class="col-lg-6">
                    <div class="checkout-content">
                        <input type="text" placeholder="Mã Giảm Giá(Nếu có)">
                    </div>
                    @if(Session::has('cart'))
                    <div class="place-order">
                        <h4>Đơn hàng của bạn</h4>
                        <div class="order-total">
                            <ul class="order-table">
                                <li>Sản phẩm <span>Tổng</span></li>
                                @foreach($product_cart as $product)
                                    <li class="fw-normal">
                                        {{ $product['item']['name_product'] }} x {{ $product['qty'] }}
                                        <span>{{ number_format($product['item']['unit_price'] * $product['qty']) }} đ</span>
                                    </li>
                                @endforeach
                                <li class="total-price">Total <span>{{ number_format($totalPrice) }} đ</span></li>
                                <input type="hidden" name="total" value="{{ $totalPrice }}">

                            </ul>
                            <div class="payment-check">
                                <div class="row">
                                    <span>Hình thức thanh toán:  </span>
                                    <select style="margin-left: 10px" name="type_pay" id="type_pay" required>
                                        <option value="0">Chọn . . . </option>
                                        <option value="1">Thanh toán khi nhận hàng </option>
                                        <option value="2">Thanh toán VNpay</option>
                                    </select>
                                </div>
                            </div>
                            <div class="order-btn">
                                <button type="submit" class="site-btn place-btn">Đặt hàng</button>
                                <button class="site-btn place-btn"> <a href="{{url('/cart')}}" >XEM GIỎ HÀNG</a></button>
                            </div>
                        </div>
                    </div>
                    @else
                        <div class="place-order">
                            <h4 class="text-center">Chưa có sản phẩm trong giỏ hàng</h4>
                        </div>
                    @endif
                </div>
            </div>
        </form>
    </div>
</section>
    <script>
        var msg1 = '{{Session::get('order_success')}}';
        var exist1 = '{{Session::has('order_success')}}';
        var exist2 = '{{Session::has('order_Nsuccess')}}';
        if(exist1){
            swal({
                title: "Đặt hàng thành công.",
                text: "",
                type: "success",
                timer: 1000,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
        if(exist2){
            swal({
                title: "Giỏ hàng rỗng !",
                text: "",
                type: "error",
                timer: 800,
                showConfirmButton: false,
                position: 'top-end',
            });
        }



    </script>
    <script>
        var msg1 = '{{Session::get('non_cate_pay')}}';
        var exist1 = '{{Session::has('non_cate_pay')}}';
        if(exist1){
            swal({
                title: "Chưa chọn hình thức thanh toán.",
                text: "",
                type: "info",
                timer: 1200,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
    </script>
    <script>
        var msg = '{{Session::get('errors')}}';
        var exist = '{{Session::has('errors')}}';
        if(exist){
            swal({
                title: "Xãy ra lỗi, hãy kiểm tra lại",
                text: "",
                type: "error",
                timer: 3000,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
    </script>
@endsection
