@extends('master_admin', ['title' => 'Cập Nhật Sản Phẩm'])
@section('myadmin')


        
<div class="col-lg-10">
    <div class="ppanel panel-default">
        <div class="panel-heading">Cập nhập thông tin</div>
        <form class="form-inline" enctype="multipart/form-data" role="form"  method="post" action="{{route('updated')}}">
             <input type="hidden" name="_token" value="{{csrf_token()}}" >
            <div class="row">
                <!--    lấy ID Product nhưng không hiện lên trên Form      -->
                <input id="ProID" name="ProID" type="hidden" value="{{$get_inf[0]->ProID}}" />
                <label class="control-label col-sm-2 text-info">Tên sản phẩm: </label>
                <div class="col-sm-7">
                    <input id="ProName" name="ProName" type="text" placeholder="Tên sản phẩm" value="{{$get_inf[0]->ProName}}"/>
                </div>
            </div></br>
            <div class="row">
                <label class="control-label col-sm-2 text-info">Hãng sản xuất:</label>
                <div class="col-sm-7">
                    <input id="TinyDes" name="TinyDes" type="text" placeholder="Hãng sản xuất" value="{{$get_inf[0]->TinyDes}}"/>
                </div>
            </div></br>
            <div class="row">
                <label class="control-label col-sm-2 text-info">Số Lượng:</label>
                <div class="col-sm-7">
                    <input id="Quantity" name="Quantity" type="text" placeholder="Số lượng" value="{{$get_inf[0]->Quantity}}"/>
                </div>
            </div></br>
            <div class="row">
                <label class="control-label col-sm-2 text-info">Giá: </label>
                <div class="col-sm-7 ">
                    <input id="Price" name="Price" type="text" placeholder="Giá" value="{{$get_inf[0]->Price}}"/>
                </div>
            </div></br>
            <hr/>
                <button id="submit" name="submit"type="submit" class="col-lg-offset-2 btn btn-success"> Cập nhật </button>
        </form>
    </div>
</div> 
</div>
@endsection