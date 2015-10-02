require 'test_helper'

class LbsControllerTest < ActionController::TestCase
  setup do
    @lb = lbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb" do
    assert_difference('Lb.count') do
      post :create, lb: { date: @lb.date, weight: @lb.weight }
    end

    assert_redirected_to lb_path(assigns(:lb))
  end

  test "should show lb" do
    get :show, id: @lb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lb
    assert_response :success
  end

  test "should update lb" do
    patch :update, id: @lb, lb: { date: @lb.date, weight: @lb.weight }
    assert_redirected_to lb_path(assigns(:lb))
  end

  test "should destroy lb" do
    assert_difference('Lb.count', -1) do
      delete :destroy, id: @lb
    end

    assert_redirected_to lbs_path
  end
end
