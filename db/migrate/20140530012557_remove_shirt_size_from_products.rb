class RemoveShirtSizeFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :shirtsize, :string
  end
end
