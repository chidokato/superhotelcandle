@extends('layout.index')

@section('title') {{$post->title ? $post->title : $post->name}} @endsection
@section('description') {{$post->description ? $post->description : $post->name.$post->name}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('css')
<link href="frontend/content/Css/room.css" rel="stylesheet" />
  <link href="frontend/content/Css/room-single.css" rel="stylesheet" />
  <link href="frontend/Plugins/Validate/jquery-validation-1.13.1/jquery-validation.css" rel="stylesheet" />
<style type="text/css">
    .owl-carousel .owl-item img {
    display: block;
    width: 100%;
    cursor: pointer;
    height: 470px;
    object-fit: cover;
}
.navigation-thumbs .owl-item img {
  height: 90px
}
.block_utilities ul{
  display: flex;flex-wrap: wrap; padding: 20px
}
.block_utilities ul li{
  width: 33%; display: flex;
    align-items: center;
    padding: 10px 10px;
}
.block_utilities ul li img{
  width: 20px; margin-right: 10px
}
.room-title{
  display: flex;justify-content: space-between;
    align-items: center;    border-bottom: 1px solid #ddd;
    margin-bottom: 15px;
}
.room-title .price{
  font-size: 1.5rem; font-weight: bold; color: #0072bc;
}
.room-title .price span{
  font-size: 1rem; font-weight: 100;
}
.title-name{ color: #0072bc; font-weight: bold;  }
</style>
@endsection

@section('content')

<section class="main">
    <div class="container">
        <div class="main_space"></div>
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="room-title">
                   <h1 class="title-name">{{ $post->name }}</h1>
                   <div class="price">
                     {{ number_format($post->price) }} <span>({{ $post->unit }})</span>
                   </div>
                </div>
            
                <div id="sync1" class="slider owl-carousel">
                  <div class="item"><img src="data/product/{{$post->Post->img}}"></div>
                  @foreach($images as $val)
                    <div class="item"><img src="data/product/detail/{{$val->img}}"></div>
                  @endforeach
                </div>
                <div id="sync2" class="navigation-thumbs owl-carousel">
                  <div class="item"><img src="data/product/{{$post->Post->img}}"></div>
                  @foreach($images as $val)
                    <div class="item"><img src="data/product/detail/{{$val->img}}"></div>
                  @endforeach
                </div>
                
                <div class="block_text" style="margin-top: 20px">
                    <div class="block_title">
                        <h2 class="block_title-name">{{__('lang.Room_details')}}</h2>
                    </div>
                    <div class="block_content">
                        {!! $post->content !!}
                    </div>
                </div>

                <div class="block_text">
                    <div class="block_title">
                        <h2 class="block_title-name">{{__('lang.Utilities')}}</h2>
                    </div>
                    <div class="block_utilities">
                      <?php $explode_fullname = explode(',', $post->utilities); ?>
                        <ul>
                          @foreach($explode_fullname as $val)
                          <li><img src="data/tienich/{{$val}}.png">{{__('lang.'.$val.'')}}</li>
                          @endforeach
                        </ul>
                    </div>
                </div>
                <div class="main_space-mg30"></div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="reservation">
                  <a target="_blank" href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                    <button class="button_sb">{{__('lang.Book_now')}}</button>
                  </a>
                    

                    <div class="reservation_hotel">
                        <div class="reservation_title">
                            <h5 class="reservation_title-name">
                                {{__('lang.text3')}}
                            </h5>
                        </div>
                        <div class="hotel_content">
                            <ul>
                                <li>
                                    <i class="fa fa-gavel"></i> Tính minh bạch - Không có phí ẩn
                                </li>
                                <li>
                                    <i class="fa fa-plane"></i> Tính minh bạch - Không có phí ẩn
                                </li>
                                <li>
                                    <i class="fas fa-dollar-sign"></i> Giá tiền hợp lý
                                </li>
                                <li>
                                    <i class="fa fa-bed"></i> Phòng sang trọng cho bạn thoải mái
                                </li>
                                <li>
                                    <i class="fa fa-user-secret"></i> Hoàn tiền dễ dàng khi đặt phòng trực tuyến
                                </li>
                                <li>
                                    <i class="fab fa-tripadvisor"></i> Khách sạn từng đoạt giải thưởng trên TripAdviosr
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div></section>

@endsection
@section('js')
    <script type="text/javascript">
       var sync1 = $(".slider");
var sync2 = $(".navigation-thumbs");

var thumbnailItemClass = '.owl-item';

var slides = sync1.owlCarousel({
    video:true,
  startPosition: 12,
  items:1,
  loop:true,
  margin:10,
  autoplay:true,
  autoplayTimeout:6000,
  autoplayHoverPause:false,
  nav: false,
  dots: true
}).on('changed.owl.carousel', syncPosition);

function syncPosition(el) {
  $owl_slider = $(this).data('owl.carousel');
  var loop = $owl_slider.options.loop;

  if(loop){
    var count = el.item.count-1;
    var current = Math.round(el.item.index - (el.item.count/2) - .5);
    if(current < 0) {
        current = count;
    }
    if(current > count) {
        current = 0;
    }
  }else{
    var current = el.item.index;
  }

  var owl_thumbnail = sync2.data('owl.carousel');
  var itemClass = "." + owl_thumbnail.options.itemClass;


  var thumbnailCurrentItem = sync2
  .find(itemClass)
  .removeClass("synced")
  .eq(current);

  thumbnailCurrentItem.addClass('synced');

  if (!thumbnailCurrentItem.hasClass('active')) {
    var duration = 300;
    sync2.trigger('to.owl.carousel',[current, duration, true]);
  }   
}
var thumbs = sync2.owlCarousel({
  startPosition: 12,
  items:5,
  loop:false,
  margin:10,
  autoplay:false,
  nav: false,
  dots: false,
  onInitialized: function (e) {
    var thumbnailCurrentItem =  $(e.target).find(thumbnailItemClass).eq(this._current);
    thumbnailCurrentItem.addClass('synced');
  },
})
.on('click', thumbnailItemClass, function(e) {
    e.preventDefault();
    var duration = 300;
    var itemIndex =  $(e.target).parents(thumbnailItemClass).index();
    sync1.trigger('to.owl.carousel',[itemIndex, duration, true]);
}).on("changed.owl.carousel", function (el) {
  var number = el.item.index;
  $owl_slider = sync1.data('owl.carousel');
  $owl_slider.to(number, 100, true);
});

    </script>
@endsection