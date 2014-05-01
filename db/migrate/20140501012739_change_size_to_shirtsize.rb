class ChangeSizeToShirtsize < ActiveRecord::Migration
  def change
  	rename_column :products, :size, :shirtsize
  end
end
