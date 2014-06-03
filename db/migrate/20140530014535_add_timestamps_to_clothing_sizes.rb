class AddTimestampsToClothingSizes < ActiveRecord::Migration
  def change
  	add_column :clothing_sizes, :created_at, :datetime
    add_column :clothing_sizes, :updated_at, :datetime
  end
end
