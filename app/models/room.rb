class Room < ApplicationRecord
  belongs_to :building
  has_many :meetings
end
