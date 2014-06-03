class CreateClothingSizes < ActiveRecord::Migration
  def change
    create_table :clothing_sizes do |t|
      t.string :Sizes
    end
  end
end
