require 'test_helper'

class PatternlinksControllerTest < ActionController::TestCase
  setup do
    @patternlink = patternlinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patternlinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patternlink" do
    assert_difference('Patternlink.count') do
      post :create, patternlink: { active_task: @patternlink.active_task, passive_task: @patternlink.passive_task, pattern: @patternlink.pattern }
    end

    assert_redirected_to patternlink_path(assigns(:patternlink))
  end

  test "should show patternlink" do
    get :show, id: @patternlink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patternlink
    assert_response :success
  end

  test "should update patternlink" do
    put :update, id: @patternlink, patternlink: { active_task: @patternlink.active_task, passive_task: @patternlink.passive_task, pattern: @patternlink.pattern }
    assert_redirected_to patternlink_path(assigns(:patternlink))
  end

  test "should destroy patternlink" do
    assert_difference('Patternlink.count', -1) do
      delete :destroy, id: @patternlink
    end

    assert_redirected_to patternlinks_path
  end
end
