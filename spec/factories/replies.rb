# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reply do
    child_post_id "MyChildPostId"
    createdAt "2016-02-16"
    parent_post_id "MyParentPostId"
    updatedAt "2016-02-16"
    post
  end
end
