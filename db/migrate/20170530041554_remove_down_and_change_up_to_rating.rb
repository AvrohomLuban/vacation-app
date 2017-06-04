class RemoveDownAndChangeUpToRating < ActiveRecord::Migration[5.0]
  def change
    remove_column :notes, :down, :integer
    rename_column :notes, :up, :rating
  end
end
