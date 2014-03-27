FactoryGirl.define do
  factory :user do
  	factory :u1 do
      name                  'Eddard Stark'
      password              'Winter_Is_Coming'
      password_confirmation 'Winter_Is_Coming'
    end
  end
end