require 'pry'

class Categorization < ActiveRecord::Base
  belongs_to :product
  belongs_to :clothing_size
end
