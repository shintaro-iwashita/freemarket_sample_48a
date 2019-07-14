class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.string    :like, null: false
      t.references    :user, null: false
      t.references    :product, null: false

      t.timestamps
    end
  end
end
