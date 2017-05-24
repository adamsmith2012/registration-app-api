class Student < ApplicationRecord
  has_secure_password
  has_many :schedules
  has_many :courses, through: :schedules
end
