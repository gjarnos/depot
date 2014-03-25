FactoryGirl.define do
  factory :user do
    #sequence(:email) {|n| "nstark@winterfell.com" }
    #password              'Winter_Is_Coming'
    #password_confirmation 'Winter_Is_Coming'
    #BCrypt::Password.create('secret')
    password_digest        'secret'
    name                  'Eddard Stark'
  end
end