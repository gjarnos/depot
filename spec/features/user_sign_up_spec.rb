require 'spec_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'user_signup_and_checkout' do
  DatabaseCleaner.clean
  u1 = FactoryGirl.create(:u1)
  p1 = FactoryGirl.create(:p1)
  p2 = FactoryGirl.create(:p2)
  before { visit root_path }
  it 'creates a new user and logs them in' do
    click_on 'STORE'
    expect(page).to have_content 'STORE'
    within ".store" do
      click_on("Add to Cart", :match => :first)
    end
    click_on('Checkout')
    click_on('Register')
    fill_in "Name", with: "Tyrion Lannister"
    fill_in "Password", with: "Always payes his debts"
    fill_in "Confirm", with: "Always payes his debts"
    click_on('Create User')
    expect(page).to have_content 'Checkout'
    fill_in "Name", with: "Samwell Tarly"
    fill_in "Address", with: "1 Kingsroad Way, Tower Black, The Wall"
    fill_in "Email", with: "fatass@tubbylane.com"
    select "Credit card", from: "order_pay_type"
    fill_in "Credit card number", with: "1111222233334444"
    fill_in "Credit card security code", with: "123"
    fill_in "Credit card expiration", with: "05/16"

    click_on "Place Order"
    binding.pry
    #fill_in "Name", with: "Tyrion Lannister"
    #fill_in "Password", with: "Always payes his dets"
    #fill_in "Confirm", with: "Always payes his dets"


    #take this assertion out later
    #expect{ click_on "Create User" }.to change{ User.count }.by(1)


    #worry about session shit in a moment
   #binding.pry 

    #expect(page).to have_content('Shop') 
  end
end
