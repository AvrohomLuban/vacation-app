class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :season
      t.string :length
      t.string :location
      t.string :text

      t.timestamps
    end
  end
end
