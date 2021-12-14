FactoryBot.define do
  factory :shelter do
    name { Faker::Lorem.word }
    city { Faker::Address.city }
    rank { Faker::Number.within(range: 1..10) }
    foster_program { true }
  end
end
