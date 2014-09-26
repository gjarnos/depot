class AddQuantityToCategorizations < ActiveRecord::Migration
  def change
  	add_column :categorizations, :quantity, :integer
  end
end
