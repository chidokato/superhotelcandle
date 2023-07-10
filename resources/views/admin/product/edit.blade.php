@extends('admin.layout.main')
@section('content')
@include('admin.alert')

<form method="POST" action="{{route('product.update', [$data->id])}}" enctype="multipart/form-data">
@csrf
@method('PUT')

<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow fixed">
    <button type="button" id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3"><i class="fa fa-bars"></i></button>
    <ul class="navbar-nav ">
        <li class="nav-item"> <a class="nav-link line-1" href="{{route('product.index')}}" ><i class="fa fa-chevron-left" aria-hidden="true"></i> <span class="mobile-hide">Quay lại</span> </a> </li>
    </ul>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item mobile-hide">
            <button type="reset" class="btn-danger mr-2 form-control"><i class="fas fa-sync"></i> Làm mới</button>
        </li>
        <div class="topbar-divider d-none d-sm-block"></div>
        <li class="nav-item">
            <button type="submit" class="btn-success form-control"><i class="far fa-save"></i> Lưu lại</button>
        </li>
    </ul>
</nav>

<div class="d-sm-flex align-items-center justify-content-between mb-3 flex" style="height: 38px;">
    <h2 class="h3 mb-0 text-gray-800 line-1 size-1-3-rem">{{$data->name}}</h2>
</div>

<div class="row">
  <div class="col-xl-9 col-lg-9">
        <div class="card shadow mb-2">
            <div class="card-header d-flex flex-row align-items-center justify-content-between">
                <ul class="nav nav-pills">
                    <li><a data-toggle="tab" class="nav-link active" href="#vi">Chỉnh sửa</a></li>
                </ul>
            </div>
            <div class="tab-content overflow">
                <div class="tab-pane active">
                  <div class="card-body">
                      <div class="row">
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label>Name <span style="color: red">(*)</span></label>
                                  <input value="{{$data->name}}" name="name" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label>Slug <span style="color: red">(*)</span></label>
                                  <input required="" value="{{$data->Post->slug}}" name="slug" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description</label>
                                  <textarea rows="3" name="detail" class="form-control">{{$data->detail}}</textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Content</label>
                                  <textarea rows="4" name="content" class="form-control" id="ckeditor">{{$data->content}}</textarea>
                              </div>
                          </div>
                          
                      </div>
                  </div>
                </div>
            </div>
        </div>
        
<!-- SEO -->
<div class="card shadow mb-2 ">
  <div class="card-header d-flex flex-row align-items-center justify-content-between">
  <ul class="nav nav-pills">
  <li><a data-toggle="tab" class="nav-link active" href="#vi">SEO</a></li>
  </ul>
  </div>
  <div class="card-body">
  <div class="row">
  <div class="col-md-12">
  <div class="form-group">
  <label>Title</label>
  <input value="{{$data->title}}" name="title" placeholder="..." type="text" class="form-control">
  </div>
  </div>
  <div class="col-md-12">
  <div class="form-group">
  <label>Description</label>
  <input value="{{$data->description}}" name="description" placeholder="..." type="text" class="form-control">
  </div>
  </div>
  </div>
  </div>
</div>

