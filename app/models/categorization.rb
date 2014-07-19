require 'pry'

class Categorization < ActiveRecord::Base
  belongs_to :product#, :inverse_of => :categorizations
  belongs_to :clothing_size#, :inverse_of => :categorizations

  #accepts_nested_attributes_for :clothing_size

  #attr_accessor :clothing_size_attributes
end
