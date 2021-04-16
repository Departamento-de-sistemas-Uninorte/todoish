require 'rails_helper'

RSpec.describe Api::V1::TasksController, '#show' do

  context "When task exist" do
    let(:user) { create(:user)}
    let(:task) { create(:task, user: user)}

    before do 
      get :show, params: { id: task.id}
    end
    
    it "Should return HTTP success code" do
      expect(response).to have_http_status(:success)
    end

    it "Should return Task in JSON body" do
      json_response = JSON.parse(response.body)
      expect(json_response.keys).to match_array(["id", "title", "description", "user_id", "created_at", "updated_at"])
    end
  end

  context "When task does not exist" do

    before do 
      get :show, params: { id: 87587}
    end
    
    it "Should return HTTP success code" do
      json_response = JSON.parse(response.body)
      expect(json_response["status"]).to match(404)
    end

    it "Should return Task in JSON body" do
      json_response = JSON.parse(response.body)
      expect(json_response["error"]).to match("Task not found")
    end
  end
end

