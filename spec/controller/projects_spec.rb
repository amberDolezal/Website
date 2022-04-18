require "rails_helper"
require 'factory_bot_rails'

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      bob = create(:user)
      sign_in bob
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      bob = create(:user)
      sign_in bob
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end

