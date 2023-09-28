# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  admin                  :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
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
