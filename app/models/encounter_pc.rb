class EncounterPc < ApplicationRecord
  belongs_to :encounter
  belongs_to :player_character
end
