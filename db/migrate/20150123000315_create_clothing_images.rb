class CreateClothingImages < ActiveRecord::Migration
  def change
    create_table :clothing_images do |t|
      t.string :shirt_image
      t.timestamps
    end
  end
end
