class Course < ApplicationRecord
  belongs_to :department
  belongs_to :instructor
  belongs_to :term
  has_many :meetings
  has_many :rooms, through: :meetings
  has_many :schedules
  has_many :students, through: :schedules
end
