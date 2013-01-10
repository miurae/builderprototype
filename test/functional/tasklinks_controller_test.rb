require 'test_helper'

class TasklinksControllerTest < ActionController::TestCase
  setup do
    @tasklink = tasklinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasklinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasklink" do
    assert_difference('Tasklink.count') do
      post :create, tasklink: { application: @tasklink.application, input_data: @tasklink.input_data, output_data: @tasklink.output_data, task: @tasklink.task }
    end

    assert_redirected_to tasklink_path(assigns(:tasklink))
  end

  test "should show tasklink" do
    get :show, id: @tasklink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasklink
    assert_response :success
  end

  test "should update tasklink" do
    put :update, id: @tasklink, tasklink: { application: @tasklink.application, input_data: @tasklink.input_data, output_data: @tasklink.output_data, task: @tasklink.task }
    assert_redirected_to tasklink_path(assigns(:tasklink))
  end

  test "should destroy tasklink" do
    assert_difference('Tasklink.count', -1) do
      delete :destroy, id: @tasklink
    end

    assert_redirected_to tasklinks_path
  end
end
