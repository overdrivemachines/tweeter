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
require 'rails_helper'

RSpec.describe User, type: :model do
  it "returns the full_name for a user" do
    user = FactoryBot.create(:user)

    expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
  end

  it "does not allow users to have the same usernames" do
    user = FactoryBot.create(:user)
    user3 = FactoryBot.build(:user3, username: user.username)

    expect(user3).not_to be_valid
    expect(user3.errors[:username]).to include("has already been taken")
  end
end
