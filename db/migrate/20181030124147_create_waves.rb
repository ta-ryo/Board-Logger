class CreateWaves < ActiveRecord::Migration[5.2]
  def change
    create_table :waves do |t|
      t.string :status
      t.string :comment
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
