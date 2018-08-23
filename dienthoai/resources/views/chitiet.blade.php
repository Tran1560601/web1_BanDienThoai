@extends('master', ['title' => $get_info[0]->ProName])

@section('content')


<div class="col-lg-10">
    @if(Session::has('fail1'))
    <div class="alert alert-success">
        {{Session::get('fail1')}}
    </div>
    @elseif(Session::has('fail2'))
    <div class="alert alert-success">
        {{Session::get('fail2')}}
    </div>
    @endif
      <div class="panel panel-default">
          <div class="panel-heading">
              <strong> {{$get_info[0]->ProName}} </strong>
          </div>
          <div class="thumbnail">
              <img src="public/actor/{{$get_info[0]->img}}" width="200px" hight="200px">
              <div class="caption">  
                  Giá: <span style="color: red"> {{number_format($get_info[0]->Price)}} VNĐ</span>
				 <p> {!!$get_info[0]->FullDes!!} </p>

      <!-- Code Từ đây nếu đăng nhập thì mới có giỏ hàng và số lượng để chọn mua -->
       @if(Auth::check())
        <form class="form-horizontal" id="cartAdd-form" method="post" action="{{route('dathang')}}?id={{$get_info[0]->ProID}}">
          <input type="hidden" name="_token" value="{{csrf_token()}}" >
          <!-- //vì sd Post nên phải khai báo _token -->
                          <div class="form-group">
                              <div class="col-sm-3">
                                  <div class="input-group" style="margin-left: 24px;">
                                      <input type="text" id="txtQuantity" name="txtQuantity" class="form-control" placeholder="Slg" value="1" style="width: 50px">
                                      <span class="input-group-btn">
                                          
                                        
                                          <button type="submit" class="btn btn-primary" name="buy"> <i class="fa fa-shopping-cart"></i> Đặt hàng </button>
                                         
                                      </span>
                                  </div><!-- /input-group -->
                              </div>
                          </div>
                      </form>
          @endif
				</div>
			</div>
		</div>
</div>

        

@endsection