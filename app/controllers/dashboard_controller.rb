class DashboardController < ApplicationController

  def index
    @today = Dashboard.new(Date.today)
    @yesterday = Dashboard.new(Date.today - 1.day)
    @calories_today = CalorieIntake.consumed(Date.today)
    @burned_today = ExerciseStatistic.nomnoms_lost(Date.today)
    @intake_amounts = CalorieIntake.all.order(:date)
    @daily_intake = CalorieIntake.daily_intake
  end

end
