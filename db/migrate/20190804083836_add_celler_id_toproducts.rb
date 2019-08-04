class AddCellerIdToproducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :celler_id, :integer
    add_column :products, :buyer_id, :integer

  end
end
