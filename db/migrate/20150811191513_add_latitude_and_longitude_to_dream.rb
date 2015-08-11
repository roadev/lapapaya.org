class AddLatitudeAndLongitudeToDream < ActiveRecord::Migration
  def change
    add_column :dreams, :latitude, :float
    add_column :dreams, :longitude, :float
  end
end
