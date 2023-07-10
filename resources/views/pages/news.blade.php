@extends('layout.index')

@section('title') {{$data->title ? $data->title : $data->name}} @endsection
@section('description') {{$data->description}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('css')
<link href="frontend/content/Css/page-about.css" rel="stylesheet" />
<style type="text/css">
.header-page h1{ font-size: 2rem; padding-bottom: 10px; margin-bottom: 20px; text-align: center; }
.box-img img{ object-fit: cover; }
</style>
@endsection

@section('content')

<section class="main">
    <div class="box-list">
        <div class="main_space"></div>
        <div class="book-room-text">
        <div class="container">
            <div class="header-page">
                <h1><span>{{$data->name}}</span></h1>
            </div>
            <div style="text-align: center;">
                {!! $data->content !!}
            </div>
        </div>
    </div>
<div class="main_space"></div>
    @foreach($post as $key => $val)
    <div class="box-item">
    <div class="box-img"><img alt="{{$val->name}}" src="data/news/{{$val->Post->img}}"></div>
    <div class="box-content">
        <h3 class="box-title"><a href="{{$data->category->slug}}/{{$val->post->slug}}">{{$val->name}}</a></h3>
        <div class="box-text"><span style="color:rgb(32, 33, 36)">{{$val->detail}}</span></div>
        <div class="hotel_infomation-button">
            <a href="{{$data->category->slug}}/{{$val->post->slug}}">
                <button>
                    Xem chi tiết
                </button>
            </a>
            </div>
        </div>
    </div>
    
    @endforeach
            
         
    </div>

    
    <div class="main_space"></div>
    
</section>

@endsection
