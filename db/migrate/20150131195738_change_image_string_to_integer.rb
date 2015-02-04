class ChangeImageStringToInteger < ActiveRecord::Migration
  def change
    remove_column :categorizations, :shirt_image_front, :integer
    remove_column :categorizations, :shirt_image_back, :integer
    add_column :categorizations, :shirt_image_front, :integer
    add_column :categorizations, :shirt_image_back, :integer
  end
end
