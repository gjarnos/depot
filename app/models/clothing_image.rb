require 'pry'

class ClothingImage < ActiveRecord::Base
  
  has_many :products, through: :categorizations
  #has_many :front_images, :foreign_key => "shirt_image_front_id", :class_name => "Categorization"
  #has_many :back_images, :foreign_key => "shirt_image_back_id", :class_name => "Categorization"
  has_many :categorizations
  validates :image_title, uniqueness: true
end