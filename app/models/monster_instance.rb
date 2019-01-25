class MonsterInstance < ApplicationRecord
  belongs_to :monster
  has_many :encounter_monster_instances
  has_many :encounters, through: :encounter_monster_instances
end
