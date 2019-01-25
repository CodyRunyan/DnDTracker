class CreateEncounterPcs < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_pcs do |t|
      t.references :encounter, foreign_key: true
      t.references :player_character, foreign_key: true

      t.timestamps
    end
  end
end
