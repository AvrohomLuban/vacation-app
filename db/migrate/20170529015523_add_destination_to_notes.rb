class AddDestinationToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :destination, :string
  end
end
