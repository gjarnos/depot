class ChangeSizesToShirtSize < ActiveRecord::Migration
  def change
  	rename_column :clothing_sizes, :sizes, :shirt_size
  end
end
