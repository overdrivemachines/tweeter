# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  first_name             :string
#  last_name              :string
#  admin                  :boolean          default(FALSE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
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
