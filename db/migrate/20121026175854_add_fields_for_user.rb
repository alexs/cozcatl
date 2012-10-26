class AddFieldsForUser < ActiveRecord::Migration
  def up
     add_column :users, :name, :string
     add_column :users, :surname, :string 
     add_column :users, :address, :string  
     add_column :users, :phone, :string 
     add_column :users, :rol, :integer, :default => 1
  end

  def down
  end
end
