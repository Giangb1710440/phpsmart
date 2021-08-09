@extends('layout.master')
@section('title','ĐĂNG NHẬP')
@section('content')

    <hr style="border-style: revert;border-width: 5px;margin-top: 4px">
<br>
<div class="container ctn1 ">
	<div class="row">

        <div class="col-md-5">
            <p style="font-family: Apple;font-size: 25px;margin-top: 25px;color: #f2800c">  <i class="fas fa-sign-in-alt" style="width: 20px;height: 20px"></i> &nbsp ĐĂNG NHẬP.</p>
            <hr style="border-style: solid;border-width: 1px ">
            <p style="font-family: Apple;font-size: 20px">Nếu bạn có một tài khoản,xin vui lòng đăng nhập.</p>

            @if(session()->has('message'))
                <p><strong style="color: red; text-align: center">{{ session('message') }}</strong></p>
            @endif

            <form action="{{ route('postLogin') }}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 20px" for="usr"> Tên đăng nhập</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email/Tên đăng nhập">
                </div>

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 20px" for="pwd">Mật khẩu</label>
                    <input  type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu">
                </div>
                <a href=""> <p style="font-family: Apple;font-size:20px">Quên mật khẩu?</p></a>

                <a class="site-button-dark" id="show-form">
                    <span><button style="font-family: Apple" type="submit" class="btn btn-primary">ĐĂNG NHẬP</button></span>
                </a>
            </form>


        </div>

        <div class="col-md-1" style="">

        </div>
         <div class="col-md-6" style="background-color: #f8f8f8;padding-top: 10px">
             <p style="font-family: Apple;font-size: 25px;margin-top: 25px;color: #f2800c">  <i class="fas fa-user" style="width: 20px;height: 20px"></i> &nbsp KHÁCH HÀNG MỚI.</p>
             <hr style="border-style: solid;border-width: 1px ">
             <p style="font-family: Apple;font-size: 16px">Đăng ký tài khoản để mua hàng nhanh hơn.
                 Theo dõi đơn đặt hàng, vận chuyển.
                 Cập nhật các tin tức sự kiện và các chương trình giảm giá của chúng tôi.</p>
             <a href="{{url('/dang_ky')}}" class="site-button-dark" id="show-form"><span>
                     <button style="font-family: Apple" class="btn btn-primary">ĐĂNG KÝ</button></span></a>
        </div>
    </div>

</div>
<br>
<hr>
<hr>

    <script>
        var msg1 = '{{Session::get('register_success')}}';
        var exist1 = '{{Session::has('register_success')}}';
        if(exist1){
            swal({
                title: "Đã đăng ký tài khoản thành công.",
                text: "",
                type: "success",
                timer: 2000,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
    </script>
@endsection
