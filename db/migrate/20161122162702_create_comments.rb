class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :member_id
      t.integer :fitbit_id
      t.integer :stars

      t.timestamps null: false
    end
  end
end
