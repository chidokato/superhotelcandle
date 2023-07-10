@extends('layout.index')

@section('title')  @endsection
@section('description')  @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('css')

@endsection

@section('content')

@include('layout.slider')

<section class="main">
    <div class="main_space"></div>
    <div class="main_hotel">
        <div class="container hotel_container">
            <div class="row hotel_row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 hotel_col">
                    <div class="hotel_img">
                        <img src="data/home/slider2.jpg" alt="No picture">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 hotel_col">
                    <div class="hotel_text">
                        <div class="text_name">
                            <h1 style="font-size: 1.7rem">
                                {{__('lang.heading1')}}
                            </h1>
                            <div class="text">
                                <div style="text-align:justify">
                                    <p>{{__('lang.text1')}}</p>
                                    <p>{{__('lang.text2')}}</p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    @foreach($home_cats as $home_cat)
    <div class="main_space-end"></div>
    <div class="main_space"></div>
    <div class="main_lodging">
        <div class="container lodging_container">
            <div class="lodging_title">
                <span>{{__('lang.RoomClasses')}}</span>
                <h2 class="title" style="color:#111111;">{{$home_cat->name}}</h2>
            </div>
        </div>
        <div class="main_space-mg30"></div>
        <div class="carousel_lod">
            <div class="container car_container">
                <div class="carousel_lod--list owl-carousel">
                    @foreach($posts as $post)
                    @if($post->category_tras_id == $home_cat->id)
                    <div class="item">
                        <div class="col-lg-12 col-md-12">
                            <a href="{{$home_cat->category->slug}}/{{$post->post->slug}}">
                                <div class="item_content">
                                    <div class="item_img">
                                        <img src="data/product/{{$post->Post->img}}" alt="phong-triple">
                                    </div>
                                    <div class="item_text">
                                        <h3>{{$post->name}}</h3>
                                        <div class="item_text-price">
                                            @if($post->price)
                                            Giá: chỉ từ {{$post->price}} {{$post->unit}}
                                            @else
                                            Giá: liên hệ
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    @endforeach
    <div class="main_space"></div>
    <!--End lodging-->
    <div class="carousel_two">
        <div class="carousel_two-n owl-carousel owl-theme">
            @foreach($fitness as $val)
            <div class="item" style="background-image: url(data/news/{{$val->Post->img}});height: 600px;background-repeat: no-repeat;background-size: cover;">
                <div class="col-lg-6 col-md-6 car-t-overlay"></div>
                <div class="item_context">
                    <div class="container car-t-container">
                        <div class="col-lg-6 col-md-6">
                            <h3 class="title">
                                {{$val->name}}
                            </h3>
                            <div class="text">
                                <p>{{$val->detail}}</p>
                            </div>
                            <div class="button_booknow">
                                <a href="{{$post->post->slug}}">
                                    <button>Xem chi tiết</button>
                                </a>
                            </div>
                            <div class="nav-slide">
                                <div class="nav-prev">
                                    <i class="fal fa-angle-left"></i>
                                </div>
                                <div class="nav-next">
                                    <i class="fal fa-angle-right"></i>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="main_space-end" style="border-bottom: none;"></div>
    <!--End experience-->
    <div class="main_vacation">
        <div class="container vacation_container">
            <div class="vacation_title">
                
                <h2 class="title" style="color:#111111;margin:0 0 30px 0">Restaurant & Bar</h2>
            </div>
            <div class="row vacation_row">
