# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :child do
    first_name "MyString"
    last_name "MyString"
    birthday "MyString"
    gender "MyString"
    parent nil
  end
end
