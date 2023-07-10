@extends('admin.layout.main')

@section('content')
@include('admin.alert')

<form method="post" action="{{route('product.store')}}" enctype="multipart/form-data">
@csrf
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
    <h2 class="h3 mb-0 text-gray-800 line-1 size-1-3-rem">Thêm mới</h2>
</div>

<div class="row">
  <div class="col-xl-9 col-lg-9">
        <!-- <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Images</h6>
            </div>
            <div class="card-body">
                <div class="row">
                          <div class="col-md-3">
                              <div class="form-group">
                                  <label>View</label>
                                  <input name="view" placeholder="View" type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-3">
                              <div class="form-group">
                                  <label>Icon</label>
                                  <input name="icon" placeholder="Icon" type="text" class="form-control">
                              </div>
                          </div>
                          
                          
                      </div>
            </div>

        </div> -->

    
        <div class="card shadow mb-2">
            <div class="card-header d-flex flex-row align-items-center justify-content-between">
                <ul class="nav nav-pills">
                  <li><a data-toggle="tab" class="nav-link active" href="#en">Tiếng Anh <span style="color: red">(*)</span></a></li>
                    <li><a data-toggle="tab" class="nav-link " href="#vi">Tiếng Việt <span style="color: red">(*)</span></a></li>
                    
                    <li><a data-toggle="tab" class="nav-link" href="#jp">Tiếng Nhật <span style="color: red">(*)</span></a></li>
                </ul>
            </div>
            <div class="tab-content overflow">
                <div class="tab-pane " id="vi">
                  <div class="card-body">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Name <span style="color: red">(*)</span></label>
                                  <input required="" name="name:vi" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description</label>
                                  <textarea rows="3" name="detail:vi" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Content</label>
                                  <textarea name="content:vi" class="form-control" id="ckeditor"></textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Title (SEO)</label>
                                  <input name="title:vi" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description  (SEO)</label>
                                  <input name="description:vi" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                      </div>
                  </div>
                </div>
                <div class="tab-pane active" id="en">
                  <div class="card-body">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Name <span style="color: red">(*)</span></label>
                                  <input required="" name="name:en" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description</label>
                                  <textarea rows="3" name="detail:en" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Content</label>
                                  <textarea name="content:en" class="form-control" id="ckeditor1"></textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Title (SEO)</label>
                                  <input name="title:en" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description (SEO)</label>
                                  <input name="description:en" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                      </div>
                  </div>
                </div>
                <div class="tab-pane" id="jp">
                  <div class="card-body">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Name <span style="color: red">(*)</span></label>
                                  <input required="" name="name:jp" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description</label>
                                  <textarea rows="3" name="detail:jp" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Content</label>
                                  <textarea name="content:jp" class="form-control" id="ckeditor2"></textarea>
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Title (SEO)</label>
                                  <input name="title:jp" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
                          <div class="col-md-12">
                              <div class="form-group">
                                  <label>Description (SEO)</label>
                                  <input name="description:jp" placeholder="..." type="text" class="form-control">
                              </div>
                          </div>
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
                          <input name="utilities[]" value="Restaurant" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Nhà hàng</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Room_service" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Dịch vụ phòng</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Laundry" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Giặt ủi</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Wifi" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Wifi</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Parking_area" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Chỗ gửi xe</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Have_breakfast" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Ăn sáng</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Gym" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Gym</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Spa" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Spa</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Safe" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Két sắt</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Television" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Tivi</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Bathtub" type="checkbox" checked="checked"/>
                          <div class="checkbox__checkmark"></div><div class="checkbox__body">Bồn tắm</div>
                        </label>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                      <div class="checkboxes__item">
                        <label class="checkbox style-e">
                          <input name="utilities[]" value="Pool" type="checkbox" checked="checked"/>
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
                    <label class="">Danh mục <span style="color: red">(*)</span></label>
                    <select required="" name='parent' class="form-control select2" id="parent">
                      <option value="">--Chọn danh mục--</option>
                      @foreach($category as $val)
                      <option value="{{$val->category->id}}">{{$val->name}}</option>
                      @endforeach
                    </select>
                    <div id="list_parent"></div>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <div style="display: flex;">
                      <input name="price" placeholder="..." type="text" class="form-control">
                      <select class="form-control" name="unit">
                        <option value="VNĐ">VNĐ</option>
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
                        <img class="file-upload-image" src="{{ isset($data) ? 'data/news/'.$data->img : 'data/no_image.jpg' }}" />
                    </div>
                    <div class="image-upload-wrap">
                        <input name="img" class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
                    </div>
                </div>
            </div>

        </div>
        <div class="card shadow mb-2">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Chọn nhiều ảnh</h6>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input type="file" name="imgdetail[]" multiple class="form-control">
                    <p>Nhấn giữ <i style="color: red">Ctrl</i> để chọn nhiều ảnh !</p>
                </div>
                
            </div>
        </div>
      </div>
</div>

</form>
@endsection