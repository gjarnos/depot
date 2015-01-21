class CreateClothingColors < ActiveRecord::Migration
  def change
    create_table :clothing_colors do |t|
      t.string :shirt_color
      t.timestamps
    end
  end
end
