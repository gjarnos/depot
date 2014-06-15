class ClothingSize < ActiveRecord::Base
  has_many :categorizations#, inverse_of: :clothing_size
  has_many :products, through: :categorizations

  accepts_nested_attributes_for :categorizations
  accepts_nested_attributes_for :products
end