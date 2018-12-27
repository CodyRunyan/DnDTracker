class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :ac
      t.string :hp
      t.string :speed
      t.string :image

      t.timestamps
    end
  end
end
