class CreatePlayerCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :player_characters do |t|
      t.string :character_name
      t.string :player_name
      t.string :ac
      t.integer :hp
      t.text :image_data

      t.timestamps
    end
  end
end
