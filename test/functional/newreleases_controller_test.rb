require 'test_helper'

class NewreleasesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newreleases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newrelease" do
    assert_difference('Newrelease.count') do
      post :create, :newrelease => { }
    end

    assert_redirected_to newrelease_path(assigns(:newrelease))
  end

  test "should show newrelease" do
    get :show, :id => newreleases(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => newreleases(:one).to_param
    assert_response :success
  end

  test "should update newrelease" do
    put :update, :id => newreleases(:one).to_param, :newrelease => { }
    assert_redirected_to newrelease_path(assigns(:newrelease))
  end

  test "should destroy newrelease" do
    assert_difference('Newrelease.count', -1) do
      delete :destroy, :id => newreleases(:one).to_param
    end

    assert_redirected_to newreleases_path
  end
end
