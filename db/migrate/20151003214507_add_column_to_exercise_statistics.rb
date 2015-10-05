class AddColumnToExerciseStatistics < ActiveRecord::Migration
  def change
    add_column :exercise_statistics, :nomnoms_lost, :integer
  end
end
