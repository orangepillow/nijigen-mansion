
FactoryGirl.define do
  factory :room do
    name { Faker::Address.street_name }
  end
end
