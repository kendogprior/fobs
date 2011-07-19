require 'test_helper'

class MemberFeesControllerTest < ActionController::TestCase
  setup do
    @member_fee = member_fees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_fees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_fee" do
    assert_difference('MemberFee.count') do
      post :create, :member_fee => @member_fee.attributes
    end

    assert_redirected_to member_fee_path(assigns(:member_fee))
  end

  test "should show member_fee" do
    get :show, :id => @member_fee.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @member_fee.to_param
    assert_response :success
  end

  test "should update member_fee" do
    put :update, :id => @member_fee.to_param, :member_fee => @member_fee.attributes
    assert_redirected_to member_fee_path(assigns(:member_fee))
  end

  test "should destroy member_fee" do
    assert_difference('MemberFee.count', -1) do
      delete :destroy, :id => @member_fee.to_param
    end

    assert_redirected_to member_fees_path
  end
end
