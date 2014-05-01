class AddImgurl2ToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :img_url2, :string
  end
end
