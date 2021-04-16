require 'rails_helper'

RSpec.describe Api::V1::TasksController, '#show' do

    let(:user) { create(:user)}
    let(:task) { create(:task, user: user)}

    context "When task exist" do
      
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


end

