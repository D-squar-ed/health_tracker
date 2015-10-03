class ExerciseType < ActiveRecord::Base
  has_many :exercise_statistics
end