@foreach($restaurant as $val)
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <a href="{{$post->post->slug}}">
                            <div class="vacation_content">
                                <div class="vacation_img">
                                    <img src="data/news/{{$val->Post->img}}" alt="No picture">
                                </div>
                                <div class="vacation_overlay"></div>
                                <div class="vacation_icon">
                                    
                                    <div class="icon_title">
                                        {{$val->name}}
                                    </div>
                                    
                                </div>
                            </div>
                        </a>
                    </div>
                 @endforeach   
            </div>
        </div>
    </div>
    <div class="main_space"></div>
    <!--End team orther-->
    <!-- <div class="main_offer" style="background-image: url(frontend/files/images/hotel/5f8b5279e24f16114f5e.jpg);background-repeat: no-repeat;background-size: cover;height: 600px;">
        <div class="youtube_overlay">
            <div class="youtube_text">
                <form action="https://luxehotel.webhotel.vn/lien-he" method="get">
                    <input type="hidden" name="ID" value="21" />
                    <div class="youtube_subtitle">Chỉ c&#243; trong th&#225;ng 3</div>
                    <h3 class="youtube_title">
                       Giảm 20% <br>Giảm gi&#225; ưu đ&#227;i th&#225;ng 3
                    </h3>
                    <div class="button_getnow">
                        <a href="javascript:void(0)"><button>Đăng ký ngay</button></a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="main_space"></div> -->
    <!--End offer-->
    <div class="main_news">
        <div class="container news_container">
            <div class="news_text">
                <span class="subtitle">Bài viết</span>
                <h2 class="title" style="color:#111111;margin: 0 0 30px 0;font-weight: 400;">Những bài viết nổi bật</h2>
            </div>
            <div class="news_list">
                <div class="row news_list-row">

                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="news_list-item">
                                <div class="news_item-img">
                                    <a href="tin-tucs/4150/cho-tinh-sapa.html">
                                        <img src="frontend/files/images/news/Cho_tinh_Sapa_3.jpg" alt="cho-tinh-sapa">
                                    </a>
                                </div>
                                <div class="news_item-text">
                                    <div class="news_item-title">
                                        <a href="tin-tucs/4150/cho-tinh-sapa.html">
                                            Chợ t&#236;nh Sapa
                                        </a>
                                    </div>
                                    
                                    <div class="news_item-content">
                                        Chợ t&igrave;nh Sapa được tổ chức tại thị trấn Sapa, đ&acirc;y l&agrave; phi&ecirc;n chợ của d&acirc;n tộc Dao được tổ chức v&agrave;o tối thứ 7 h&agrave;ng tuần.
                                    </div>
                                    <div class="read_more">
                                        <a href="tin-tucs/4150/cho-tinh-sapa.html">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="news_list-item">
                                <div class="news_item-img">
                                    <a href="tin-tucs/4142/nui-fansipan.html">
                                        <img src="frontend/files/images/news/Fansipan-Mountain.jpg" alt="nui-fansipan">
                                    </a>
                                </div>
                                <div class="news_item-text">
                                    <div class="news_item-title">
                                        <a href="tin-tucs/4142/nui-fansipan.html">
                                            N&#250;i Fansipan
                                        </a>
                                    </div>
                                    
                                    <div class="news_item-content">
                                        ​Đỉnh Phanxipăng - với độ cao 3.143m so với mực nước biển, nằm về ph&iacute;a T&acirc;y Nam thị trấn Sa Pa, huyện Sa Pa.
                                    </div>
                                    <div class="read_more">
                                        <a href="tin-tucs/4142/nui-fansipan.html">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="news_list-item">
                                <div class="news_item-img">
                                    <a href="tin-tucs/4140/%e2%80%8bthac-tinh-yeu.html">
                                        <img src="frontend/files/images/news/thac-tinh-yeu-sapa.jpg" alt="​thac-tinh-yeu">
                                    </a>
                                </div>
                                <div class="news_item-text">
                                    <div class="news_item-title">
                                        <a href="tin-tucs/4140/%e2%80%8bthac-tinh-yeu.html">
                                            ​Th&#225;c T&#236;nh Y&#234;u
                                        </a>
                                    </div>
                                    
                                    <div class="news_item-content">
                                        ​Th&aacute;c T&igrave;nh Y&ecirc;u l&agrave; một ngọn th&aacute;c nổi tiếng nằm ở x&atilde; San Sả Hồ, c&aacute;ch trung t&acirc;m thị trấn Sa Pa 16 km.&nbsp;
                                    </div>
                                    <div class="read_more">
                                        <a href="tin-tucs/4140/%e2%80%8bthac-tinh-yeu.html">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                </div>
            </div>
        </div>
    </div>
    <!--End main_news-->
    
</section>

@endsection


@section('js')


@endsection