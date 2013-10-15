require 'test_helper'

class CategoriavsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoriavs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoriav" do
    assert_difference('Categoriav.count') do
      post :create, :categoriav => { }
    end

    assert_redirected_to categoriav_path(assigns(:categoriav))
  end

  test "should show categoriav" do
    get :show, :id => categoriavs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => categoriavs(:one).to_param
    assert_response :success
  end

  test "should update categoriav" do
    put :update, :id => categoriavs(:one).to_param, :categoriav => { }
    assert_redirected_to categoriav_path(assigns(:categoriav))
  end

  test "should destroy categoriav" do
    assert_difference('Categoriav.count', -1) do
      delete :destroy, :id => categoriavs(:one).to_param
    end

    assert_redirected_to categoriavs_path
  end
end
