class CreateStepNumbers < ActiveRecord::Migration
  def change
    create_table :step_numbers do |t|
      t.integer :steps_taken
      t.date :date

      t.timestamps null: false
    end
  end
end
