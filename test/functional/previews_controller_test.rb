require 'test_helper'

class PreviewsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:previews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preview" do
    assert_difference('Preview.count') do
      post :create, :preview => { }
    end

    assert_redirected_to preview_path(assigns(:preview))
  end

  test "should show preview" do
    get :show, :id => previews(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => previews(:one).to_param
    assert_response :success
  end

  test "should update preview" do
    put :update, :id => previews(:one).to_param, :preview => { }
    assert_redirected_to preview_path(assigns(:preview))
  end

  test "should destroy preview" do
    assert_difference('Preview.count', -1) do
      delete :destroy, :id => previews(:one).to_param
    end

    assert_redirected_to previews_path
  end
end
