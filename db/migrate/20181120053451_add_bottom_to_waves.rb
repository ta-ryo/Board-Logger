class AddBottomToWaves < ActiveRecord::Migration[5.2]
  def change
    add_column :waves, :bottom, :string
  end
end
