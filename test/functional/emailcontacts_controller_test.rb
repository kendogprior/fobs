require 'test_helper'

class EmailcontactsControllerTest < ActionController::TestCase
  setup do
    @emailcontact = emailcontacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emailcontacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emailcontact" do
    assert_difference('Emailcontact.count') do
      post :create, :emailcontact => @emailcontact.attributes
    end

    assert_redirected_to emailcontact_path(assigns(:emailcontact))
  end

  test "should show emailcontact" do
    get :show, :id => @emailcontact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emailcontact.to_param
    assert_response :success
  end

  test "should update emailcontact" do
    put :update, :id => @emailcontact.to_param, :emailcontact => @emailcontact.attributes
    assert_redirected_to emailcontact_path(assigns(:emailcontact))
  end

  test "should destroy emailcontact" do
    assert_difference('Emailcontact.count', -1) do
      delete :destroy, :id => @emailcontact.to_param
    end

    assert_redirected_to emailcontacts_path
  end
end
