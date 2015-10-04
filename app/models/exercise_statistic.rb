class ExerciseStatistic < ActiveRecord::Base
  belongs_to :exercise_type


  def get_type
     type = ExerciseType.find_by_id(self.exercise_type_id)
     type.name
   end

  def self.nomnoms_lost(date)
    nomslost = ExerciseStatistic.where(date: date).reduce(0) do |sum, e|
       sum += e.nomnoms_lost.to_i
     end
     #returns absolute value of num
     nomslost.abs
  end
end
