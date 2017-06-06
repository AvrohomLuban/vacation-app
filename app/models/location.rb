class Location < ApplicationRecord

  has_many :note_locations
  has_many :notes, through: :note_locations

end
