@extends('master', ['title' => 'Shopping-Cart'])

@section('content')

<div class="col-lg-10">
@if(Session::has('fail'))
    <div class="alert alert-success">
        {{Session::get('fail')}}
    </div>
 @endif
<div class="panel panel-default">
<div class="panel-heading">
    Giỏ hàng
</div>
<div class="panel-body">
            <!-- InstanceBeginEditable name="page-content" -->



<input type="hidden" value="" id="txtUpdProId" name="txtUpdProId" />
<input type="hidden" value="" id="txtUpdQ" name="txtUpdQ" />

<table class="table table-hover">
    <thead>
        <tr>
            <th class="col-sm-4">Sản phẩm</th>
            <th class="col-sm-2">Giá</th>
            <th class="col-sm-2">Số lượng</th>
            <th class="col-sm-2">Thành tiền</th>
            <th class="col-sm-2">Chức năng</th>
        </tr>
    </thead>
    <?php     $sum = 0;      ?>
        @foreach($get_inf_cart as $item)
        <tr>
            @if(Auth::User()->id == $item->OrderID)
                <form method="POST" action="{{route('update_cart')}}" id="frmCart">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" >
                    <input type="hidden" value="{{$item->ID}}" id="ID" name="ID" />
                    <input type="hidden" value="{{$item->ProID}}" id="ProID" name="ProID" />
                    <input type="hidden" value="{{$item->InStock}}" id="InStock" name="InStock" />
                      <input type="hidden" value="{{$item->Price}}" id="Price" name="Price" />
                <td> {{$item->ProName}} </td>
                <td> {{number_format($item->Price)}} </td>
                <td>
                    <input type="text" id="Quantity" name="txtQuantity" style="width: 50px" placeholder="Slg" value="{{$item->Quantity}}" > 
                </td>
                <td> {{number_format($item->Amount)}} </td>
                <?php     $sum = $sum + $item->Amount;      ?>
                <td>  <a href="{{route('delete_cart')}}?id={{$item->ID}}">Xóa  </a>
                <button type="submit" id="btnCheckout" name="btnCheckout"> Sửa </button> </td>
                 </form> 
            @endif
        </tr>
        @endforeach

        <form method="POST" action="{{route('buy_cart')}}?id={{Auth::User()->id}}" id="frmShoppingCart">
            <input type="hidden" name="_token" value="{{csrf_token()}}" >
            <input type="hidden" name="total" id = "total" value="{{$sum}}" >
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><h4> Total: {{number_format($sum)}}VNĐ </h4></td>
                    <td class="text-danger" colspan="2">
                        <input type="hidden" name="txtTotal" value="" />
                    </td>
                </tr>
        </table>

        <div class="row">
            <div class="col-md-12">
                <a class="btn btn-success" href="home" role="button">
                    <i class="fa fa-mail-reply"></i> Tiếp tục mua hàng
                </a>
                <button type="submit" id="btnCheck" name="btnCheck" class="btn btn-danger">
                   <i class="fa fa-check"></i> Thanh toán
                </button>
            </div>
        </div>
        </form>
<!-- InstanceEndEditable -->
</div>
</div>
</div>


@endsection