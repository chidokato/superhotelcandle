<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

use Image;
use File;

use App\Models\Category;
use App\Models\CategoryTranslation;
use App\Models\Post;
use App\Models\PostTranslation;
use App\Models\Images;
use App\Models\ProvinceTranslation;
use App\Models\WardTranslation;
use App\Models\Section;
use App\Models\SectionTranslation;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::where('sort_by', 'Product')->orderBy('id', 'DESC')->get();
        return view('admin.product.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $locale = Session::get('locale');
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->select('category_translations.*') 
            ->where('sort_by', 'Product')
            ->where('locale', $locale)->orderBy('category_id', 'DESC')->get();
        $province = ProvinceTranslation::where('locale', $locale)->get();
        return view('admin.product.create')->with(compact('category', 'province'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $post = new Post();
        $post->user_id = Auth::User()->id;
        $post->status = 'true';
        $post->sort_by = 'Product';
        $post->slug = Str::slug($data['name:en'], '-');

        // thêm ảnh
        if ($request->hasFile('img')) {
            $file = $request->file('img');
            $filename = $file->getClientOriginalName();
            while(file_exists("data/product/".$filename)){$filename = rand(0,99)."_".$filename;}
            $file->move('data/product', $filename);
            $post->img = $filename;
        }
        // thêm ảnh

        $post->fill([
          'en' => [
            'category_tras_id' => $data['category_id:en'],
            'name' => $data['name:en'],
            'detail' => $data['detail:en'],
            'content' => $data['content:en'],
            'price' => $data['price'],
            'unit' => $data['unit'],
            'title' => $data['title:en'],
            'description' => $data['description:en'],
            'utilities' => implode(',', $data['utilities']),
          ],
          'vi' => [
            'category_tras_id' => $data['category_id:vi'],
            'name' => $data['name:vi'],
            'detail' => $data['detail:vi'],
            'content' => $data['content:vi'],
            'price' => $data['price'],
            'unit' => $data['unit'],
            'title' => $data['title:vi'],
            'description' => $data['description:vi'],
            'utilities' => implode(',', $data['utilities']),
          ],
          'jp' => [
            'category_tras_id' => $data['category_id:jp'],
            'name' => $data['name:jp'],
            'detail' => $data['detail:jp'],
            'content' => $data['content:jp'],
            'price' => $data['price'],
            'unit' => $data['unit'],
            'title' => $data['title:jp'],
            'description' => $data['description:jp'],
            'utilities' => implode(',', $data['utilities']),
          ]
        ]);
        $post->save();

        if($request->hasFile('imgdetail')){
            foreach ($request->file('imgdetail') as $file) {
                if(isset($file)){
                    $Images = new Images();
                    $Images->post_id = $post->id;
                    $filename = $file->getClientOriginalName();
                    while(file_exists("data/product/detail/".$filename)){$filename = rand(0,99)."_".$filename;}
                    $file->move('data/product/detail', $filename);
                    $Images->img = $filename;
                    $Images->save();
                }
            }
        }

        return redirect('admin/product')->with('Success','Success');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $locale = Session::get('locale');
        $data = PostTranslation::find($id);
        $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
            ->select('category_translations.*')
            ->where('sort_by', 'Product')
            ->where('locale', $data->locale)->orderBy('category_id', 'DESC')->get();
        $Images = Images::where('post_id', $data->post->id)->get();
        $province = ProvinceTranslation::where('locale', $data->locale)->get();
        $section = SectionTranslation::where('locale', $data->locale)->where('post_id', $data->post->id)->get();
        return view('admin.product.edit')->with(compact('category', 'data', 'Images', 'province', 'locale', 'section'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        
        $PostTranslation = PostTranslation::find($id);
        $PostTranslation->name = $data['name'];
        $PostTranslation->detail = $data['detail'];
        $PostTranslation->content = $data['content'];
        $PostTranslation->title = $data['title'];
        $PostTranslation->description = $data['description'];
        $PostTranslation->price = $data['price'];
        $PostTranslation->unit = $data['unit'];
        
        $PostTranslation->save();

        $Post = Post::find($PostTranslation->post_id);
        $Post->slug = $data['slug'];
        $Post->fill([
          'en' => [
            'utilities' => implode(',', $data['utilities']),
          ],
          'vi' => [
            'utilities' => implode(',', $data['utilities']),
          ],
          'jp' => [
            'utilities' => implode(',', $data['utilities']),
          ]
        ]);

        if (isset($data['category_id:en'])) {
            $Post->fill([
              'en' => [
                'category_tras_id' => $data['category_id:en'],
              ],
              'vi' => [
                'category_tras_id' => $data['category_id:vi'],
              ],
              'jp' => [
                'category_tras_id' => $data['category_id:jp'],
              ]
            ]);
        }
        // thêm ảnh
        if ($request->hasFile('img')) {
            if(File::exists('data/product/'.$Post->img)) { File::delete('data/product/'.$Post->img);} // xóa ảnh cũ
            $file = $request->file('img');
            $filename = $file->getClientOriginalName();
            while(file_exists("data/product/".$filename)){$filename = rand(0,99)."_".$filename;}
            $file->move('data/product', $filename);
            $Post->img = $filename;
        }
        // thêm ảnh
        $Post->save();

        if($request->hasFile('imgdetail')){
            foreach ($request->file('imgdetail') as $file) {
                if(isset($file)){
                    $Images = new Images();
                    $Images->post_id = $Post->id;
                    $filename = $file->getClientOriginalName();
                    while(file_exists("data/product/detail/".$filename)){$filename = rand(0,99)."_".$filename;}
                    $file->move('data/product/detail', $filename);
                    $Images->img = $filename;
                    $Images->save();
                }
            }
        }
        

        return redirect()->back()->with('Success','Success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $SectionTranslation = SectionTranslation::where('post_id', $id)->get();
      foreach ($SectionTranslation as $key => $value) {
        SectionTranslation::find($value->id)->delete();
        $Section = Section::find($value->section_id);
        if ($Section) {
          $Section->delete();
        }
      }
      $PostTranslation = PostTranslation::where('post_id', $id)->get();
      foreach ($PostTranslation as $key => $value) {
          PostTranslation::find($value->id)->delete();
      }

      $Images = Images::where('post_id', $id)->get();
      foreach ($Images as $key => $val) {
          $Image = Images::find($val->id);
          if(File::exists('data/product/detail'.$Image->img)) { File::delete('data/product/detail'.$Image->img);} // xóa ảnh cũ
          $Image->delete();
      }

      $Post = Post::find($id);
      if(File::exists('data/product/'.$Post->img)) { File::delete('data/product/'.$Post->img);} // xóa ảnh cũ
      $Post->delete();

      return redirect()->back()->with('Success','Success');
    }
}
