require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){
    User.new(first_name: "Greg", last_name: "Zandis", username:"gzandis", password: "password", password_confirmation: "password")
  }

  it 'is not valid without a first name' do
      user.first_name = nil
      expect(user).not_to be_valid
  end

  it 'is not valid without a last name' do
      user.last_name = nil
      expect(user).not_to be_valid
  end

  it 'is not valid without a username' do
      user.username = nil
      expect(user).not_to be_valid
  end

  it 'is not valid without a password' do
      user.password = nil
      expect(user).not_to be_valid
  end

  it 'is not valid without a password confirmation' do
      user.password_confirmation = nil
      expect(user).not_to be_valid
  end
end
