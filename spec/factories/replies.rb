# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reply do
    objectId "MyString"
    child_post_id "MyString"
    createdAt "2016-02-16"
    parent_post_id "MyString"
    updatedAt "2016-02-16"
  end
end
