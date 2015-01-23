class AddImageToCategorization < ActiveRecord::Migration
  def change
  	add_column :categorizations, :clothing_image_id, :integer
  end
end
