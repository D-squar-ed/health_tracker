# This file should contain all the record creation needed to seed the
# database with its default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
exercise_types = ["Swimming","Sprints", "Jogging", "Weight-Lifting",
  "Tai Chi", "Rock-Climbing"]

  exercise_types.sort!
  exercise_types.each do |type|
  ExerciseType.create!(name: type)
end

# s = ExerciseType.create(name: 'Swimming')
# a = ExerciseType.create(name: 'Sprints')
# b = ExerciseType.create(name: 'Jogging')
# c = ExerciseType.create(name: 'Weight-Lifting')
# l = ExerciseType.create(name: 'Tai Chi')
# d = ExerciseType.create(name: 'Rock-Climbing')
#
#
# ExerciseStatistic.create(duration: 2, exercise_type_id: s.id)
# ExerciseStatistic.create(duration: 1, exercise_type_id: a.id)
# ExerciseStatistic.create(duration: 2, exercise_type_id: b.id)
# ExerciseStatistic.create(duration: 3, exercise_type_id: c.id)
# ExerciseStatistic.create(duration: 4, exercise_type_id: l.id)
