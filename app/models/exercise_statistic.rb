class ExerciseStatistic < ActiveRecord::Base
  has_many :exercise_types
  validates  :exercise_type, presence: true
  validates :duration, presence: true
  validates :date, presence: true

  def self.nomnoms_lost (date)
    ExerciseType.find(exercise_type_id).nomnoms_lost * duration
  end

  def self.nomnoms_lost_today

  end

end
