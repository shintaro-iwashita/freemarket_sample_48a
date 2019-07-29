class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, length: { maximum: 40 }
      t.text :description, null: false, length: { maximum: 1000 }
      t.integer :size_id
      t.integer :condition_id, null: false
      t.integer :price, null: false
      t.integer :profit, null:false
      t.references :product_category
      t.integer :delivery_responsibility, null: false
      t.integer :delivery_method, null: false
      t.integer :delivery_area, null: false
      t.integer :delivery_day, null: false
      # t.references :seller_id
      # t.references :buyer_id
      t.timestamps null: true
    end
  end
end


