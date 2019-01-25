class CreateEncounterMonsterInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_monster_instances do |t|
      t.references :encounter, foreign_key: true
      t.references :monster_instance, foreign_key: true

      t.timestamps
    end
  end
end
