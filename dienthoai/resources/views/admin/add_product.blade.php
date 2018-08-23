@extends('master_admin', ['title' => 'Thêm Sản Phẩm'])
@section('myadmin')
                <div class="col-lg-10">
                    <div class="ppanel panel-default">
                        <div class="panel-heading">Thêm Sản phẩm mới</div>
                        <form class="form-inline" enctype="multipart/form-data" role="form"  method="post" action="{{route('added_product')}}" name="frmAdd" id="frmAdd">
                           <input type="hidden" name="_token" value="{{csrf_token()}}" >
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Tên sản phẩm:</label>
                                <div class="col-sm-7">
                                    <input id="ProName" name="ProName" type="text" placeholder="Tên sản phẩm"/>
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Hãng sản xuất:</label>
                                <div class="col-sm-7">
                                    <input id="TinyDes" name="TinyDes" type="text" placeholder="Hãng sản xuất">
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Camera:</label>
                                <div class="col-sm-7">
                                    <input id="Camera" name="Camera" type="radio" value="Camera Thường" checked> Camera Thường
                                    <input id="Camera" name="Camera" type="radio" value="Camera Kép"> Camera Kép
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Số Lượng:</label>
                                <div class="col-sm-7">
                                    <input id="Quantity" name="Quantity" type="text" placeholder="Số lượng">
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Giá: </label>
                                <div class="col-sm-7 ">
                                    <input id="Price" name="Price" type="text" placeholder="Giá">
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Chi tiết tóm tắt:</label>
                                <div class="col-sm-3">
                                    <textarea class="form-control" id="mota" name="mota" type="text-area" placeholder="chi tiết tóm tắt"></textarea>
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Chi tiết đầy đủ:</label>
                                <div class="col-sm-3">
                                    <textarea class="form-control" id="FullDes" name="FullDes" type="text-area" placeholder="chi tiết đầy đủ"></textarea>
                                </div>
                            </div></br>
                            <div class="row">
                                <label class="control-label col-sm-2 text-info">Hình ảnh:</label>
                                <div class="col-sm-7">
                                    <input id="img" name="img" type="text" placeholder="" value="img/">
                                </div>
                            </div></br>
                            <hr/>
                                <button id="submit" name="submit" type="submit" class="col-lg-offset-2 btn btn-success">Thêm </button>
                        </form>
                    </div>
                </div> 
            </div>
@endsection