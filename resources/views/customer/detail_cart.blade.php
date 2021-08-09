
@extends('layout.master')

@section('title', 'Chi tiết đơn hàng ' )
@section('custom_detail_cart')

@endsection

@section('content')
    <br>
    <div class="container" style="font-family: Calibri ; background-color: #E0E1D9">
        @foreach($id_us as $iu)
            <p style="text-align: center;font-size: 22px; padding-top: 5px; color: black"><u><b>ĐƠN HÀNG {{$iu->id}}</b></u></p>
        <div class="row">
            <div class="col-md-5">
                <table class="table" style="width: 100%;margin-left: 10px">
                    <tbody>

                    @php($cart_user = DB::table('users')->where('id',$iu->user_id)->get())
                         @foreach($cart_user as $cart_u)
                            <tr>
                                <td scope="row" style="width: 40%"><i class="fas fa-user"></i><b> Họ Và Tên: </b></td>
                                <td>{{$cart_u->name}}</td>
                            </tr>
                            <tr>
                                <td scope="row"> <i class="fas fa-map-marked-alt"></i> <b> Địa chỉ nhận hàng</b></td>
                                <td>{{$cart_u->address}}</td>
                            </tr>
                            <tr>
                                <td scope="row"><i class="fas fa-phone"></i><b> Số điện thoại</b></td>
                                <td>{{$cart_u->phone}}</td>
                            </tr>
                            <tr>
                                <td scope="row"><i class="fas fa-mail-forward"></i><b> Email: </b></td>
                                <td>{{$cart_u->email}}</td>
                            </tr>
                        @endforeach

                    </tbody>

                </table>
            </div>
            <div class="col-md-2"></div>
            <div class="col-md-5">
                <table class="table" style="width: 100%;margin-left: 10px">
                    <tbody>

                        @php($status_o=DB::table('sttorders')->where('id',$iu->status)->get())
                        <tr>
                            <td scope="row" style="width: 50%; text-align: right"><b>Ngày tạo đơn: </b></td>
                            <td>{{$iu->order_date}}</td>
                        </tr>
                        <tr>
                            <td scope="row" style="text-align: right"><b>Tình Trạng Đơn Hàng: </b></td>
                            @foreach($status_o as $stto)
                                <td> {{$stto->namestt}} </td>
                            @endforeach
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
           <div class="col-md-12">
               <table style="width: 100%; margin-left: 10px">
                   <tr style="height: 30px; border-bottom: solid black 1px">
                       <th> Tên Sản Phẩm</th>
                       <th>Giá Sản phẩm</th>
                       <th>Số lượng</th>
                       <th>Chiết khấu</th>
                       <th>Đơn giá</th>
                   </tr>
                   @php($product_cart=DB::table('order_details')->where('order_id',$iu->id)->get())
                   @foreach($product_cart as $p_cart)
                       @php($product_d=DB::table('products')->where('id',$p_cart->product_id)->get())
                            @foreach($product_d as $pd)
                               <tr style="height: 30px; border-bottom: solid black 1px">
                                   <td >{{$pd->name_product}}</td>
                                   <td>{{number_format($pd->unit_price)}} VNĐ</td>
                                   <td>{{$p_cart->quantity}}</td>
                                   <td>0%</td>
                                   <td>{{number_format($p_cart->unit_price*$p_cart->quantity)}}</td>
                               </tr>
                            @endforeach
                   @endforeach
               </table>
           </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-7"></div>
            <div class="col-md-5">
                <table class="table" style="width: 100%;margin-left: 10px">
                    <tbody>
                    @foreach($id_us as $iu)
                        <tr>
                            <td scope="row" style="width: 40%; text-align: left"><b>Tạm Tính: </b></td>
                            <td style="">{{number_format($iu->total_money)}} VNĐ</td>
                        </tr>
                        <tr>
                            <td scope="row" style="text-align: left"><b>Chiết Khấu </b></td>
                            <td> 0% </td>
                        </tr>
                        <tr>
                            <td scope="row" style="text-align: left"><b>Tổng Tiền </b></td>
                            <td>{{number_format($iu->total_money)}} VNĐ</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        @endforeach
    </div>
@endsection
