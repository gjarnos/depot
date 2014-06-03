class ChangeSizesTosizes < ActiveRecord::Migration
  def change
  	rename_column :clothing_sizes, :Sizes, :sizes
  end
end
