class AddDaysGenresAndColumnsToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :days, :string
  end
end
