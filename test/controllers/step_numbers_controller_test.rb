require 'test_helper'

class StepNumbersControllerTest < ActionController::TestCase
  setup do
    @step_number = step_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step number" do
    assert_difference('StepNumber.count') do
      post :create, step_number: { date: @step_number.date, steps_taken: @step_number.steps_taken }
    end

    assert_redirected_to step_number_path(assigns(:step_number))
  end

  test "should get step number" do
    get :show, id: @step_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_number
    assert_response :success
  end

  test "should update step number" do
    patch :update, id: @step_number, step_number: { date: @step_number.date, steps_taken: @step_number.steps_taken }
    assert_redirected_to step_number_path(assigns(:step_number))
  end

  test "should destroy step number" do
    assert_difference('StepNumber.count', -1) do
      delete :destroy, id: @step_number
    end

    assert_redirected_to step_numbers_path
  end

end
