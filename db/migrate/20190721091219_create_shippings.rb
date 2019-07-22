class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.string      :shipping_charges, null: false
      t.string      :delivery_source_area, null: false
      t.string      :days_to_delivery, null: false
      t.references  :product, null: false, foreign_key: true
      t.timestamps  null: true
    end
  end
end
