@extends('master_admin', ['title' => 'Danh Sách Sản Phẩm'])
@section('myadmin')

 <div class="col-lg-10">
<div class="ppanel panel-default">
                        <div class="panel-heading">Danh sách Sản Phẩm</div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <tr class="info">
                                <th class ="text-center">ID</th>
                                <th class ="text-center">Tên sản phẩm</th>
                                <th class ="text-center">Hãng sản xuất</th>
                                <th class ="text-center">Giá</th>
                                <th class ="text-center">Số lượng</th>
                                <th class="text-center">Cập nhập</th>
                                </tr>
                               
                               @foreach ($get_all_product as $item)
                                <tr>
                                    <td>{{$item->ProID}}</td>
                                    <td>{{$item->ProName}}</td>
                                    <td>{{$item->TinyDes}}</td>
                                    <td>{{number_format($item->Price)}}</td>
                                    <td>{{$item->Quantity}}</td>
                                    <td class="text-center">
                                            <a href="{{route('updateProduct')}}?id={{$item->ProID}}">Sửa |  </a>
                                            <a  href="{{route('deleteProduct')}}?id={{$item->ProID}}">Xóa</a>
                                        
                                    </td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div> 
                </div> 


@endsection