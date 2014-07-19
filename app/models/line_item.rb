require 'pry'

class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  belongs_to :clothing_size

  #accepts_nested_attributes_for :categorizations
  accepts_nested_attributes_for :clothing_size

  def total_price
    product.price * quantity
  end
end