<div class="card shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Tiện ích</h6>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Restaurant" type="checkbox" <?php if(strpos($data->utilities, 'Restaurant') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Nhà hàng</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Room_service" type="checkbox" <?php if(strpos($data->utilities, 'Room_service') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Dịch vụ phòng</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Laundry" type="checkbox" <?php if(strpos($data->utilities, 'Laundry') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Giặt ủi</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Wifi" type="checkbox" <?php if(strpos($data->utilities, 'Wifi') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Wifi</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Parking_area" type="checkbox" <?php if(strpos($data->utilities, 'Parking_area') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Chỗ gửi xe</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Have_breakfast" type="checkbox" <?php if(strpos($data->utilities, 'Have_breakfast') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Ăn sáng</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Gym" type="checkbox" <?php if(strpos($data->utilities, 'Gym') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Gym</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Spa" type="checkbox" <?php if(strpos($data->utilities, 'Spa') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Spa</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Safe" type="checkbox" <?php if(strpos($data->utilities, 'Safe') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Két sắt</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Television" type="checkbox" <?php if(strpos($data->utilities, 'Television') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Tivi</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Bathtub" type="checkbox" <?php if(strpos($data->utilities, 'Bathtub') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Bồn tắm</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Pool" type="checkbox" <?php if(strpos($data->utilities, 'Pool') !== false){echo 'checked="checked"';} ?>/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Bể bơi</div>
                        </label>
                      </div>
                  </div>
                </div>

              </div>
            
            </div>
        </div>

    </div>
    <div class="col-xl-3 col-lg-3">
        <div class="card shadow mb-4">
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Thông tin chi tiết</h6>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label class="">Danh mục</label>
                    <select name='parent' class="form-control select2" id="parent">
                      <option value="">--Chọn danh mục--</option>
                      @foreach($category as $val)
                      <option <?php if($val->id == $data->category_tras_id){echo 'selected'; } ?> value="{{$val->category->id}}">{{$val->name}}</option>
                      @endforeach
                    </select>
                    <div id="list_parent"></div>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <div style="display: flex;">
                      <input name="price" value="{{$data->price}}" placeholder="..." type="text" class="form-control">
                      <select class="form-control" name="unit">
                        <option <?php if($data->unit == 'VNĐ'){ echo "selected"; } ?> value="VNĐ">VNĐ</option>
                      </select>
                    </div>
                </div>
            </div>
          </div>

          <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Images</h6>
            </div>
            <div class="card-body">
                <div class="file-upload">
                    <div class="file-upload-content" onclick="$('.file-upload-input').trigger( 'click' )">
                        <img class="file-upload-image" src="{{ isset($data) ? 'data/product/'.$data->post->img : 'data/no_image.jpg' }}" />
                    </div>
                    <div class="image-upload-wrap">
                        <input name="img" class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
                    </div>
                </div>
            </div>
          </div>
        <!-- <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Vị trí</h6>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label class="">Tỉnh Thành</label>
                    <select class="form-control select2" id="province">
                      <option value="">...</option>
                      @foreach($province as $val)
                      <option value="{{$val->id}}">{{$val->name}}</option>
                      @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label class="">Quận huyện</label>
                    <select class="form-control select2" id="district">
                      <option value="">...</option>
                    </select>
                </div>

                <div class="form-group">
                    <label class="">Phường xã</label>
                    <select required name="ward_id" class="form-control select2" id="ward">
                      <option value="">...</option>
                    </select>
                </div>
                
            </div>
          </div> -->
          
        <div class="card shadow mb-2">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Chọn nhiều ảnh</h6>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input type="file" name="imgdetail[]" multiple class="form-control">
                    <p>Nhấn giữ <i style="color: red">Ctrl</i> để chọn nhiều ảnh !</p>
                </div>
                <div class="row detail-img">
                    @foreach($Images as $val)
                    <div class="col-md-4" id="detail_img">
                        <img src="data/product/detail/{{$val->img}}">
                        <button onClick="delete_row(this)" type="button" id="del_img_detail"> <i class="fa fa-times" aria-hidden="true"></i> </button>
                        <input type="hidden"  name="id_img_detail" id="id_img_detail" value="{{$val->id}}" />
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        
      </div>
</div>
</form>

<script>
    function addCode() {
        document.getElementById("add_to_me").insertAdjacentHTML("beforeend",
                '<div class="form-group d-flex align-items-center justify-content-between" id="section_list"><input class="form-control" type="text" name="name_section:vi[]" placeholder="Tiếng Việt"><input class="form-control" type="text" name="name_section:en[]" placeholder="Tiếng Anh"><input class="form-control" type="text" name="name_section:jp[]" placeholder="Tiếng Trung"><button type="button" onClick="delete_row(this)" class="form-control w100"><i class="fa fa-minus-circle" aria-hidden="true"></i></button></div>');
    }
    function delete_row(e) {
        e.parentElement.remove();
    }
</script>


@endsection