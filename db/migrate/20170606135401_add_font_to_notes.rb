class AddFontToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :bodyfont, :string
  end
end
