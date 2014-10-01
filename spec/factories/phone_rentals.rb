# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone_rental do
    phone_id 1
    user_id 1
    data 1
    charger false
  end
end
