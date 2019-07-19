class RenamePescriptionColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :pescription, :prescription
  end
end
