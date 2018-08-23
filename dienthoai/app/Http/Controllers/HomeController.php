<?php

namespace App\Http\Controllers;

use App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Hash;
use Auth;
use App\User;
use DateTime;

class HomeController extends Controller
{
    public function index()
    {
    	$pro_date = $this->get_product_new();
        $pro_access = $this->get_product_access();
		return view('home', ['get_product_new'=>$pro_date, 'get_product_access'=>$pro_access]);
    }

    public function lienhe()
    {
		return view('lienhe');
    }


	public function chitiet(Request $request)
    {
        $id = $request->get('id');
    	$id_pro = $this->get_product_by_id($request);
        // Tăng lượt truy cập 1 sản phẩm cụ thể lên 1
        DB::table('products')->where('ProID', $id)->increment('CountView', 1);
		return view('chitiet', ['get_info'=>$id_pro]);
    }

    public function catid(Request $request)
    {
    	$id_cate = $this->get_product_by_cat_id($request);
		return view('catid', ['get_info'=>$id_cate]);
    }

    public function typeid(Request $request)
    {
    	$id_type = $this->get_product_by_type_id($request);
		return view('typeid', ['get_info'=>$id_type]);
    }

    public function typecamera(Request $request)
    {
        $id_type = $this->get_product_by_type_camera($request);
        return view('typecamera', ['get_info'=>$id_type]);
    }

    public function dathang(Request $request)
    {
             // hàm get_product_by_id() lấy tất cả nội dung của 1 sản phẩm theo ProID
    	$id_pro = $this->get_product_by_id($request);
           // hàm post_all_infomation() lấy tất cả nội dung trong form vừa gửi qua:
    	$inf = $this->post_all_infomation($request);
        $check = $this->check_bought($request);
		$orderID = Auth::User()->id;
	    $proID = $inf['id'];
	    $sl = $inf['txtQuantity'];
        $inStock = $id_pro[0]->Quantity;
        if(isset($check[0]->ID))
        {
            return redirect()->back()->with('fail1', 'Sản phẩm đã có trong giỏ hàng. Mời chọn lại');
        }
        if($sl > $inStock)
        {
            return redirect()->back()->with('fail2', 'Số lượng vượt quá số lượng tồn. Mời chọn lại');
        }
        else
        {
            $gia = $id_pro[0]->Price;
            $tong= $sl * $gia;
            //lưu vào cột Quantity_Change sl ban đầu để tính toán khi cập nhật sl hoặc xóa sản phẩm
            //DB::table('products')->where('ProID', $proID)->decrement('Quantity', $sl, ['Quantity_Change' => $inStock]);
            // 
            DB::table('products')->where('ProID', $proID)->decrement('Quantity', $sl);
            DB::table('orderdetails')->insert(['OrderID' => $orderID , 'ProID' => $proID , 'Quantity' => $sl , 'Price' => $gia , 'Amount' => $tong]);
            return redirect('home');
        }
    }

    public function shopping_cart()
    {
    	$inf = $this->get_all_orderdetail();
    	return view('shopping_cart', ['get_inf_cart'=>$inf]);
    }
    public function delete_cart(Request $request)
    {
    	$delete = $this->delete_item_cart($request);
    	return redirect()->back();
    }
    public function update_cart(Request $request)
    {
        $id = $request->ID;
        $pro_id = $request->ProID;
        $inStock = $request->InStock;
        $quantity = $request->txtQuantity;
        $orderdetails = DB::table('orderdetails')->where('ID', '=', $id)->get();
        $quantity_Old = $orderdetails[0]->Quantity;
       
        if($quantity > $inStock + $quantity_Old)
        {
           return redirect()->back()->with('fail', 'Số lượng vượt quá số lượng tồn. Mời chọn lại');
        }
        else
        {
            $sum = $request->Price * $quantity;
            // số lượng sẽ đc cập nhật trong bảng prdouct = sl trong kho hiện tại + sl cũ lúc chọn mua - sl mới thay đổi
            $quantity_Change = $inStock + $quantity_Old - $quantity;
            DB::table('products')->where('ProID', $pro_id)->update(['Quantity' => $quantity_Change]);
            DB::table('orderdetails')->where('ID', $id)->update(['Quantity' => $quantity, 'Amount' => $sum]);
            return redirect()->back();
        }
    }
    public function buy_cart(Request $request)
    {
        $id_user = $request->get('id');
        $date_now = new DateTime();
        $total = $request->total;
        DB::table('orders')->insert(['OrderDate' => $date_now , 'UserID' => $id_user, 'Total' => $total]);
        DB::table('orderdetails')->where('OrderID', '=', $id_user)->delete();
        return redirect('home');
    }

    public function search(Request $request)
    {
       $search = $this->search_product($request->keywords);
       return view('search', ['get_inf'=>$search]);
    }




    public function login()
    {
		return view('login');
    }
    public function logined(Request $request)
    {
    	$email = $request->get('email');
    	$pass = $request->get('password');

    	if(Auth::attempt(['email' => $email, 'password' =>$pass]))
    		{

    			return redirect('home');
    		}
		else
			return redirect()->back()->with('fail', 'Đăng nhập thất bại');
    }
    

    public function sign(Request $request)
    {
		return view('sign');
    }

    public function signed(Request $request)
    {
    	$this->validate($request, 
    	[
    		'email' => 'required|email|unique:users,email', 
    		'password' => 'required|min:3|max:15',
    		'verify_password' => 'required|same:password'
    	], 
    	[
    		'email.required' => ' Vui lòng nhập lại email',
    		'email.email' => 'Email không đúng cú pháp',
    		'email.unique' => 'Email đã tồn tại. ',
    		'password.required' => 'Vui lòng nhập password',
    		'password.min' => 'Vui lòng nhập đủ kí tự, lớn hơn bằng 3',
    		'verify_password.same' => 'Mật khẩu không khớp. Nhập lại!'
    	]);

   		$user = new User();
   		$user->name = $request->name;
   		$user->email = $request->email;
   		$user->password = Hash::make($request->password);
   		$user->dob = $request->dob;
   		$user->save();
   		return redirect()->back()->with('success', 'Đăng Ký tài khoản thành công');	

    }

    public function signout()
    {
    	Auth::logout();
		return redirect('home');
    }

}
