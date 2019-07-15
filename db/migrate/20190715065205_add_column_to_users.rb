class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :text
    add_column :users, :nickname, :string,null:false,length:{maximum:20}
    add_column :users, :self_introduction, :text
    add_column :users, :evaluation, :integer,null:false
    add_column :users, :family_name, :string,null:false
    add_column :users, :first_name, :string,null:false
    add_column :users, :family_name_kana, :string,null:false
    add_column :users, :first_name_kana, :string,null:false
    add_column :users, :data_of_birth, :date,null:false
    add_column :users, :how_to_pay, :string,null:false
    add_column :users, :gender, :string,null:false,foreign_key:true
  end
end
