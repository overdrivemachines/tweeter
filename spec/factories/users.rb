FactoryBot.define do
  factory :user do
    username { "user1" }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :user2, class: User do
    username { "user2" }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :user3, class: User do
    username { "user1" }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end
