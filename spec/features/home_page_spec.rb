require 'rails_helper'
require 'factory_bot_rails'

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit projects_path
    expect(page).to have_text("Projects")
  end
end
