class AddClothingColorIdToCategorizations < ActiveRecord::Migration
  def change
  	add_column :categorizations, :clothing_color_id, :integer
  end
end
