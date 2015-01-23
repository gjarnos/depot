class CreateClothingSizes < ActiveRecord::Migration
  def change
    create_table :clothing_sizes do |t|
      t.string :shirt_size
    end
  end
end
