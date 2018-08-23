 @extends('master', ['title' => 'Danh Sách Sản Phẩm Theo Loại'])

@section('content')
<div class="row">
    <div class="col-lg-10">
        <div class="panel panel-default">
            <div class="panel-heading">
                Danh sách sản phẩm
            </div>
            <div class="panel-body">
                 @foreach($get_info as $item)
                <div class="col-sm-4 col-md-4">
                    <div class="thumbnail" style="height:400px">
                        
                        
            
                        <img src="\dienthoai\public\actor\{{$item->img}}" width="200px" hight="200px">
                        <div class="caption">
                            <h3> {{$item->ProName}} </h3>
                            Giá: <span style="color: red">{{number_format($item->Price)}} VNĐ</span></br>
                            Số lượng:<strong> {{$item->Quantity}} </strong>
                            <p>Mô tả: {{$item->mota}}</p>
                                <a href="{{route('chitiet')}}?id={{$item->ProID}}" class="btn btn-default" role="button">Chi tiết</a>
                            </p>
                        </div>
                    </div>
                </div> 
                 @endforeach                               
            </div>
        </div>
    </div>
</div>

@endsection