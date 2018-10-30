class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :point
      t.string :information

      t.timestamps
    end
  end
end
