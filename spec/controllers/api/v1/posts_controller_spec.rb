require 'rails_helper'

RSpec.describe Api::V1::PostsController, :type => :controller do
  let!(:content_post) { create(:post) }

  describe "GET #index" do
    it "returns http success" do
      get :index, { format: :json }
      expect(response).to have_http_status(:success)
    end

    it "assigns posts" do
      get :index, { format: :json }
      expect(assigns(:posts)).to eq [content_post]
    end
  end
end
