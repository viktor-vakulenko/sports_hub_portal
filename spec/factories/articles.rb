FactoryBot.define do
  factory :article do
    caption { Faker::Lorem.unique.sentence }
    title { Faker::Lorem.unique.sentence }
    content { Faker::Lorem.paragraphs(number: 4) }
  end
end
