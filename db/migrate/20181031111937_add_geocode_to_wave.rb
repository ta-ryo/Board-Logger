class AddGeocodeToWave < ActiveRecord::Migration[5.2]
  def change
    add_column :waves, :address, :string
    add_column :waves, :latitude, :float
    add_column :waves, :longitude, :float
  end
end
