class CreateMiddles < ActiveRecord::Migration[5.2]
  def change
    create_table :middles do |t|
      t.integer :board_id
      t.integer :relationship_id

      t.timestamps
    end
  end
end
