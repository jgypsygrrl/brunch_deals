FactoryGirl.define do 
  factory :user do 
    email { Faker::Internet.email}
    password "password"
    password_confirmation "password"
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    dob Date.today
    gender "female"

  end
  
end