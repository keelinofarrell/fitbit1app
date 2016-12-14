class CreateFitbits < ActiveRecord::Migration
  def change
    create_table :fitbits do |t|
      t.string :name
      t.string :picture
      t.integer :battery_life_in_hours
      t.string :colour
      t.string :display

      t.timestamps null: false
    end
  end
end
