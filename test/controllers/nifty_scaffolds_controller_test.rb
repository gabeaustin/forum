require 'test_helper'

class NiftyScaffoldsControllerTest < ActionController::TestCase
  setup do
    @nifty_scaffold = nifty_scaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nifty_scaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nifty_scaffold" do
    assert_difference('NiftyScaffold.count') do
      post :create, nifty_scaffold: { description: @nifty_scaffold.description, forum: @nifty_scaffold.forum, name: @nifty_scaffold.name }
    end

    assert_redirected_to nifty_scaffold_path(assigns(:nifty_scaffold))
  end

  test "should show nifty_scaffold" do
    get :show, id: @nifty_scaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nifty_scaffold
    assert_response :success
  end

  test "should update nifty_scaffold" do
    patch :update, id: @nifty_scaffold, nifty_scaffold: { description: @nifty_scaffold.description, forum: @nifty_scaffold.forum, name: @nifty_scaffold.name }
    assert_redirected_to nifty_scaffold_path(assigns(:nifty_scaffold))
  end

  test "should destroy nifty_scaffold" do
    assert_difference('NiftyScaffold.count', -1) do
      delete :destroy, id: @nifty_scaffold
    end

    assert_redirected_to nifty_scaffolds_path
  end
end
