require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Image.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Image.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Image.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to image_url(assigns(:image))
  end
  
  def test_edit
    get :edit, :id => Image.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Image.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Image.first
    assert_template 'edit'
  end

  def test_update_valid
    Image.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Image.first
    assert_redirected_to image_url(assigns(:image))
  end
  
  def test_destroy
    image = Image.first
    delete :destroy, :id => image
    assert_redirected_to images_url
    assert !Image.exists?(image.id)
  end
end
