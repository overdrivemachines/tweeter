FactoryBot.define do
  factory :tweet do
    body { Faker::Lorem.sentence(word_count: 7) }
    user { FactoryBot.create(:user) }
  end
end
