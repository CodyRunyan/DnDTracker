class RemoveMonsterPlayerCharacterFromEncounters < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :encounters, :monster, foreign_key: true
    remove_reference :encounters, :player_character, foreign_key: true
  end
end
