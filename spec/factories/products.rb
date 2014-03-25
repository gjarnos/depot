FactoryGirl.define do
  factory :product do
    title 'MyString12'
    description 'MyText'
    image_url 'MyString.jpg'
    price '9.99'
    #sequence(:email) {|n| "nstark@winterfell.com" }
    #password              'Winter_Is_Coming'
    #password_confirmation 'Winter_Is_Coming'
    #password_digest  BCrypt::Password.create('secret') 
    #name                  'Eddard Stark'
  end
end