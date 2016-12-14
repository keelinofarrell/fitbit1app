class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :email
      t.integer :fitbit_id

      t.timestamps null: false
    end
  end
end
