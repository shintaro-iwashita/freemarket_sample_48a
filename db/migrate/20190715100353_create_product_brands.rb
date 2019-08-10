class CreateProductBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :product_brands do |t|
      t.string :name, null: false
      t.integer :parent_id, null: false
      t.integer :product_id, null: false
      t.timestamps null: true
    end
  end
end
