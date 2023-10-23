@extends('layout.index')

@section('title') {{$data->title ? $data->title : $data->name}} @endsection
@section('description') {{$data->description}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('css')
<style type="text/css">
.booking_content h2{line-height: 1rem;margin-bottom: 10px;}
.star-rating{margin-bottom: 10px}
.star-rating i{ color: #ffc107 }
.booking_icon{margin-top: 10px;}
.row_item-img img {width: 100%;height: 165px;object-fit: cover;}
.header-page h1{ font-size: 2rem; border-bottom: 1px solid #ddd; padding-bottom: 10px; margin-bottom: 20px; }
.header-page h1 span{ position: relative }
.header-page h1 span:after{
    position: absolute;
    content: '';    background: #ffc107;
    width: 100%;
    height: 2px;
    bottom: -12px;
    left: 0;
}
</style>
@endsection

@section('content')

<section class="main">
    <div class="main_space"></div>
    <div class="container row_container">
        <div class="row">
                <div class="col-8 col-md-8 col-lg-8">
                    <div class="header-page">
                        <h1><span>{{$data->name}}</span></h1>
                    </div>
                    @foreach($post as $val)
                    <div class="row_item" style="padding:10px">
                        <div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-12 col-sx-12">
                                    <div class="row_item-img">
                                        <a href="{{$data->category->slug}}/{{$val->post->slug}}"><img src="data/product/{{$val->Post->img}}" alt="No picture"></a>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-6 col-sm-12 col-sx-12 border-right" style="">
                                    <div class="booking_content" style="padding:0">
                                        <h2 class="booking_title">
                                            <a href="{{$data->category->slug}}/{{$val->post->slug}}">
                                                {{$val->name}}
                                            </a>
                                        </h2>
                                        <div class="star-rating">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                        

                                        <div class="booking_text">
                                            <div style="text-align:justify; height: 61px; overflow: hidden;">{{$val->detail}}
                                            </div>

                                        </div>
                                        
                                        <div class="booking_icon">
                                            <?php $utilities = explode(',', $val->utilities); ?>
                                            @foreach($utilities as $utilitie)
                                            <img style="width: 14px; margin-right: 5px" src="data/tienich/{{$utilitie}}.png">
                                            @endforeach
                                        </div>
                                    </div>

                                </div>

                                <div class="col-lg-3 col-md-12 col-sm-12 col-sx-12" style="display: flex;align-items: center;justify-content: center;">
                                    <div class="main_booking-price">
                                        <div class="booking_price-label">{{__('lang.Price')}}</div>
                                        <div class="booking_price">{{ number_format($val->price) }}</div>
                                        <div class="booking_select">
                                            <a href="javascript:;" class="button_booking" id="btn-select-12" onclick="SelectRoom(12)" style="color:#000;font-size:15px;text-decoration:underline">{{ $val->unit }}</a>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="col-4 col-md-4 col-lg-4">

            <div class="reservation_hotel">
                <div class="reservation_title">
                    <h5 class="reservation_title-name">
                        {{__('lang.text3')}}
                    </h5>
                </div>
                <div class="hotel_content">
                    <ul>
                        <li>
                            <i class="fa fa-gavel"></i> {{__('lang.text41')}}
                        </li>
                        <li>
                            <i class="fas fa-dollar-sign"></i> {{__('lang.text42')}}
                        </li>
                        <li>
                            <i class="fa fa-bed"></i> {{__('lang.text43')}}
                        </li>
                        <li>
                            <i class="fa fa-user-secret"></i> {{__('lang.text44')}}
                        </li>
                        <li>
                            <i class="fab fa-tripadvisor"></i> {{__('lang.text45')}}
                        </li>
                    </ul>
                </div>
            </div>
            </div>
    </div>
    </div>


</section>

@endsection
@section('script')

@endsection