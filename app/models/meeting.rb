class Meeting < ApplicationRecord
  belongs_to :building
  belongs_to :course
end
