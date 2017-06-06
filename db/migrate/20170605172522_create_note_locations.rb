class CreateNoteLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :note_locations do |t|
      t.integer :note_id
      t.integer :location_id

      t.timestamps
    end
  end
end
