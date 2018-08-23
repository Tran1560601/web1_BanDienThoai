<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="/dienthoai/public/actor/css/style.css">
        <link rel="stylesheet" type="text/css" href="/dienthoai/public/actor/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/dienthoai/public/actor/font-awesome-4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/js" href="/dienthoai/public/actor/js/bootstrap.min.js">
        <title>{{$title or 'Trang Chủ'}}</title>
        <style type="text/css">
            .example{
                margin: 20px;
            }
        </style>
    </head>
    <body>
        <div>
            @include ('banner')
        </div>
        
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <a class="navbar-brand" href="{{route('main')}}"><i class="fa fa-home x2"></i> Trang Chủ Admin</a>
                           <ul class="nav navbar-nav navbar-right">
                            <li>
                            <a href="#">Hi, <i class="fa fa-user"></i> Admin!</a>

                            </li>
                                   <li><a href="#">Thoát</a></li>
                          </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        <div class="container-fluid">

            <div class="row">

                <div class="col-lg-2">
                    <div class="panel panel-default">
                        <div class="panel-heading"><i class="fa fa-pencil-square-o"> Quản lí Sản phẩm</i></div>
                        <a class="list-group-item" href ="{{route('list_product')}}">Danh sách Sản phẩm</a>
                        <a class="list-group-item" href ="{{route('add_product')}}">Thêm Sản phẩm mới</a>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading"><i class="fa fa-user"> Quản Lí Khách Hàng</i></div>
                        <a class="list-group-item" href ="{{route('list_user')}}">Dach sách Khách hàng</a>

                    </div>    
                </div>
                        @yield('myadmin')  
                </div> 
                </div>
<script src="/dienthoai/public/actor/js/jquery.js" type="text/javascript"></script>
<script src="/dienthoai/public/actor/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/dienthoai/public/actor/js/jquery-2.1.4.min"></script>
<script type="text/javascript" src="/dienthoai/public/actor/bootstrap-3.3.4-dist/bootstrap.min.js"></script>
<script type="text/javascript" src="/dienthoai/public/actor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
        @include('footer')
    </body>
</html>