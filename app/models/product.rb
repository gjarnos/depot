class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items

  has_many :categorizations#, inverse_of: :product
  has_many :clothing_sizes, through: :categorizations

  accepts_nested_attributes_for :categorizations
  accepts_nested_attributes_for :clothing_sizes

  #attr_accessor :name, :clothing_size_id

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates :title, uniqueness: true
  validates :image_url, :image_url2, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :title, length: {minimum: 10}

  def self.latest
    Product.order(:updated_at).last
  end

  def subtract_quantity
  end
  
  private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end