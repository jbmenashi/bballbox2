class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :date
      t.string :opponent
      t.boolean :home

      t.timestamps
    end
  end
end
