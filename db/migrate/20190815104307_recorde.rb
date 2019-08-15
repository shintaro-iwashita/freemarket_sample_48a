class Recorde < ActiveRecord::Migration[5.2]
  def change
    drop_table :product_images
  end
end
