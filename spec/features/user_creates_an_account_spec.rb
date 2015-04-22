require 'rails_helper'

RSpec.describe "user account creation" do
  context "with valid attributes" do
    it "creates a new account" do
      visit new_user_path
      fill_in "First name", with: "Fakeuser"
      fill_in "Last name", with: "Lastname"
      fill_in "Username", with: "flastname"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_link_or_button "submit"

      expect(page).to have_content("Fakeuser")
    end
  end
end
