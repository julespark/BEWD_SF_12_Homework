class Movie < ActiveRecord::Migration
  def change
  	rename_column :movies, :year, :year_released
  end
end
