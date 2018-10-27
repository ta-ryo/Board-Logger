class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :wave
      t.string :position
      t.string :image
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
