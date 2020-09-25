class AddDaysGenresAndColumnsToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :days, :string
    add_column :shows, :genres, :string
    add_column :shows, :seasons, :string
  end
end
