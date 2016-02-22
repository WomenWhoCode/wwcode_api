# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    objectId "MyString"
    full_name "MyString"
    image_url "MyString"
    job_title "MyString"
    latitude "9.99"
    longitude "9.99"
    network "MyString"
    photo "MyString"
    theme_type 1
    userId 1
    createdAt "2016-02-09 18:45:56"
    updatedAt "2016-02-09 18:45:56"
  end
end
