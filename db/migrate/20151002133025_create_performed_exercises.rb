class CreatePerformedExercises < ActiveRecord::Migration
  def change
    create_table :performed_exercises do |t|
      t.string :workout
      t.date :date
      t.integer :exercise_type_id

      t.timestamps null: false
    end
  end
end
