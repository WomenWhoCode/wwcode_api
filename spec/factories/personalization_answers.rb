# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personalization_answer do
    objectId "MyString"
    question "MyString"
    detail "MyString"
    createdAt "2016-02-12"
    updatedAt "2016-02-12"
  end
end
