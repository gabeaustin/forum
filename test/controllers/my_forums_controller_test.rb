require 'test_helper'

class MyForumsControllerTest < ActionController::TestCase
  setup do
    @my_forum = my_forums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_forums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_forum" do
    assert_difference('MyForum.count') do
      post :create, my_forum: { description: @my_forum.description, name: @my_forum.name }
    end

    assert_redirected_to my_forum_path(assigns(:my_forum))
  end

  test "should show my_forum" do
    get :show, id: @my_forum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_forum
    assert_response :success
  end

  test "should update my_forum" do
    patch :update, id: @my_forum, my_forum: { description: @my_forum.description, name: @my_forum.name }
    assert_redirected_to my_forum_path(assigns(:my_forum))
  end

  test "should destroy my_forum" do
    assert_difference('MyForum.count', -1) do
      delete :destroy, id: @my_forum
    end

    assert_redirected_to my_forums_path
  end
end
