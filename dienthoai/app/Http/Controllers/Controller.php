<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use DB;
use Illuminate\Http\Request;
use Auth;	// dùng cho mua 1 món hàng ở post đặt hàng

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    // Lấy ds sản phẩm mới nhất
	public function get_product_new(){
		$data = DB::table('products')
				->orderByRaw('Abs(Datediff(ProDate, Now() ))')
				->take(10)->get();
		return $data;
	}
	// Lấy ds sản phẩm được truy cập nhiều nhất
	public function get_product_access(){
		$data = DB::table('products')
				->orderByRaw('CountView DESC')
				->take(10)->get();
		return $data;
	}

	public function get_product_by_id(Request $request){
		$id_pro = $request->get('id');
		$data = DB::table('products')->where('ProID', '=', $id_pro)->get();
		return $data;
	}
	

	public function get_product_by_cat_id(Request $request){
		$id_cate = $request->get('id');
		$data = DB::table('products')->where('TinyDes', '=', $id_cate)->get();
		return $data;
	}

	public function get_product_by_type_id(Request $request){
		$id_type = $request->get('id');
		$data = DB::table('products')->where('TypeID', '=', $id_type)->get();
		return $data;
	}
	public function get_product_by_type_camera(Request $request){
		$id_type = $request->get('id');
		$data = DB::table('products')->where('Camera', '=', $id_type)->get();
		return $data;
	}
	
	public function post_all_infomation(Request $request)
    {
    	return $request->all();
    }
    public function check_bought(Request $request){
	 	$id_product = $request->get('id');
	 	$orderID = Auth::User()->id;
		$data = DB::table('orderdetails')->where([['ProID', '=', $id_product], ['OrderID', '=', $orderID]])	->get();
		return $data;
	}

    public function get_all_orderdetail(){
		$data = DB::table('orderdetails as d')
					->join('products as p', 'd.ProID', '=', 'p.ProID')	
					->select('p.ProName', 'p.Quantity as InStock', 'd.ID', 'd.ProID', 'd.OrderID', 'd.Quantity', 'd.Price', 'd.Amount')
					->get();
		return $data;
	}
	
	public function delete_item_cart(Request $request){
		// lấy id của bảng orderdetails mà mình gửi qua:
		$id_orderdetail = $request->get('id');
		// lấy thông tin của 1 sp trong bảng orderdetails theo mã ID duy nhất
		$orderdetails = DB::table('orderdetails')->where('ID', '=', $id_orderdetail)->get();
		
		// lấy ProID và số lượng đã mua của 1 sp trong bảng orderdetails theo ID khi gửi từ Route
		$proID = $orderdetails[0]->ProID;
		$Quantity_Bought = $orderdetails[0]->Quantity;
		
		// Cập nhật lại số lượng sản phẩm, gán Quantity = Quantity + số lượng ở bảng orderdetails sẽ xóa
		DB::table('products')->where('ProID', $proID)->increment('Quantity', $Quantity_Bought);
		//Xóa chi tiết sản phẩm của người mua trong đơn hàng
		$data = DB::table('orderdetails')->where('ID', '=', $id_orderdetail)->delete();
		return $data;
	}

	//Search product
	public function search_product(string $var){
		$data = DB::table('products')->where('ProName', 'like', '%' . $var . '%')->get();
		return $data;
	}


	//ADMIN
	public function get_user(){
		$data = DB::table('users')->get();
		return $data;
	} 
	public function delete_user(Request $request){
		$id_user = $request->get('id');
		$data = DB::table('users')->where('id', '=', $id_user)->delete();
		return $data;
	}


	public function get_all_product(){
		$data = DB::table('products')->get();
		return $data;
	} 
   	public function delete_product(Request $request){
		$id_product = $request->get('id');
		$data = DB::table('products')->where('ProID', '=', $id_product)->delete();
		return $data;
	}
	public function get_info_product(Request $request){
		$id_product = $request->get('id');
		$data = DB::table('products')->where('ProID', '=', $id_product)->get();
		return $data;
	}


	

}
