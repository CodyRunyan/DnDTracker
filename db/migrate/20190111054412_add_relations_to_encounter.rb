class AddRelationsToEncounter < ActiveRecord::Migration[5.1]
  def change
    add_reference :encounters, :monster, foreign_key: true
    add_reference :encounters, :playercharacter, foreign_key: true
  end
end
