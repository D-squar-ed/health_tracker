class Dashboard

  def initialize(date)
    @date = date
  end

  def total_nomnoms
    CalorieIntake.consumed(@date) - ExerciseStatistic.nomnoms_lost(@date)
  end
end


#- StepNumbers.nomnoms_lost(@date)
