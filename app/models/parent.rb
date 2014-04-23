class Parent < ActiveRecord::Base
  has_many :children
  validates_formatting_of :zipcode, using: :us_zip
  validates_formatting_of :phone, using: :us_phone
end
