class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :poster
      t.decimal :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
