class ChangeImageonImagesTable < ActiveRecord::Migration
  def change
  	rename_column :clothing_images, :shirt_image_front, :image_name
  	remove_column :clothing_images, :shirt_image_back, :string
  end
end
