class ExerciseType < ActiveRecord::Base
  has_many :performed_exercises
end
