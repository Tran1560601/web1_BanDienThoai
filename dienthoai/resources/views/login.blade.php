@extends('master', ['title' => 'Đăng Nhập'])

@section('content')



  
    <div class="example"> 
        <div class="container"> 
            <div class="row"> 
                <div class="col-lg-5">
                    <h2>Đăng nhập</h2>
         
                    @if(Session::has('fail'))
                        <div class="alert alert-success">
                            {{Session::get('fail')}}
                        </div>

                     @endif
                <form action="{{route('logined')}}" method="post">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" >
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu</label>
                        <input type="password" class="form-control" placeholder="Password" name="password">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox"> Ghi Nhớ</label>
                    </div>
                    <button type="submit" class="btn btn-primary" name="login">Đăng Nhập</button>
                </form>

            </div>
        </div>
    </div>
</div>

@endsection