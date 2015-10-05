class DashboardController < ApplicationController

  def index

    @calorie_intake = CalorieIntake.new
    @exercise_statistic = ExerciseStatistic.new

    @today = Dashboard.new(Date.today)
    @yesterday = Dashboard.new(Date.today - 1.day)

    @steps_count = StepNumber.steps_count
    @nomnom_today = CalorieIntake.consumed(Date.today)
    @lost_today = ExerciseStatistic.nomnoms_lost(Date.today)
    @intake_amounts = CalorieIntake.all.order(:date)
    @lost_today = CalorieIntake.daily_intake
    
  end

end
