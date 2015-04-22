require 'rails_helper'

RSpec.describe 'user logs in' do
  context 'with valid params' do
    it 'shows user dashboard' do
      User.create(first_name: "Jant",
                  last_name: "Prancly",
                  username:"jprancly",
                  password: "password",
                  password_confirmation: "password")
      visit login_path
      fill_in "session[username]", with:"jprancly"
      fill_in "session[password]", with: "password"
      click_link_or_button "Login"
      expect(page).to have_content("Jant")
      click_link_or_button "Logout"
      expect(page).to have_content("Successfully logged out")
    end
  end
end
