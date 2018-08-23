<?php

namespace App\Http\Controllers;

use App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\products;
use DateTime;

class AdminController extends Controller
{
	public function main()
	{
		$inf = $this->get_user();
		$pro = $this->get_all_product();
		return view('admin.main',['get_user'=> $inf,'get_all_product' =>$pro]);
	}
	public function deleteUser(Request $request)
	{
		$delete = $this->delete_user($request);
		return redirect()->back();
	}
	public function list_user()
	{
		$inf = $this->get_user();
		return view('admin.list_user',['get_user'=> $inf]);
	}


	public function list_product()
	{
		$pro = $this->get_all_product();
		return view('admin.list_product',['get_all_product' =>$pro]);
	}
	public function deleteProduct(Request $request)
	{
		$delete = $this->delete_product($request);
		return redirect()->back();
	}
	public function updateProduct(Request $request)
	{
		$data = $this->get_info_product($request);
		return view('admin.update_product', ['get_inf'=>$data]);
	}
	public function updated(Request $request)
	{
		$id_product = $request->ProID;
		$name = $request->ProName;
		$type = $request->TinyDes;
		$quantity = $request->Quantity;
		$price = $request->Price;
		DB::table('products')->where('ProID', $id_product)->update(['ProName' => $name , 'TinyDes' => $type , 'Quantity' => $quantity, 'Price' => $price]);
		return redirect('list_product');
	}

	public function add_product()
	{
		return view('admin.add_product');
	}
	public function added_product(Request $request)
	{
		$product = new products();
		$product->ProName = $request->ProName;
		$product->TinyDes = $request->TinyDes;
		$product->Quantity = $request->Quantity;
		$product->Price = $request->Price;
		if($request->Price < 6000000)
			$product->TypeID = '1';
		else if($request->Price >= 6000000 && $request->Price < 10000000)
			$product->TypeID = '2';
		else
			$product->TypeID = '3';
		$product->mota = $request->mota;
		$product->FullDes = $request->FullDes;
		$product->img = $request->img;
		$product->ProDate = new DateTime();
		$product->CatID = 1;
		if($request->Camera == 'Camera Thường')
			$product->Camera = 1;
		else
			$product->Camera = 2;
		
		$product->save();
		return redirect('admin');
	}

}