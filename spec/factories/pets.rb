FactoryBot.define do
  factory :pet do
    name { Faker::Creature::Dog.name }
    age { Faker::Number.within(range: 1..20) }
    breed { Faker::Creature::Dog.breed }
    association :shelter
  end
end
