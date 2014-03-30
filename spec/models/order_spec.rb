require 'spec_helper'

describe Order do
  describe 'process_and_save' do
  	context 'with a valid credit card response' do
    	it 'calls save' do
    	  order = Order.new
    	  expect(order).to receive(:save)
    	  order.process_and_save
    	end
    end

    it 'makes a credit card request' do
      
    end
  end
end