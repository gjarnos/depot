require 'spec_helper'

describe 'user_signup' do
  before { visit root_path }
  it 'creates a new user and logs them in' do
    click_on 'Sign Up'
    expect(page).to have_content "Welcome To The Sign Up Page"
    fill_in "Name", with: "Tyrion Lannister"
    fill_in "Password", with: "Always payes his dets"
    fill_in "Confirm", with: "Always payes his dets"


    #take this assertion out later
    expect{ click_on "Create User" }.to change{ User.count }.by(1)


    #worry about session shit in a moment
    binding.pry 

    expect(page).to have_content('Shop') 
  end
end