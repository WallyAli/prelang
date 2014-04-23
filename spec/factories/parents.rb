# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parent do
    first_name "MyString"
    last_name "MyString"
    case_number "MyText"
    address "MyText"
    city "MyText"
    state "MyText"
    zipcode "MyString"
    email "MyString"
    phone "MyString"
  end
end
