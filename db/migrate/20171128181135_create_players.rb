class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :image_url
      t.integer :team_id, default: 1
      t.timestamps
    end
  end
end
