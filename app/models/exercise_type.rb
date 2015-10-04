class ExerciseType < ActiveRecord::Base
  belongs_to :exercise_statistic
  validates :name, uniqueness: true

  def self.all_names
      self.all.map{ |type| [type.name, type.id] }
  end


end
