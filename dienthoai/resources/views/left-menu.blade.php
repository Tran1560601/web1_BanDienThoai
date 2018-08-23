<div class="panel panel-default">
    <div class="panel-heading">Nhà sản xuất</div>
	    
	     @foreach($nsx as $item)
	     <a href="{{route('catid')}}?id={{$item->CatName}}" class="list-group-item"> {{$item->CatName}} </a>
	     @endforeach
	   
    <div class="list-group">        
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading"> Xem theo giá</div>
	     
	      @foreach($gia as $item)
	     <a href="{{route('typeid')}}?id={{$item->TypeID}}" class="list-group-item"> {{$item->TypeName}} </a>
	     @endforeach

    <div class="list-group">        
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading"> Loại Camera </div>
	     
	      @foreach($type_camera as $item)
	     <a href="{{route('typecamera')}}?id={{$item->id}}" class="list-group-item"> {{$item->type}} </a>
	     @endforeach

    <div class="list-group">        
    </div>
</div>
