class ChangeImagesandaddToClothingImages < ActiveRecord::Migration
  def change
  	rename_column :clothing_images, :shirt_image, :shirt_image_front
    add_column :clothing_images, :shirt_image_back, :string
  end
end
