@extends('layout.index')

@section('title') Công Ty Cổ Phần Bất Động Sản Indochine @endsection
@section('description') Công Ty Cổ Phần Bất Động Sản Indochine là công ty thành viên của Đất Xanh Miền Bắc – đơn vị trực thuộc Tập Đoàn Đất Xanh @endsection
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
                        Chào mừng đến với SUPER HOTEL Candle
                    </h2>
                </div>
                <div class="page_text">
                    <p>Super Hotel Candle chào đón quý khách đến với không gian tinh tế và sang trọng, nơi mọi chi tiết đã được chỉnh chu, nơi mang đến những giá trị trải nghiệm tuyệt vời nhất cho kỳ nghỉ của bạn.</p>
                    <p>Đội ngũ Lễ tân và Nhân viên của chúng tôi sẵn lòng phục vụ 24/7 để đáp ứng mọi yêu cầu của quý khách.</p>
                    <p>Bữa tối lãng mạn, một chuyến city tour, một vòng trải nghiệm những nét văn hoá đặc trưng của phố cổ Hà Nội</p>
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

                    <h3 class="box-title">Bữa sáng miễn phí</h3>
                    <div class="box-text"><span style="color:rgb(32, 33, 36)">Tận hưởng bữa sáng truyền thống mang đậm hương vị Việt tại nhà hàng</span></div>
                    <div class="hotel_infomation-button">
                        <a href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                            <button>
                                Đặt phòng ngay
                            </button>
                        </a>
                        </div>
                    </div>
                </div>
            <div class="box-item">
                <div class="box-img"><img alt="bua-sang-mien-phi" src="frontend/files/images/bn/duadonsanbay.jpg"></div>
                <div class="box-content">

                    <h3 class="box-title">Đưa đón sân bay</h3>
                    <div class="box-text">Super Hotel Candle cung cấp dịch vụ đưa đón sân bay tại khách sạn theo yêu cầu</span></div>
                    <div class="hotel_infomation-button">
                        <a href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                            <button>
                                Đặt phòng ngay
                            </button>
                        </a>
                        </div>
                    </div>
                </div>
            <div class="box-item">
                <div class="box-img"><img alt="huong-dan-vien-du-lich-thanh-pho" src="frontend/files/images/bn/DSC02282.jpg"></div>
                <div class="box-content">

                    <h3 class="box-title">Các dịch vụ khác</h3>
                    <div class="box-text"><span style="color:rgb(32, 33, 36)">Khách sạn các dịch vụ, tiện ích khác: Phòng tập thể hình, Shop, Mini Mart, Concierge, Thu đổi ngoại tệ, </span></div>
                    <div class="hotel_infomation-button">
                        <a href="https://book.securebookings.net/roomrate?id=38592407-e2c4-1665972018-420a-8b88-fc80f652543a">
                            <button>
                                Đặt phòng ngay
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