class AddClothingSizeToLineItems < ActiveRecord::Migration
  def change
  	add_column :line_items, :clothing_size_id, :integer
  end
end
