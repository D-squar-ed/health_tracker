class ExerciseType < ActiveRecord::Base
  belongs_to :exercise_statistic
  validates :name, uniqueness: true

end
