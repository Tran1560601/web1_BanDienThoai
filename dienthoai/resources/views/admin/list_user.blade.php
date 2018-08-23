@extends('master_admin', ['title' => 'Danh Sách Tài Khoản'])
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
                                    <th  class ="text-center">Cập nhập</th>
                                </tr>

                            @foreach ($get_user as $item) 
                                <tr>
                                    <td>{{$item->id}}</td>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->email}}</td>
                                    <td>{{$item->dob}}</td>
                                    <td class="text-center">
                                            <a  id="DelUser" href="{{route('deleteUser')}}?id={{$item->id}}">Xóa</a>
                                       
                                    </td>
                                </tr>

                            @endforeach
                            </table>
                        </div>
                    </div>


@endsection