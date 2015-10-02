class CreateLbs < ActiveRecord::Migration
  def change
    create_table :lbs do |t|
      t.integer :weight
      t.date :date

      t.timestamps null: false
    end
  end
end
