class Child < ActiveRecord::Base
  belongs_to :parent
  has_many :attendances
  has_and_belongs_to_many :schedules
end
