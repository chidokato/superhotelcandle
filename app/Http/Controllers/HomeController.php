<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

use App\Models\Category;
use App\Models\CategoryTranslation;
use App\Models\PostTranslation;
use App\Models\Images;
use App\Models\SectionTranslation;
use App\Models\SettingTranslation;
use App\Models\SliderTranslation;

// $locale = App::currentLocale();

class HomeController extends Controller
{
    // function __construct()
    // {

    //     view()->share( [
            
    //     ]);
    // }

    public function index()
    {
        $locale = App::currentLocale();
        $setting = SettingTranslation::where('locale', $locale)->first();
        $slider = SliderTranslation::where('locale', $locale)->get();
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->where('locale', $locale)
            ->select('category_translations.*')->orderBy('categories.view', 'asc')->get();
        // end
        $home_cats = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->select('category_translations.*')
            ->where('locale', $locale)->where('sort_by', 'Product')->get();
        $posts = PostTranslation::join('posts', 'posts.id', '=', 'post_translations.post_id')
            ->where('locale', $locale)
            ->select('post_translations.*')
            ->where('sort_by', 'Product')
            ->get();
        $fitness = PostTranslation::join('category_translations', 'category_translations.id', '=', 'post_translations.category_tras_id')
            ->select('post_translations.*')
            ->where('category_translations.locale', $locale)
            ->where('category_translations.category_id', 50)
            ->get();
        $restaurant = PostTranslation::join('category_translations', 'category_translations.id', '=', 'post_translations.category_tras_id')
            ->select('post_translations.*')
            ->where('category_translations.locale', $locale)
            ->where('category_translations.category_id', 49)
            ->get();
        return view('pages.home', compact(
            'category',
            'slider',
            'setting',
            'home_cats',
            'posts',
            'fitness',
            'restaurant',
        ));
    }

    public function about()
    {
        $locale = App::currentLocale();
        $setting = SettingTranslation::where('locale', $locale)->first();
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->where('locale', $locale)
            ->select('category_translations.*')->orderBy('categories.view', 'asc')->get();
        return view('pages.about', compact(
            'category',
            'setting',
        ));
    }

    public function contact()
    {
        $locale = App::currentLocale();
        $setting = SettingTranslation::where('locale', $locale)->first();
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->where('locale', $locale)
            ->select('category_translations.*')->orderBy('categories.view', 'asc')->get();
        return view('pages.contact', compact(
            'category',
            'setting',
        ));
    }

    public function category($slug)
    {
        $locale = App::currentLocale();
        $setting = SettingTranslation::where('locale', $locale)->first();
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->where('locale', $locale)
            ->select('category_translations.*')->orderBy('categories.view', 'asc')->get(); //menu
        $data = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->select('category_translations.*')
            ->where('slug', $slug)
            ->where('locale', $locale)->first();
        $post = PostTranslation::where('category_tras_id', $data->id)
            ->where('locale', $locale)
            ->orderBy('id', 'desc')
            ->get();
        if ($data->category->sort_by == 'Product') {
            return view('pages.category', compact(
                'category',
                'data',
                'post',
                'setting',
            ));
        }elseif($data->category->sort_by == 'News'){
            return view('pages.news', compact(
                'category',
                'data',
                'post',
                'setting',
            ));
        }
    }

    public function post($catslug, $slug)
    {
        $locale = App::currentLocale();
        $setting = SettingTranslation::where('locale', $locale)->first();
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->where('locale', $locale)
            ->select('category_translations.*')->orderBy('categories.view', 'asc')->get(); //menu

        $post = PostTranslation::join('posts', 'posts.id', '=', 'post_translations.post_id')
            ->where('locale', $locale)
            ->select('post_translations.*')
            ->where('posts.slug', $slug)
            ->first();
        $related_post = PostTranslation::join('posts', 'posts.id', '=', 'post_translations.post_id')
            ->where('category_tras_id',$post->category_tras_id)
            ->get();
        if ($post->post->sort_by == 'Product') {
            $images = Images::where('post_id', $post->post->id)->get();
            $section = SectionTranslation::where('locale', $locale)->where('post_id', $post->post->id)->orderBy('view', 'asc')->get();
            return view('pages.project', compact(
                'category',
                'post',
                'images',
                'section',
                'catslug',
                'setting',
                'related_post',
            ));
        }elseif ($post->post->sort_by == 'News') {
            return view('pages.post', compact(
                'category',
                'post',
                'catslug',
                'setting',
                'related_post',
            ));
        }
        
    }
}
