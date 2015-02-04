class AddImageTitleToClothingImages < ActiveRecord::Migration
  def change
    add_column :clothing_images, :image_title, :string
    rename_column :clothing_images, :image_name, :image_key
  end
end
