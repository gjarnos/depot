class CreateCategorization < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
    	t.integer :product_id
    	t.integer :clothing_size_id
    	t.timestamps
    end
  end
end
