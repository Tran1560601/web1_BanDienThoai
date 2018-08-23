@extends('master_admin', ['title' => 'Trang Chủ Admin'])
@section('myadmin')



    <div class="col-lg-10">
                    <div class="ppanel panel-default">
                        <div class="panel-heading">Danh sách Khách hàng</div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <tr class="info">
                                    <th  class ="text-center">ID</th>
                                    <th  class ="text-center">Tên</th>
                                    <th  class ="text-center">Email</th>
                                    <th  class ="text-center">Ngày sinh</th>
                                </tr>

                            @foreach ($get_user as $item) 
                                <tr>
                                    <td>{{$item->id}}</td>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->email}}</td>
                                    <td>{{$item->dob}}</td>
                                </tr>

                            @endforeach
                            </table>
                        </div>
                    </div>
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
                                </tr>
                               
                               @foreach ($get_all_product as $item)
                                <tr>
                                    <td>{{$item->ProID}}</td>
                                    <td>{{$item->ProName}}</td>
                                    <td>{{$item->TinyDes}}</td>
                                    <td>{{number_format($item->Price)}}</td>
                                    <td>{{$item->Quantity}}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div> 
                </div> 

@endsection