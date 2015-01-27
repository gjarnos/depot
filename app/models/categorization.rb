require 'pry'

class Categorization < ActiveRecord::Base
  belongs_to :product
  belongs_to :clothing_size
  belongs_to :clothing_color
end
