require 'test_helper'

class ConsolasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consolas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consola" do
    assert_difference('Consola.count') do
      post :create, :consola => { }
    end

    assert_redirected_to consola_path(assigns(:consola))
  end

  test "should show consola" do
    get :show, :id => consolas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => consolas(:one).to_param
    assert_response :success
  end

  test "should update consola" do
    put :update, :id => consolas(:one).to_param, :consola => { }
    assert_redirected_to consola_path(assigns(:consola))
  end

  test "should destroy consola" do
    assert_difference('Consola.count', -1) do
      delete :destroy, :id => consolas(:one).to_param
    end

    assert_redirected_to consolas_path
  end
end
