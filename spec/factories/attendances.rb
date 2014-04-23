# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendance do
    date "MyString"
    time_in "2014-04-23 23:08:00"
    time_out "2014-04-23 23:08:00"
    child nil
  end
end
