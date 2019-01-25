class RemoveSpeedFromMonsters < ActiveRecord::Migration[5.1]
  def change
    remove_column :monsters, :speed, :string
  end
end
