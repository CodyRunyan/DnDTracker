class EncounterMonsterInstance < ApplicationRecord
  belongs_to :encounter
  belongs_to :monster_instance
end
