<?php

namespace App\Http\Controllers;
require 'vendor/autoload.php';
use App\Giohang;
use App\Khachhanng;
use App\Models\User;
use App\Order;
use App\OrderDetail;
use App\Product;
use App\Models\ProductView;
use App\Models\CategoryProduct;
use App\RatingStar;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Carbon;
use mysql_xdevapi\Table;
use mysql_xdevapi\TableSelect;
use phpDocumentor\Reflection\Types\Array_;
use phpDocumentor\Reflection\Types\This;
use validate;
use Session;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use function Symfony\Component\HttpFoundation\HeaderUtils;
use \DateTime;
use Carbon\Carbonl;
use Algenza\Cosinesimilarity\Cosine;


class TestController extends Controller
{

    public function index()
    {
        // bien mua nhieu trong bang product->lay 4 phan tu->la nhung phan tu update moi nhat
        $muanhieu = DB::table('products')->take(4)->latest()->get();
        $dienthoai = DB::table('products')->where('category_id',3)->take(8)->latest()->get();
        $ipad = DB::table('products')->where('category_id',4)->take(4)->latest()->get();
        if(Auth()->check()){
            $productView = DB::table('product_views')->where('user_id', Auth()->user()->id)
                ->take(3)->latest()->get();
            $rattingStart = DB::table('rating_stars')->where('user_id', Auth()->user()->id)
                ->take(3)->latest()->get();

            $listProduct = array();
            foreach ($productView as $val){
                array_push($listProduct, $val->product_id);
            }

            $productAppoints = DB::table('products')
                ->whereIn('id', $listProduct)->get();

            $listRatingStart = array();
            foreach ($rattingStart as $item){
                array_push($listRatingStart, $item->product_id);
            }

            $productRatingAppoints = DB::table('products')
                ->whereIn('id', $listRatingStart)->get();

            return view('customer.index')->with([
                'muanhieus' => $muanhieu,
                'dienthoais' => $dienthoai,
                'ipads'=>$ipad,
                'productAppoints' => $productAppoints,
                'productRatingAppoints' => $productRatingAppoints
            ]);
        }

        return view('customer.index')->with([
            'muanhieus' => $muanhieu,
            'dienthoais' => $dienthoai,
            'ipads'=>$ipad
        ]);

    }

    //too function, truyen vao id san pham,
    public function  product($id){
        //su dung find truyen vao $id
        $product = Product::find($id);
        $detail_product = DB::table('detail_products')->where('product_id', $id)->get();
        return view('customer.product')->with([
            'product'=> $product,
            'product_detail' => $detail_product
        ]);
    }
    public function  viewProduct($id, $userId){
        //su dung find truyen vao $id
        $product = Product::find($id);
        $detail_product = DB::table('detail_products')->where('product_id', $id)->get();

        $viewProduct = DB::table('product_views')->where('product_id', $id)
            ->where('user_id', $userId)->first();
        if(empty($viewProduct)){
            $productView = new ProductView();
            $productView->user_id = $userId;
            $productView->product_id = $id;
            $productView->number = 1;
            $productView->save();
        }else{
            DB::table('product_views')->where('product_id', $id)
                ->where('user_id', $userId)
                ->update(['number' => $viewProduct->number + 1]);
        }

        return view('customer.product')->with([
            'product'=> $product,
            'product_detail' => $detail_product
        ]);
    }
//tao function truyen vao id danh muc san pham
    public function  danhmuc($id){
        $product = Product::find($id);
        $danhmuc_sp = DB::table('products')->where('category_id', $id)->get();
        $cate=DB::table('categories')->where('id',$id)->get();
        return view('customer.danhmuc')->with([
            'danhmucs'=> $danhmuc_sp,
            'cates'=>$cate
        ]);
    }
  //  public function product_items($id){
 //       foreach($id){
  //           $product = product::where('id',$id)->get();
  //      }
  //      return view('customer.product_item',compact('product'));
 //   }


    public function logout(){
        Auth::logout();
        return redirect()->route('home');
    }

    public function  page_login(){
        return view('customer.login_page');
    }
    public function  thanhtoan(){
        return view('customer.thanhtoan');
    }

