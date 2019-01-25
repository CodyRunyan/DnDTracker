class CreateCombats < ActiveRecord::Migration[5.1]
  def change
    create_table :combats do |t|
      t.references :monster, foreign_key: true
      t.references :player_character, foreign_key: true
      t.belongs_to :encounter, foreign_key: true

      t.timestamps
    end
  end
end
