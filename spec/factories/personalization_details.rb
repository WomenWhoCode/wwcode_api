# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personalization_detail do
    answers "MyText"
    user_id 1
    createdAt "2016-03-01"
    updatedAt "2016-03-01"
  end
end