    public function checkLogin(Request $request){

        $email = $request->input('email');
        $password = $request->input('password');

        if(Auth::attempt(['email' => $email, 'password' => $password, 'role_id' => 1])){
            return redirect()->route('voyager.dashboard');
        }elseif (Auth::attempt(['email' => $email, 'password' => $password, 'role_id' => 2])){
            return redirect()->route('home');
        }else{
            return redirect()->back()->with('message', 'Email hoặc mật khẩu của bạn không đúng!');
        }
    }

    public function loginPost(Request $request){
        $email = $request->input('email');
        $password = $request->input('password');
        echo $email;
    }

    public function  dang_ky(){
        return view('customer.dang_ky');
    }

    //kiem tra du lieu dau vao o form dang ky
    public function postDangKy(Request $res){

        $this->validate(
            $res,
            [
                'email' => 'required|unique:users,email',
                'ten' => 'required',
                'matkhau' => 'required',
                'xn_matkhau' => 'required',
                'sodienthoai' => 'required',
                'diachi' => 'required'
            ],
            [
                'email.unique' => 'Email đã tồn tại',
                'email.required' => 'Vui lòng nhập email',
                'ten.required' => 'Vui lòng nhập tên',
                'matkhau.required' => 'Vui lòng nhập mật khẩu',
                'xn_matkhau.required' => 'Vui lòng xác nhận mật khẩu',
                'sodienthoai.required' => 'Vui lòng nhập số điện thoại',
                'diachi.required' => 'Vui lòng nhập địa chỉ'
            ]
        );

        $hoten = $res->input('ten');
        $email = $res->input('email');
        $matkhau = $res->input('matkhau');
        $xn_mt_khau = $res->input('xn_matkhau');
        $diachi = $res->input('diachi');
        $sodienthoai = $res->input('sodienthoai');
        // kiem tra mat khau co trung khong
        if(strcasecmp($matkhau, $xn_mt_khau) != 0){
           return redirect()->back()->with('message', 'Xác nhận mật khẩu sai');
        }else{
            $user = new User;
            $user->name = $hoten;
            $user->role_id = 2;
            $user->email = $email;
            $user->password = bcrypt($matkhau);
            $user->address = $diachi;
            $user->phone = $sodienthoai;
            $user->save();
            $register_success = Session::get('register_success');
            Session::put('register_success');

            return redirect()->route('get_login')->with('register_success', 'Đăng ký tài khoản thành công');
        }
    }


    public function cart()
    {
        if (Session::has('cart')){
            return view('customer.cart');
        }else{
            Session::put('no_item_cart');
            return redirect()->back()->with('no_item_cart', 'Giỏ hàng rỗng');

        }
    }



    public function addCard($id, Request $request){
        $product = Product::find($id);
        $oldCart = Session('cart')?Session::get('cart'):null; // neu co session cart thi lay cart, khoong thi null

        $cart = new Giohang($oldCart);
        $cart->add($product, $id);
        $request->session()->put('cart', $cart);

        $add_cart_success = Session::get('add_cart_success');
        Session::put('add_cart_success');
        return redirect()->back()->with('add_cart_success', 'Đã thêm vào giỏ hàng');
    }


    public function updateCart(Request $request){

        if($request->id and $request->quantity){
            $oldCart = Session::has('cart')?Session::get('cart'):null;
            $cart = new Giohang($oldCart);
            $cart->update_cart($request->id,$request->quantity);
            session()->put('cart', $cart);
        }
    }

    public function getDeleteCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Giohang($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>=0){
            Session::put('cart', $cart);
        }else{
            Session::forget('cart');

        }
        $delete_cart = Session::get('delete_cart');
        Session::put('delete_cart');

        return redirect()->back()->with('delete_cart', 'Đã xóa sản phẩm ra khỏi giỏ hàng');
    }
