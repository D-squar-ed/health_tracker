# This file should contain all the record creation needed to seed the
# database with its default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lb.create(weight: 255)
Lb.create(weight: 185)
Lb.create(weight: 205)
Lb.create(weight: 195)
Lb.create(weight: 278)

StepNumber.create(steps_taken: 100)
StepNumber.create(steps_taken: 55)
StepNumber.create(steps_taken: 30)
StepNumber.create(steps_taken: 299)
StepNumber.create(steps_taken: 214)

exercise_types = ["Swimming","Sprints", "Jogging", "Weight-Lifting",
  "Tai Chi", "Rock-Climbing"]

  exercise_types.sort!
  exercise_types.each do |type|
  ExerciseType.create!(name: type)
end


#
# sw = ExerciseType.create(name: 'Swimming')
# sp = ExerciseType.create(name: 'Sprints')
# jo = ExerciseType.create(name: 'Jogging')
# wl = ExerciseType.create(name: 'Weight-Lifting')
# tc = ExerciseType.create(name: 'Tai Chi')
# rc = ExerciseType.create(name: 'Rock-Climbing')
#
#
# ExerciseStatistic.create(duration: 2, date: 2015-10-04, exercise_type_id: sw.id)
# ExerciseStatistic.create(duration: 1, date: 2015-10-14, exercise_type_id: sp.id)
# ExerciseStatistic.create(duration: 2, date: 2015-09-12, exercise_type_id: jo.id)
# ExerciseStatistic.create(duration: 3, date: 2015-10-24, exercise_type_id: wl.id)
# ExerciseStatistic.create(duration: 4, date: 2015-11-25, exercise_type_id: tc.id)
# ExerciseStatistic.create(duration: 4, date: 2015-10-04, exercise_type_id: rc.id)
