
@extends('layout.master')

@section('title', 'Thông tin ' )
@section('custom_info_user')
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
@endsection

@section('content')

    <br>
<div class="container">
    <div class="row">
        <div class="col-md-3" style="text-align: center; background-color:#D0CEBB ;border: 0 solid rgba(0,0,0,.125)">
            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150"style="margin-top: 10px">
            @foreach($info_u as $inu)
                <h4 style="text-align: center"><b>{{$inu->name}}</b></h4>
                <p class="text-secondary mb-1" style="text-align: center">Địa chỉ:{{$inu->address}}</p>
                <p class="text-muted font-size-sm" style="text-align: center">SĐT: {{$inu->phone}}</p>
            @endforeach
        </div>

        <div class="col-ld-9" style="padding: 1px; min-height: 200px; margin-left: 10px; ">
            <style type="text/css">
                .tb1, th, td{
                    border-top:1px solid #CAA9C7;
                    border-bottom:1px solid #CAA9C7;
                }
                .tb1{
                    background-color: #D0CEBB;
                    border: 1px solid #CAA9C7;
                    border-collapse:collapse;
                    width:100%;
                    height: 100%;
                }
                th, td{
                    text-align:left;
                    padding:10px;
                }
            </style>
            <table class="tb1">
                <tr style="background-color:#907952 ">
                    <th colspan="6" style="text-align: center; color: #3b3b3b;font-size: 18px;font-family: Apple">
                        <b>Đơn hàng</b>
                    </th>
                </tr>
                <tr>
                    <td>STT</td>
                    <td>Mã Đơn hàng</td>
                    <th>Sản phẩm</th>
                    <th>Tổng Tiền</th>
                    <th>Ngày đặt hàng</th>
                    <th>Tình trạng đơn hàng</th>
                </tr>

                <p hidden="hidden">@php($i=0)</p>
                @foreach($user_order as $u_order)
                <tr>
                    <td>{{++$i}}</td>

                    <td><a href="{{url('/detail_cart',$u_order->id)}}">Order{{$u_order->id}}</a></td>
                    <th>
                        @php($sql_detail = DB::table('order_details')->where('order_id',$u_order->id)->get())
                        @foreach($sql_detail as $sql_d)
                            @php($sql_sp = DB::table('products')->where('id',$sql_d->product_id)->value('name_product'))
                           <p>{{$sql_sp}} (X{{$sql_d->quantity}}) </p>
                        @endforeach
                    </th>
                    <th>{{number_format($u_order->total_money)}} VNĐ</th>
                    <th> {{$u_order->order_date}} </th>

                    <th>
                            @php($stt_order=DB::table('sttorders')->where('id',(int)$u_order->status)->get())
                            @foreach($stt_order as $stto)
                                {{$stto->namestt}}
                            @endforeach
                    </th>
                </tr>

                @endforeach
            </table>
        </div>
    </div>
    <br>
</div>
<script>
    $(function() {
        $('.date').datepicker();
    });
</script>
@endsection
