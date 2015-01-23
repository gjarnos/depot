class ChangeSizesTosizes < ActiveRecord::Migration
  def change
  	rename_column :clothing_sizes, :shirt_size, :shirt_size
  end
end
