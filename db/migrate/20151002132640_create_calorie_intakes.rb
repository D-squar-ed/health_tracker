class CreateCalorieIntakes < ActiveRecord::Migration
  def change
    create_table :calorie_intakes do |t|
      t.integer :nomnom
      t.date :date

      t.timestamps null: false
    end
  end
end
