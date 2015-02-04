require 'pry'

class Categorization < ActiveRecord::Base
  belongs_to :product
  belongs_to :clothing_size
  belongs_to :clothing_color
  belongs_to :shirt_image_front, :class_name => "ClothingImage", :foreign_key => "shirt_image_front_id"
  belongs_to :shirt_image_back, :class_name => "ClothingImage", :foreign_key => "shirt_image_back_id"

end
