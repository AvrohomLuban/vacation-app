class Note < ApplicationRecord
  has_many :images
  has_many :comments

  has_many :note_locations
  has_many :locations, through: :note_locations
end
