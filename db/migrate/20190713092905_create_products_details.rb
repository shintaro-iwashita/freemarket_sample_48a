class CreateProductsDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :products_details do |t|
      t.integer  :size , null: false
      t.integer  :condition, null: false
      t.references  :product, null: false, foreign_key: true

      t.timestamps  null: true
    end
  end
end
