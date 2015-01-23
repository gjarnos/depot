class ChangeImageToString < ActiveRecord::Migration
  def change
  	change_column :categorizations, :shirt_image_front, :string
  end
end
