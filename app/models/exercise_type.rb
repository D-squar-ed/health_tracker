class ExerciseType < ActiveRecord::Base
  has_many :exercise_statistics
  #validates :name, uniqueness: true
  #
  # def self.name
  #     self.all.map{ |type| [type.name, type.id] }
  # en

end
