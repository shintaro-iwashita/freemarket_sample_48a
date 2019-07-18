class CreateProductBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :product_brands do |t|
      t.string :name, null: false
      t.references :parent, null: false
      t.references :product, null: false
      t.timestamps null: true
    end
  end
end
