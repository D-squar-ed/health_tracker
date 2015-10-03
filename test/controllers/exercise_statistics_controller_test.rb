require 'test_helper'

class ExerciseStatisticsControllerTest < ActionController::TestCase
  setup do
    @exercise_statistic = exercise_statistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_statistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_statistic" do
    assert_difference('ExerciseStatistic.count') do
      post :create, exercise_statistic: { date: @exercise_statistic.date, duration: @exercise_statistic.duration, exercise_type_id: @exercise_statistic.exercise_type_id }
    end

    assert_redirected_to exercise_statistic_path(assigns(:exercise_statistic))
  end

  test "should show exercise_statistic" do
    get :show, id: @exercise_statistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_statistic
    assert_response :success
  end

  test "should update exercise_statistic" do
    patch :update, id: @exercise_statistic, exercise_statistic: { date: @exercise_statistic.date, duration: @exercise_statistic.duration, exercise_type_id: @exercise_statistic.exercise_type_id }
    assert_redirected_to exercise_statistic_path(assigns(:exercise_statistic))
  end

  test "should destroy exercise_statistic" do
    assert_difference('ExerciseStatistic.count', -1) do
      delete :destroy, id: @exercise_statistic
    end

    assert_redirected_to exercise_statistics_path
  end
end
