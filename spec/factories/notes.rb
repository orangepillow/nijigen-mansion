
FactoryGirl.define do
  factory :note do
    title Faker::Address.street_name
    sequence(:room_id) { |n| n }
  end
end
