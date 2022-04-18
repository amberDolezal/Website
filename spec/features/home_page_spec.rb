require 'rails_helper'
require 'factory_bot_rails'

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit projects_path

    bob = create(:user)

    within("form") do
      fill_in "Email", with: bob.email
      fill_in "Password", with: bob.password
    end

    click_button "Log in"
    expect(page).to have_text("Projects")
  end
end
