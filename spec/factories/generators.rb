FactoryGirl.define do
  sequence :email do |n|
    "#{('a'..'z').to_a.shuffle.join[0..6]}#{n}@example.com"
  end
end
