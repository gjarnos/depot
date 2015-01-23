class ChangeImageoncatToOne < ActiveRecord::Migration
  def change
  	rename_column :categorizations, :clothing_image_id, :shirt_image_front
  	add_column :categorizations, :shirt_image_back, :string
  end
end
