class Encounter < ApplicationRecord
	has_many :encounter_monster_instances
	has_many :encounter_pcs
	has_many :monster_instances, through: :encounter_monster_instances
	has_many :player_characters, through: :encounter_pcs

	validates_presence_of :title, :description
end
