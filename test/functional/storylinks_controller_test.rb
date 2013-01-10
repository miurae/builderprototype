require 'test_helper'

class StorylinksControllerTest < ActionController::TestCase
  setup do
    @storylink = storylinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storylinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storylink" do
    assert_difference('Storylink.count') do
      post :create, storylink: { pattern: @storylink.pattern, story: @storylink.story }
    end

    assert_redirected_to storylink_path(assigns(:storylink))
  end

  test "should show storylink" do
    get :show, id: @storylink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storylink
    assert_response :success
  end

  test "should update storylink" do
    put :update, id: @storylink, storylink: { pattern: @storylink.pattern, story: @storylink.story }
    assert_redirected_to storylink_path(assigns(:storylink))
  end

  test "should destroy storylink" do
    assert_difference('Storylink.count', -1) do
      delete :destroy, id: @storylink
    end

    assert_redirected_to storylinks_path
  end
end
