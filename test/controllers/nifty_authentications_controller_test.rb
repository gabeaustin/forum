require 'test_helper'

class NiftyAuthenticationsControllerTest < ActionController::TestCase
  setup do
    @nifty_authentication = nifty_authentications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nifty_authentications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nifty_authentication" do
    assert_difference('NiftyAuthentication.count') do
      post :create, nifty_authentication: {  }
    end

    assert_redirected_to nifty_authentication_path(assigns(:nifty_authentication))
  end

  test "should show nifty_authentication" do
    get :show, id: @nifty_authentication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nifty_authentication
    assert_response :success
  end

  test "should update nifty_authentication" do
    patch :update, id: @nifty_authentication, nifty_authentication: {  }
    assert_redirected_to nifty_authentication_path(assigns(:nifty_authentication))
  end

  test "should destroy nifty_authentication" do
    assert_difference('NiftyAuthentication.count', -1) do
      delete :destroy, id: @nifty_authentication
    end

    assert_redirected_to nifty_authentications_path
  end
end
