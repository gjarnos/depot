class RemoveImageurlFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :image_url, :string
  	remove_column :products, :image_url2, :string
  end
end
