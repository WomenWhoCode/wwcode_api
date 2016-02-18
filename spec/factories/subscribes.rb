# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscribe do
    objectId "MyString"
    event_id 1
    feature_id 1
    network_id 1
    subscribed false
    user_id 1
    createdAt "2016-02-15"
    updatedAt "2016-02-15"
  end
end
