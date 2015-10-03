class CreateExerciseStatistics < ActiveRecord::Migration
  def change
    create_table :exercise_statistics do |t|
      t.integer :duration
      t.date :date
      t.integer :exercise_type_id

      t.timestamps null: false
    end
  end
end
