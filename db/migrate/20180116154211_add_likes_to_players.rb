class AddLikesToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :likes, :integer, default: 0
  end
end