//
    public function datHang(Request $request){
        $cart = Session::get('cart');
        if(count($cart->items)==0){
            Session::put('order_Nsuccess');
            return redirect()->back()->with('order_Nsuccess','Giỏ hàng rỗng!');
        }else {
            $user_id = $request->input('user_id');

            if($user_id == -1) {
                $kh = new Khachhanng;
                $kh->hoten = $request->input('fullname');
                $kh->email = $request->input('email');
                $kh->sdt = $request->input('phone');
                $kh->diachi = $request->input('address');
                $kh->save();

                $order = new Order;
                $order->user_id = $kh->id;
                $order->order_date = Carbon::now();
                $order->total_money = $request->input('total');
                $order->status = 'Mới đặt hàng';
                $order->save();
            } else {
                $order = new Order;
                $order->user_id = $request->input('user_id');
                $order->order_date = Carbon::now();
                $order->total_money = $request->input('total');
                $order->status = 'Mới đặt hàng';
                $order->save();
            }

            foreach ($cart->items as $key => $value) {
                $orderDetail = new OrderDetail;
                $orderDetail->order_id = $order->id;
                $orderDetail->product_id = $key;
                $orderDetail->quantity = $value['qty'];
                $orderDetail->unit_price = ($value['price'] / $value['qty']);
                $orderDetail->save();
            }
            Session::forget('cart');

            $order_success = Session::get('order_success');
            Session::put('order_success');
            return redirect()->back()->with('order_success', 'Đặt hàng thành công');

        }
    }
//    public function search(Request $req){
//        $product = product::where('name_product','like','%'.$req->key.'%')
//            ->orwhere('unit_price',$req->key)
//            ->get();
//        $temp=$req->key;
//        return view('customer.search',compact('product'))->with([
//            'temp'=>$temp
//        ]);
//}
    public function searchProduct(Request $request){
        $keyWord = $request->input('srch-term');
        $products = DB::table('products')->where('name_product', 'LIKE', '%'.$keyWord.'%')->paginate(8);
        $count = DB::table('products')->where('name_product', 'LIKE', '%'.$keyWord.'%')->count();
        return view('customer.search')->with([
            'products' => $products,
            'count' => $count,
            'keyWord'=>$keyWord
        ]);
    }
    public function product_item($temp,Request $request){
        $keyWord = $request->input('srch-term');
        $product = product::where('name_product','like','%'.$temp.'%')->get();
        return view('customer.product_item',compact('product'))->with([
            'temp'=>$temp
        ]);
    }

    public function info_user($adi){
        $user_info = user::where('id',$adi)->get();
        $user_order=DB::table('orders')->where('user_id',$adi)->select('id','total_money','order_date','status')->get();
        return view('customer.info_user')->with([
           'info_u'=>$user_info,
            'user_order'=>$user_order
        ]);
    }
    public function detail_cart($ido){
        $id_us = DB::table('orders')->where('id',$ido)->get();
        return view('customer.detail_cart')->with([
            'id_us'=>$id_us,
        ]);
    }

    public function getProfile($userId){
        $user = DB::table('users')->where('id', $userId)->first();
        return view('customer.thong_tin')->with([
            'user' => $user
        ]);
    }

    public function updateProfile($userId, Request $request){
        $update_user = \TCG\Voyager\Models\User::find($userId);
        $update_user->name = $request->input('inputUsername');
        $update_user->email = $request->input('inputEmail');
        $update_user->phone = $request->input('inputPhone');
        $update_user->address = $request->input('inputAddress');

        if ($request->hasFile('fileInput')) {
            $file = $request->file('fileInput');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('img/avatar/'), $filename);
            $update_user->avatar = $filename;
        }

        $update_user->save();
        return redirect()->back()->with('update_success', 'Đã cập nhật');
    }

    public function changePassword($userId){
        $change_pass = User::find($userId);
        return view('customer.change_password', ['user'=>$change_pass]);
    }

    public function updatePassword($userId, Request $request)
    {
        $old_pass = $request->input('inputPassOld');
        $new_pass = $request->input('inputPassNew');
        $new_pass_confirm = $request->input('inputPassConfirmNew');

        $change = User::find($userId);

        $user = DB::table('users')->where('id', $userId)->first();
        if(password_verify($old_pass,$user->password)){
            if($new_pass == $new_pass_confirm){
                $change->password = bcrypt($request->input('inputPassConfirmNew'));
                $change->save();
                return redirect()->route('getProfile', $change->id)->with('change_password_successfully', 'Đổi mật khẩu thành công');
            }else{
                return redirect()->back()->with('change_password_user_fail', 'Xác nhận mật khẩu sai!');
            }
        }else{
            return redirect()->back()->with('old_pass_fail','Mật khẩu cũ sai!');
        }
    }

    public function postRatingStar($userId, $productId, Request $request){
        $get_count_rating = DB::table('rating_stars')->where([['user_id', '=', $userId], ['product_id', '=', $productId]])->count();
        if ($get_count_rating >= 1){
            Session::put('message_error');
            return redirect()->back()->with('message_error', 'Bạn đã đánh giá rồi!');
        }else{
            $add_rating = new RatingStar();
            $add_rating->rating_star = $request->input('rating');
            $add_rating->user_id = $userId;
            $add_rating->product_id = $productId;
            $add_rating->save();
            Session::put('message_success');
            return redirect()->back()->with('message_success', 'Đã đánh giá SAO');
        }
    }
    function getSimilarity(array $matrixx, $item, $otherProduct){
        $tongtu=0;
        $tongmauI=0;
        $tongmauO=0;

        for ($i = 1; $i <= 5; $i++){

            $tongtu += ($matrixx[$i][$item]*$matrixx[$i][$otherProduct]);
            $tongmauI += $matrixx[$i][$item]*$matrixx[$i][$item];
            $tongmauO += $matrixx[$i][$otherProduct]*$matrixx[$i][$otherProduct];
        }

        $mauso=sqrt($tongmauI)*sqrt($tongmauO);
        $cos=round($tongtu/$mauso,2);
        return $cos;
    }

