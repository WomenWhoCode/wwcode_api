# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_access_code do
    objectId "MyString"
    email "MyString"
    token "MyString"
    createdAt "2016-02-18"
    updatedAt "2016-02-18"
  end
end
