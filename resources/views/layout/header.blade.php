<?php use App\Models\CategoryTranslation; ?>
<div class="header_contact">
        <div class="container container_contact">
            <div class="header_logo">
                <div class="logo">
                  <a href="{{asset('')}}" class="brand logo"><img src="data/home/{{$setting->img}}"></a>
                </div>
            </div>
            <div class="languge">
              <img src="frontend/files/images/language.png">
              <a href="lang/en"><img src="frontend/files/images/english_icon.png"> EN</a>
              <a href="lang/vi"><img src="frontend/files/images/vietnamese_icon.png"> VI</a>
              <a href="lang/jp"><img src="frontend/files/images/japan_icon.png"> JP</a>
              <!-- <select onchange="location = this.options[this.selectedIndex].value;">
                  <option {{ Session::get('locale')=='en' ? 'selected':'' }} value="lang/en">{{__('lang.english')}}</option>
                  <option {{ Session::get('locale')=='vi' ? 'selected':'' }} value="lang/vi">{{__('lang.vietnamese')}}</option>
                  <option {{ Session::get('locale')=='jp' ? 'selected':'' }} value="lang/jp">{{__('lang.japanese')}}</option>
              </select> -->
            </div>
        </div>
</div>
<section class="header">
    <div class="header_nav" style="background: url(frontend/img/bg.png);">
        <div class="nav_container">
            <header class="header" id="header">
               <section class="wrapper">
                  <div class="burger" id="burger">
                     <span class="burger-line"></span>
                     <span class="burger-line"></span>
                     <span class="burger-line"></span>
                  </div>
                  <span class="overlay"></span>
                  <nav class="navbar" id="navbar">
                     <ul class="menu" id="menu">
                        <li class="menu-item"><a href="{{asset('')}}" class="menu-link"><i class="fa fa-home"></i></a></li>
                        @foreach($category as $val)
                        <?php $submenu = CategoryTranslation::where('parent', $val->id)->get(); ?>
                        @if(count($submenu) > 0)
                        <li class="menu-item menu-dropdown">
                           <span class="menu-link" data-toggle="submenu">{{$val->name}}<i class="bx bx-chevron-down"></i></span>
                           <ul class="submenu">
                            @foreach($submenu as $subme)
                              <li class="submenu-item"><a href="{{asset('')}}{{$subme->category->slug}}" class="submenu-link">{{$subme->name}}</a></li>
                              @endforeach
                           </ul>
                        </li>
                        @else
                        <li class="menu-item"><a href="{{asset('')}}{{$val->category->slug}}" class="menu-link">{{$val->name}}</a></li>
                        @endif
                        @endforeach
                     </ul>
                  </nav>
               </section>
            </header>
            <div class="menu_mobile"></div>
            
        </div>
    </div>
</section>