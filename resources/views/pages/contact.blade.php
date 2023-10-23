@extends('layout.index')

@section('title') SUPER HOTEL Candle là một dự án tiêu biểu của Tập đoàn Nhân Nghĩa @endsection
@section('description') SUPER HOTEL Candle là một dự án tiêu biểu của Tập đoàn Nhân Nghĩa, được khởi công xây dựng năm 2007, hoạt động từ năm 2013 @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection
@section('css')
<style>
.contact_form input {
    margin: 0 0 20px 0;
}

.submit_form {
    background-color: #c7b39a;
    border: none;
    border-radius: 3px;
    color: #fff;
    display: inline-block;
    text-transform: uppercase;
    padding: 8px 20px;
    margin: 20px 20px 20px 0;
}

    .submit_form:focus {
        outline: none;
    }
</style>
@endsection
@section('content')
<section class="main">
    <div class="map">
        {!!$setting->maps!!}
    </div>
    <div class="main_space"></div>
    <div class="container">
        <div class="contact_title" style="text-align: center;margin: 0 0 30px 0;">
            <span class="contact_subtitle" style="color:#666666;"></span>
            <h2 class="contact_title-name" style="color:#111111;font-weight: 400;">{{__('lang.Contact')}}</h2>
        </div>
        <div class="row" style="justify-content: center;">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <form action="" method="post" id="contact-form" novalidate="novalidate">
                    <div class="contact_form">
                        <input type="hidden" name="Discount" value=": 0%" class="form-control">
                        <input type="text" required name="name" class="form-control" placeholder="{{__('lang.f_name')}}" aria-required="true">
                        <input type="text" name="phone" class="form-control" placeholder="{{__('lang.f_phone')}}" aria-required="true">
                        <input type="text" name="email" class="form-control" placeholder="{{__('lang.f_email')}}" aria-required="true">
                        <textarea class="form-control" name="content" rows="10" placeholder="{{__('lang.f_content')}}" aria-required="true"></textarea>
                        <div class="submit_message">
                            <button class="submit_form">
                                {{__('lang.f_cent')}}
                            </button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <div class="main_space"></div>
    
</section>

@endsection

@section('script')

@endsection