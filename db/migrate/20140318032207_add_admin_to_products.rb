class AddAdminToProducts < ActiveRecord::Migration
  def change
  	add_column :users, :admin, :string
  end
end
