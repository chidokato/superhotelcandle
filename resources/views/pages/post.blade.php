@extends('layout.index')

@section('title') {{$post->title ? $post->title : $post->name}} @endsection
@section('description') {{$post->description ? $post->description : $post->name.$post->name}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection
@section('css')
<style type="text/css">
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

<link href="frontendfrontend/content/Css/page-about.css" rel="stylesheet" />
<link href="frontend/content/Css/room-single.css" rel="stylesheet" />
<link href="frontend/content/Css/blog.css" rel="stylesheet" />
@endsection
@section('content')


<section class="main">
    <div class="detail-blog__wrapper">
        <div class="main_space"></div>
    <div class="container mb-5">

        <div class="row">
           <div class="col-lg-8">
            <div class="header-page">
                <h1><span>{{$post->name}}</span></h1>
            </div>
            <i>{{$post->detail}}</i>
               <div class="detail-blog" style="margin-top: 10px">
                    
                    {!!$post->content!!}
               </div>
           </div>
           <div class="col-lg-4">
               <div class="sidebar">
                   <div class="col-lg-12">
                <div class="block_text">
                    
                    <div class="block_content">
                            @foreach($related_post as $val)
                            <a href="{{$catslug}}/{{$val->slug}}">
                                <div class="blog-item">
                                    <div class="blog-item-img">
                                        <img src="data/news/{{$val->Post->img}}" alt="nui-ham-rong">
                                    </div>
                                    <div class="blog-item-text" style="">
                                        <div class="item-text-title">
                                            {{$val->name}}
                                        </div>
                                        <div class="item-text-date"><em>{{date('d/m/Y',strtotime($val->created_at))}}</em></div>
                                    </div>
                                </div>
                            </a>
                            @endforeach
                    </div>
                </div>
            </div>
            
               </div>
           </div>
        </div>
        
    </div>
    </div>

</section>

@endsection
@section('script')

@endsection