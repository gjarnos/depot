FactoryGirl.define do
  factory :product do
  	factory :p1 do
      title         'MyString12'
      description   'MyText'
      image_url     'MyString.jpg'
      price         '9.99'
      quantity      '1'
    end
    factory :p2 do
      title         'MyString13'
      description   'MyText12'
      image_url     'MyString.jpg'
      price         '10.99'
      quantity      '1'
    end
  end
end