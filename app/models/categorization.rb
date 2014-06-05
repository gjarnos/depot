class Categorization < ActiveRecord::Base
	belongs_to :product
	belongs_to :clothing_size

	accepts_nested_attributes_for :clothing_size
end