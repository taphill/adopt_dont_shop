FactoryBot.define do
  factory :veterinarian do
    name {`#{Faker::Name.first_name} #{Faker::Name.last_name}`}
    review_rating { Faker::Number.within(range: 1..5) }
    on_call { Faker::Boolean.boolean }
    association :veterinary_office
  end
end
