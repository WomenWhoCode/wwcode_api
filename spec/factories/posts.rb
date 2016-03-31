# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    awesome_count 1
    description "MyString"
    event_id 1
    feature_id 1
    photo "MyString"
    user_id 1
    createdAt "2016-02-19"
    updatedAt "2016-02-19"
  end
end
