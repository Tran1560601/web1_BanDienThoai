    <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                  <a class="navbar-brand" href="{{route('home-page')}}"><i class="fa fa-home x2"></i> Trang chủ</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                     <ul class="nav navbar-nav">
                        <li><a href="{{route('lienhe')}}" class="navbar-brand"><i class="fa fa-newspaper-o x2"></i> Liên Hệ</a></li>
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        @if(!Auth::check())
                            <li><a href="{{route('login')}}"> Đăng Nhập </a></li>
                            <li><a href="{{route('sign')}}"> Đăng Ký </a></li>
                        @else
                            <li><a href="#"> Hi! {{Auth::User()->name}} </a></li>
                            <li> <a href="{{route('shopping_cart')}}"> <i class="fa fa-shopping-cart"> </i> Giỏ hàng </a> </li>
                             <li><a href="{{route('signout')}}"> Đăng Xuất </a></li>
                        @endif
                    </ul>

                       <ul class="nav navbar-nav navbar-right">
                       
                        
                      </ul>
                        

                    <form class="navbar-form navbar-right" role="search" action="{{route('search')}}" method="get">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search" name="keywords" value="">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i>Tìm kiếm
                                </button>
                        </div>
                    </form>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>