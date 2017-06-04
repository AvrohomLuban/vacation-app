class AddVoteToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :up, :integer
    add_column :notes, :down, :integer
    add_column :notes, :posted_live, :boolean
  end
end
