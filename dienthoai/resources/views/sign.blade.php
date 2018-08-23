 @extends('master', ['title' => 'Đăng Ký'])

@section('content')
       
                <div class="col-lg-5">
                    <h2>Đăng ký</h2> 
                    @if(Session::has('success'))
                        <div class="alert alert-success">
                            {{Session::get('success')}}
                        </div>
                    @endif
                    
                    <form action="{{route('signed')}}" method='POST'>
                    <input type="hidden" name="_token" value="{{csrf_token()}}" >
                        <div  class="form-group">
                            <label>Họ Và Tên</label>
                            <input type="text" class="form-control" placeholder="Họ Và Tên" name='name' required>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="Email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label>Mật Khẩu</label>
                            <input type="password" class="form-control" placeholder="Mật Khẩu" name='password' required>
                        </div>
                        <div class="form-group">
                            <label>Nhập Lại Mật Khẩu</label>
                            <input type="password" class="form-control" placeholder="Nhập Lại Mật Khẩu" name='verify_password' required>
                        </div>
                        <div class="form-group">   
                            <label>Ngày sinh</label>                                             
                            <input type="date" class="form-control datepicker" name="dob" placeholder="Ngày sinh">
                        </div>
                        
                        <div class="col-sm-6">
                            <button type="submit" class="btn btn-primary" name="sign">Đăng ký</button>
                        </div>
                    </form>
                </div>

@endsection          