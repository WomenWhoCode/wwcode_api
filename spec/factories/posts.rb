# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    objectId "MyString"
    awesome_account 1
    description "MyString"
    eventId "MyString"
    featureId "MyString"
    photo "MyString"
    userId "MyString"
    createdAt "2016-02-19"
    updatedAt "2016-02-19"
  end
end
