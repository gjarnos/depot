require 'pry'

class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  
  attr_accessor :stripe_card_token

  attr_writer :stripe_card_token

  def stripe_card_token=(blah)
    @stripe_card_token=blah
  end

  attr_reader :stripe_card_token

  def stripe_card_token
    @stripe_card_token
  end

  validates :name, :address, :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def total_price
    line_items.collect{|x| x.total_price}.inject(:+) + Constants::SHIPPING_COSTS
  end

  def process_and_save
    if valid?
      charge = Stripe::Charge.create(description: email, amount: (total_price * 100).to_i, card: stripe_card_token, currency: 'usd')
      self.stripe_charge_token = charge.id
      save!
    end

  rescue Stripe::InvalidRequestError => e
    logger.error "Stripe error while creating customer: #{e.message}"
    errors.add :base, "There was a problem with your credit card."
    false
  end
end
