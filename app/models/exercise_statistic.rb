class ExerciseStatistic < ActiveRecord::Base
  has_many :exercise_types


  def nomnoms_lost
    ExerciseType.find(exercise_type_id).nomnoms_lost * duration
  end

  def self.nomnoms_lost(date)
    nomslost = ExerciseStatistic.where(date: date).reduce(0) do |sum, e|
       sum += e.nomnoms_lost
     end
     #returns absolute value of num
     nomslost.abs
  end
end
