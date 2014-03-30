class Order < ActiveRecord::Base
  #attr_accessor :credit_card_number, :credit_card_security_code, :credit_card_expiration

  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  has_many :line_items, dependent: :destroy
  # ...
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def process_and_save
    save
  end
end
