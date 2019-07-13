class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string    :name , null: false, length: {maximun: 40}
      t.integer   :price, null: false
      t.text      :text, null: false, length: { maximun: 1000}
      t.integer   :profit, null: false
      t.references  :user, null:false

      t.timestamps null: true
    end
  end
end
