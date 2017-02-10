FactoryGirl.define do
  factory :user do
   first_name { Faker::Name.first_name }
   last_name { Faker::Name.last_name }
   email { generate(:email) } 
   phone_number "0723456789"

   trait :admin do 
     is_admin true
   end 

   trait :confirmed do
     confirmed_at {Time.current} 
   end
  end

end