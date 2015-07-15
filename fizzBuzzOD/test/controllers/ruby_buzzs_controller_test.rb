require 'test_helper'

class RubyBuzzsControllerTest < ActionController::TestCase
  setup do
    @ruby_buzz = ruby_buzzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruby_buzzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruby_buzz" do
    assert_difference('RubyBuzz.count') do
      post :create, ruby_buzz: { answer: @ruby_buzz.answer, question: @ruby_buzz.question, submission: @ruby_buzz.submission }
    end

    assert_redirected_to ruby_buzz_path(assigns(:ruby_buzz))
  end

  test "should show ruby_buzz" do
    get :show, id: @ruby_buzz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruby_buzz
    assert_response :success
  end

  test "should update ruby_buzz" do
    patch :update, id: @ruby_buzz, ruby_buzz: { answer: @ruby_buzz.answer, question: @ruby_buzz.question, submission: @ruby_buzz.submission }
    assert_redirected_to ruby_buzz_path(assigns(:ruby_buzz))
  end

  test "should destroy ruby_buzz" do
    assert_difference('RubyBuzz.count', -1) do
      delete :destroy, id: @ruby_buzz
    end

    assert_redirected_to ruby_buzzs_path
  end
end
