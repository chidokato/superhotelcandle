@extends('layout.index')

@section('title') SUPER HOTEL Candle là một dự án tiêu biểu của Tập đoàn Nhân Nghĩa @endsection
@section('description') SUPER HOTEL Candle là một dự án tiêu biểu của Tập đoàn Nhân Nghĩa, được khởi công xây dựng năm 2007, hoạt động từ năm 2013 @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('css')
<link href="frontend/content/Css/page-about.css" rel="stylesheet" />
@endsection
@section('content')

<section class="banner">
    <div class="header_banner">
        <img src="frontend/files/images/bn/DSC01568.jpg" alt="No picture">
        <div class="header_bgr"></div>
    </div>
</section>


<section class="main">
    <div class="main_space"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 xol-xs-12">
                <div class="page_title">
                    <h2 class="page_title-name">
                        {{__('lang.heading1')}}
                    </h2>
                </div>
                <div class="page_text">
                    <p>{{__('lang.text51')}}</p>
                    <p>{{__('lang.text52')}}</p>
                    <p>{{__('lang.text53')}}</p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 xol-xs-12">
                <div class="page_col-right">
                    <div class="page_col-right-img">
                        <img src="frontend/img/home1.jpg" alt="No picture">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main_space"></div>
    <div class="box-list">

            <div class="box-item">
                <div class="box-img"><img alt="dua-don-san-bay" src="frontend/files/images/bn/DSC02579.jpg"></div>
                <div class="box-content">

                    <h3 class="box-title">{{__('lang.text561')}}</h3>
                    <div class="box-text"><span style="color:rgb(32, 33, 36)">{{__('lang.text54')}}</span></div>
                    <div class="hotel_infomation-button">
                        <a href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                            <button>
                                {{__('lang.text564')}}
                            </button>
                        </a>
                    </div>
                    </div>
                </div>
            <div class="box-item">
                <div class="box-img"><img alt="bua-sang-mien-phi" src="frontend/files/images/bn/duadonsanbay.jpg"></div>
                <div class="box-content">

                    <h3 class="box-title">{{__('lang.text562')}}</h3>
                    <div class="box-text">{{__('lang.text55')}}</span></div>
                    <div class="hotel_infomation-button">
                        <a href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                            <button>
                                {{__('lang.text564')}}
                            </button>
                        </a>
                    </div>
                    </div>
                </div>
            <div class="box-item">
                <div class="box-img"><img alt="huong-dan-vien-du-lich-thanh-pho" src="frontend/files/images/bn/DSC02282.jpg"></div>
                <div class="box-content">

                    <h3 class="box-title">{{__('lang.text563')}}</h3>
                    <div class="box-text"><span style="color:rgb(32, 33, 36)">{{__('lang.text56')}}</span></div>
                    <div class="hotel_infomation-button">
                        <a href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                            <button>
                                {{__('lang.text564')}}
                            </button>
                        </a>
                        </div>
                    </div>
                </div>
           
    </div>

    <!-- <div class="main_space"></div> -->
    <!-- <div class="container">
        <div class="hotel_icon">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="icon_content">
                        <div class="icon_show">
                            <i class="fas fa-key"></i>
                        </div>
                        <div class="icon_number">
                            300
                        </div>
                        <div class="icon_text">
                            Phòng 5 sao
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="icon_content">
                        <div class="icon_show">
                            <i class="fas fa-medal"></i>
                        </div>
                        <div class="icon_number">
                            3
                        </div>
                        <div class="icon_text">
                            Giải thưởng
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="icon_content">
                        <div class="icon_show">
                            <i class="fas fa-fire"></i>
                        </div>
                        <div class="icon_number">
                            100
                        </div>
                        <div class="icon_text">
                            Tiệc BBQ
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="icon_content">
                        <div class="icon_show">
                            <i class="fas fa-cocktail"></i>
                        </div>
                        <div class="icon_number">
                            40K
                        </div>
                        <div class="icon_text">
                            Quản lí sự kiện
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- <div class="main_space border-bottom"></div> -->
    <!-- <div class="main_space"></div> -->
   <!--  <div class="book-room-text">
        <div class="container">
            <p style="width: 70%;text-align: center;margin: 0 auto;">Những kỷ niệm có nghĩa là để được xem lại. Chúng tôi mời bạn trải nghiệm The Ritz-Carlton, Đảo Amelia qua con mắt của những người bạn đồng hành và chia sẻ những khoảnh khắc khó quên trong kỳ nghỉ của chính bạn.</p>
            <div class="button_book-room">
                <a href="#">
                    <button>Đặt phòng</button>
                </a>
            </div>
        </div>
    </div> -->
    <div class="main_space"></div>
    <div class="map">
        {!!$setting->maps!!}
    </div>
</section>


@endsection
@section('script')

@endsection