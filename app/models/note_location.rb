class NoteLocation < ApplicationRecord

  belongs_to :note
  belongs_to :location

end
