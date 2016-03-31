require 'rails_helper'

RSpec.describe "Posts", type: :request do
  let(:content_post) { create(:post,
                              awesome_count: 99,
                              description: "foo",
                              event_id: 88,
                              feature_id: 77,
                              photo: "some photo",
                              user_id: 66,
                             ) }
  let!(:reply) { create(:reply, post_id: content_post.id) }

  context "index" do
    it "response body has post attributes with replies" do
      get '/api/v1/posts'
      result = JSON.parse(response.body)
      expect(result[0]["id"]).to eq content_post.id
      expect(result[0]["awesome_count"]).to eq 99
      expect(result[0]["description"]).to eq "foo"
      expect(result[0]["event_id"]).to eq 88
      expect(result[0]["feature_id"]).to eq 77
      expect(result[0]["photo"]).to eq "some photo"
      expect(result[0]["user_id"]).to eq 66
      expect(result[0]["replies"][0]["id"]).to eq reply.id
      expect(result[0]["replies"][0]["child_post_id"]).to eq "MyChildPostId"
      expect(result[0]["replies"][0]["parent_post_id"]).to eq "MyParentPostId"
    end
  end
end
