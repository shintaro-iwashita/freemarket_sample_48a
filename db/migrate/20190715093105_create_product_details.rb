class CreateProductDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.integer :size, null: false
      t.integer :condition, null: false
      t.references :product, null: false, foreign_key: true
      t.timestamps null: true
    end
  end
end
