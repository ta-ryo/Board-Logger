class CreateManners < ActiveRecord::Migration[5.2]
  def change
    create_table :manners do |t|
      t.string :entry
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
