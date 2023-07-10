@extends('layout.index')

@section('title') Công Ty Cổ Phần Bất Động Sản Indochine @endsection
@section('description') Tầng 1, toà CT4-Vimeco (cạnh siêu thị Vinmart), Nguyễn Chánh, P. Trung Hoà Nhân Chính, Q. Cầu Giấy, HN @endsection
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
            <h2 class="contact_title-name" style="color:#111111;font-weight: 400;">Liên hệ</h2>
        </div>
        <div class="row" style="justify-content: center;">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <form action="/Contact/SubmitContact" method="post" id="contact-form" novalidate="novalidate">
                    <div class="contact_form">
                        <input type="hidden" name="Discount" value=": 0%" class="form-control">
                        <input type="text" required="" name="FullName" class="form-control" placeholder="Tên của bạn" aria-required="true">
                        <input type="text" required="" name="Tel" class="form-control" placeholder="Số điện thoại" aria-required="true">
                        <input type="text" required="" name="Email" class="form-control" placeholder="Địa chỉ hòm thư" aria-required="true">
                        <textarea class="form-control" required="" name="Request" id="mess_contact" rows="10" placeholder="Nội dung" aria-required="true"></textarea>
                        <div class="submit_message">
                            <button class="submit_form">
                                Gửi Email
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