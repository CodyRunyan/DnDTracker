class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :ac
      t.string :hp
      t.string :speed
      t.text :image_data

      t.timestamps
    end
  end
end
