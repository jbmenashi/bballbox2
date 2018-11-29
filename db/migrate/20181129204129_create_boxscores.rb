class CreateBoxscores < ActiveRecord::Migration[5.2]
  def change
    create_table :boxscores do |t|
      t.integer :points
      t.integer :rebounds
      t.integer :assists
      t.references :player, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
