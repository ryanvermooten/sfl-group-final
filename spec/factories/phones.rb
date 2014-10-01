# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    phone_id 1
    name "MyString"
    number 1
    condition "MyString"
    comment "MyString"
  end
end
