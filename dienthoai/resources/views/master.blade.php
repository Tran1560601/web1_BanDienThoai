<html>
    <head>
        <meta charset="UTF-8">
        
        <link rel="stylesheet" type="text/css" href="/dienthoai/public/actor/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/dienthoai/public/actor/font-awesome-4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/js" href="/dienthoai/public/actor/js/bootstrap.min.js">
        <title>{{ $title or 'Trang chủ'}}</title>
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

        @include ('header')

        <div class="col-lg-2">
        <div class="panel panel-default">
            @include('left-menu')
            <div class="list-group">        
            </div>
        </div>
        
    </div>

        <div class="container-fluid">
           
            @yield('content')    

        </div> 
<script src="/dienthoai/public/actor/js/jquery.js" type="text/javascript"></script>
<script src="/dienthoai/public/actor/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/dienthoai/public/actor/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="/dienthoai/public/actor/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/dienthoai/public/actor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js">
</script>

<script>
    $('#txtQuantity').TouchSpin({
        min: 1
                //verticalButtons: true
    });
</script>
        
        @include('footer')
    </body>
</html>