//    function getRecommendation(array $matrix,$user){
//        $total = [];
//        for ($i = 0;$i <= 7;$i++ ){
//            $total[0][$i]=$i-1;
//        }
//        for ($i = 1;$i <= 7;$i++ ){
//            $total[$i][0]=$i-1;
//        }
//        $total[0][0]=0;
//        $sim=0;
//
//        for ($i=1; $i<=7;$i++) {
//            if ($i != $user) {
//                $sim = self::getSimilarity($matrix, $user, $i);
//                $total[$i][$user] = $sim;
//            } else {
//                $total[$i][$user] = 1;
//            }
//        }
//
//        $arrtemp = [];
//        for ($i=1;$i<=5; $i++){
//            if($matrix[$i][$user] == 0){
//                for ($j=1;$j<=7;$j++){
//                    if ($matrix[$i][$j]!=0){
//                        $arrtemp[$i][$j]=$matrix[$i][$j];
//                    }else $arrtemp[$i][$j]=0;
//                }
//            }else $arrtemp[$i]=0;
//        }
//
//        for ($i=1;$i<=5; $i++){
//                for ($j=1;$j<=7;$j++){
//                    echo "__".$arrtemp[$i][$j];
//                }
//                echo "<br>";
//            }
//        }
//
//
////    public function tests(){
////        //du lieu bang cham diem
////        //$racting = DB::table('rating_stars')->get();
////        //du lieu trong bang item
////        //$item = DB::table('products')->select('id')->get();
////        //du lieu trong bang user
////        //$user = DB::table('users')->select('id')->get();
////        //$demitem=count($item);
////        //$demuser=count($user);
////        //$userID = Auth::id();
////        $matrix[][9] = array();
////
////        $matrix[0][0]=0;
////
////        $matrix[0][1]=1;
////        $matrix[0][2]=2;
////        $matrix[0][3]=3;
////        $matrix[0][4]=4;
////        $matrix[0][5]=5;
////
////
////
////        $matrix[1][0]=1;
////        $matrix[1][1]=5;
////        $matrix[1][2]=4;
////        $matrix[1][3]=-1;
////        $matrix[1][4]=2;
////        $matrix[1][5]=2;
////
////
////        $matrix[2][0]=2;
////        $matrix[2][1]=5;
////        $matrix[2][2]=-1;
////        $matrix[2][3]=4;
////        $matrix[2][4]=2;
////        $matrix[2][5]=0;
////
////
////        $matrix[3][0]=3;
////        $matrix[3][1]=2;
////        $matrix[3][2]=-1;
////        $matrix[3][3]=1;
////        $matrix[3][4]=3;
////        $matrix[3][5]=4;
////
////
////        $matrix[4][0]=4;
////        $matrix[4][1]=0;
////        $matrix[4][2]=0;
////        $matrix[4][3]=-1;
////        $matrix[4][4]=4;
////        $matrix[4][5]=-1;
////
////        $matrix[5][0]=5;
////        $matrix[5][1]=1;
////        $matrix[5][2]=-1;
////        $matrix[5][3]=-1;
////        $matrix[5][4]=4;
////        $matrix[5][5]=-1;
////
////        $matrix[6][0]=6;
////        $matrix[6][1]=-1;
////        $matrix[6][2]=2;
////        $matrix[6][3]=1;
////        $matrix[6][4]=-1;
////        $matrix[6][5]=-1;
////
////        $matrix[7][0]=7;
////        $matrix[7][1]=-1;
////        $matrix[7][2]=-1;
////        $matrix[7][3]=1;
////        $matrix[7][4]=4;
////        $matrix[7][5]=5;
////
////        $arrtemp = array();
////        for ($i = 1 ; $i <= 7 ; $i++){
////            $dem=0;
////            $chay=0;
////            for ($j = 1; $j <= 5; $j++){
////               if($matrix[$i][$j] == -1){
////                   //$matrix[$j][$i]=0;
////               }else{
////                   $dem=$dem+$matrix[$i][$j];
////                   $chay++;
////               }
////            }
////            $arrtemp[$i]=round($dem/$chay,2);
////        }
////
////        for ($i=1;$i<=7;$i++){
////            echo "__".$arrtemp[$i];
////        }
////        echo "<br>--------------";
////        echo "<br>";
////        for ($i = 1 ; $i <= 7 ; $i++){
////            for ($j = 1; $j <= 5; $j++){
////                if($matrix[$i][$j] == -1){
////                    $matrix[$i][$j]=0;
////                }else{
////                    $matrix[$i][$j]=$matrix[$i][$j]-$arrtemp[$i];
////                }
////            }
////        }
////
//////        $arrkq[][10] = array();
//////        $arrkq = self::getRecommendation($matrix,1);
//////        foreach ($arrkq as $kq => $arrkqs){
//////            echo "__".$kq;
//////        }
////        //ham in
////        for ($i=0;$i <= 7;$i++){
////            for ($j=0;$j <= 5;$j++){
////                if ($matrix[$i][$j] == -1){
////                    echo "__N";
////                }else{
////                    echo "__".$matrix[$i][$j];
////                }
////            }
////            echo "<br>";
////        }
////
////    }
//
////    public function tests(){
////        //du lieu bang cham diem
////        //$racting = DB::table('rating_stars')->get();
////        //du lieu trong bang item
////        //$item = DB::table('products')->select('id')->get();
////        //du lieu trong bang user
////        //$user = DB::table('users')->select('id')->get();
////        //$demitem=count($item);
////        //$demuser=count($user);
////        //$userID = Auth::id();
////        $matrix = [];
////
////
////
////        $matrix[0][0]=5;
////        $matrix[0][1]=5;
////        $matrix[0][2]=2;
////        $matrix[0][3]=0;
////        $matrix[0][4]=1;
////        $matrix[0][5]=-1;
////        $matrix[0][6]=-1;
////
////        $matrix[1][0]=4;
////        $matrix[1][1]=-1;
////        $matrix[1][2]=-1;
////        $matrix[1][3]=0;
////        $matrix[1][4]=-1;
////        $matrix[1][5]=2;
////        $matrix[1][6]=-1;
////
////        $matrix[2][0]=-1;
////        $matrix[2][1]=4;
////        $matrix[2][2]=1;
////        $matrix[2][3]=-1;
////        $matrix[2][4]=-1;
////        $matrix[2][5]=1;
////        $matrix[2][6]=1;
////
////        $matrix[3][0]=2;
////        $matrix[3][1]=2;
////        $matrix[3][2]=3;
////        $matrix[3][3]=4;
////        $matrix[3][4]=4;
////        $matrix[3][5]=-1;
////        $matrix[3][6]=4;
////
////        $matrix[4][0]=2;
////        $matrix[4][1]=0;
////        $matrix[4][2]=4;
////        $matrix[4][3]=-1;
////        $matrix[4][4]=-1;
////        $matrix[4][5]=-1;
////        $matrix[4][6]=5;
////
////
////
////        $arrtemp = array();
////        for ($i =0  ; $i < 7 ; $i++){
////            $dem=0;
////            $chay=0;
////            for ($j = 0; $j < 5; $j++){
////                if($matrix[$j][$i] == -1){
////                    //$matrix[$j][$i]=0;
////                }else{
////                    $dem=$dem+$matrix[$j][$i];
////                    $chay++;
////                }
////            }
////            $arrtemp[$i]=round($dem/$chay,2);
////        }
////
//////        for ($i=1;$i<=7;$i++){
//////            echo "__".$arrtemp[$i];
//////        }
////        for ($i = 0 ; $i < 7 ; $i++){
////            for ($j = 0; $j < 5; $j++){
////                if($matrix[$j][$i] == -1){
////                    $matrix[$j][$i]=0;
////                }else{
////                    $matrix[$j][$i]=$matrix[$j][$i]-$arrtemp[$i];
////                }
////            }
////        }
////
////
////        for ($i=0;$i < 5;$i++){
////            for ($j=0;$j < 7;$j++){
////                if ($matrix[$i][$j] == -1){
////                    echo "\t__N";
////                }else{
////                    echo "\t__".$matrix[$i][$j];
////                }
////            }
////            echo "<br>";
////        }
////        $arrkq=self::getRecommendation($matrix,1);
////
////        print_r($arrkq);
////        //ham in
//////        for ($i=0;$i <= 5;$i++){
//////            for ($j=0;$j <= 7;$j++){
//////                if ($matrix[$i][$j] == -1){
//////                    echo "\t__N";
//////                }else{
//////                    echo "\t__".$matrix[$i][$j];
//////                }
//////            }
//////            echo "<br>";
//////        }
////    }
//    public function tests(){
//
//        $matrix = [];
//        for ($i = 0; $i <= 7; $i++) {
//            $matrix[0][$i + 1] = $i;
//        }
//        for ($i = 0; $i <= 5; $i++) {
//            $matrix[$i + 1][0] = $i;
//        }
//        $matrix[1][1] = 5;
//        $matrix[1][2] = 5;
//        $matrix[1][3] = 2;
//        $matrix[1][4] = 0;
//        $matrix[1][5] = 1;
//        $matrix[1][6] = -1;
//        $matrix[1][7] = -1;
//
//        $matrix[2][1] = 4;
//        $matrix[2][2] = -1;
//        $matrix[2][3] = -1;
//        $matrix[2][4] = 0;
//        $matrix[2][5] = -1;
//        $matrix[2][6] = 2;
//        $matrix[2][7] = -1;
//
//        $matrix[3][1] = -1;
//        $matrix[3][2] = 4;
//        $matrix[3][3] = 1;
//        $matrix[3][4] = -1;
//        $matrix[3][5] = -1;
//        $matrix[3][6] = 1;
//        $matrix[3][7] = 1;
//
//        $matrix[4][1] = 2;
//        $matrix[4][2] = 2;
//        $matrix[4][3] = 3;
//        $matrix[4][4] = 4;
//        $matrix[4][5] = 4;
//        $matrix[4][6] = -1;
//        $matrix[4][7] = 4;
//
//        $matrix[5][1] = 2;
//        $matrix[5][2] = 0;
//        $matrix[5][3] = 4;
//        $matrix[5][4] = -1;
//        $matrix[5][5] = -1;
//        $matrix[5][6] = -1;
//        $matrix[5][7] = 5;
//
//        $matrix[0][0] = null;
//
//        $arrtemp = array();
//        for ($i = 1; $i <= 7; $i++) {
//            $dem = 0;
//            $chay = 0;
//            for ($j = 1; $j <= 5; $j++) {
//                if ($matrix[$j][$i] == -1) {
//                    //$matrix[$j][$i]=0;
//                } else {
//                    $dem = $dem + $matrix[$j][$i];
//                    $chay++;
//                }
//            }
//            $arrtemp[$i] = round($dem / $chay, 2);
//        }
//
//        for ($i = 1; $i <= 7; $i++) {
//            for ($j = 1; $j <= 5; $j++) {
//                if ($matrix[$j][$i] == -1) {
//                    $matrix[$j][$i] = 0;
//                } else {
//                    $matrix[$j][$i] = $matrix[$j][$i] - $arrtemp[$i];
//                }
//            }
//        }
//        $matrix[0][0] = 0;
//
//
//        self::getRecommendation($matrix, 2);
//
//        echo "<br>";
//
//        for ($i = 0; $i <= 5; $i++) {
//            for ($j = 0; $j <= 7; $j++) {
//                if ($matrix[$i][$j] == -1) {
//                    echo "\t__N";
//                } else {
//                    echo "\t__" . $matrix[$i][$j];
//                }
//            }
//            echo "<br>";
//        }
//
//
//
//    }


}
