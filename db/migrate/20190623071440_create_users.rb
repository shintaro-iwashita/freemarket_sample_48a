class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :avatar
      t.string :nickname, null: false,length:{maximu:20}
      t.text :email,null: false,unique: true
      t.string :password, null: false
      t.text :self_introduction
      t.integer :evaluation, null: false
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana, null: false
      t.date :data_of_birth
      t.string :how_to_pay, null: false
      t.string :gender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
