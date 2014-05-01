# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    author { Faker::Name.first_name }
    content { Faker::Lorem.paragraph }
    sequence(:note_id) { |n| n }
  end
end
