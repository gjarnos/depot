class ChangeImgurl2ToImageurl < ActiveRecord::Migration
  def change
  	rename_column :products, :img_url2, :image_url2
  end
end
