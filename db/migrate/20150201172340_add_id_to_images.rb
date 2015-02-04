class AddIdToImages < ActiveRecord::Migration
  def change
    rename_column :categorizations, :shirt_image_front, :shirt_image_front_id
    rename_column :categorizations, :shirt_image_back, :shirt_image_back_id
  end
end
