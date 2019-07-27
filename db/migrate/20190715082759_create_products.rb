class CreateProducts < ActiveRecord::Migration[5.2]
  def chang
    create_table :products do |t|
      t.string :name, null: false, length: { maximum: 40 }
      t.text :description, null: false, length: { maximum: 1000 }
      t.references :user, null: false, foreign_key: true
      t.integer :size_id
      t.integer :condition_id, null: false
      t.integer :price, null: false
      t.integer :profit, null:false
      t.references :category, foreign_key: true
      t.integer :delivery_responsibility, null: false
      t.integer :delivery_method, null: false
      t.integer :delivery_area, null: false
      t.integer :delivery_day, null: false
      t.references :seller, foreign_key: true
      t.references :integer, foreign_key: true
      t.timestamps null: true
    end
  end
end

forein_key
