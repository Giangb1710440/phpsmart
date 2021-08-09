@extends('layout.master')
@section('title','ĐĂNG KÝ')
@section('content')

<hr style="border-style: revert;border-width: 5px;margin-top: 4px">
<br>
<div class="container ctn1 ">
    <div class="row">
        <div class="col-md-12">
            <p style="font-family: Apple;font-size: 25px;margin-top: 25px;color: #f2800c">  <i class="fas fa-user-plus" style="width: 20px;height: 20px"></i> &nbsp ĐĂNG KÝ.</p>
            <hr style="border-style: solid;border-width: 1px ">
            <p style="font-family: Apple;font-size: 16px">  *Nếu bạn có một tài khoản, xin vui lòng chuyển qua trang <a href="{{url('/login_page')}}" style="font-family: Apple;font-size: 16px"> Đăng nhập</a></p>

            @if(session()->has('message'))
                <p><strong style="color: red; text-align: center">{{ session('message') }}</strong></p>
            @endif

            <form action="{{ url('/post_dang_ky') }}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 19px;" for="usr">Họ Tên</label>
                    <input style="height: 40px" type="text" class="form-control" name="ten" maxlength="45" placeholder="Tên">
                    <strong style="color: red;">{{ $errors->first('ten') }}</strong>
                </div>

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 19px;" for="usr"> Email</label>
                    <input style="height: 40px"   type="text" class="form-control" name="email" id="email" maxlength="45" placeholder="Email" onblur="return isEmail()">
                    <strong style="color: red;">{{ $errors->first('email') }}</strong>
                </div>

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 19px;" for="usr"> Mật khẩu</label>
                    <input style="height: 40px" type="password" class="form-control" name="matkhau" maxlength="20" placeholder="Mật khẩu">
                    <strong style="color: red;">{{ $errors->first('matkhau') }}</strong>
                </div>

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 19px;" for="usr"> Xác nhận mật khẩu</label>
                    <input style="height: 40px" type="password" class="form-control" name="xn_matkhau" maxlength="20" placeholder="Nhập lại mật khẩu">
                    <strong style="color: red;">{{ $errors->first('xn_matkhau') }}</strong>
                </div>

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 19px;" for="usr"> Địa chỉ</label>
                    <input style="height: 40px" type="text" class="form-control" name="diachi" maxlength="255" placeholder="Địa chỉ">
                    <strong style="color: red;">{{ $errors->first('diachi') }}</strong>
                </div>

                <div class="form-group">
                    <label style="font-family: Apple;font-size: 19px;" for="usr"> Số điện thoại</label>
                    <input style="height: 40px" type="text" class="form-control" id="sodienthoai" name="sodienthoai" maxlength="25" placeholder="Số điện thoại" onblur="return Test_numberphone()">
                    <strong style="color: red;">{{ $errors->first('sodienthoai') }}</strong>
                </div>


               <span>
                        <button style="font-family: Apple" type="submit" class="btn btn-primary">Tạo tài khoản</button></span>
            </form>

        </div>
    </div>
</div>

<script>
    function Test_numberphone(){
        var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        var mobile = $('#sodienthoai').val();
        if(mobile !==''){
            if (vnf_regex.test(mobile) == false)
            {
                alert('Số điện thoại không đúng định dạng. Vui lòng nhập lại');
            }
        }
    }
    function isEmail() {
        var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        var email = $('#email').val();
        if(email !==''){
            if(regex.test(email) == false){
                alert('Email không đúng định dạng. Vui lòng nhập lại');
            }
        }
    }
</script>



<br>
<hr>
<hr>
@endsection
