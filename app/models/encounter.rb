class Encounter < ApplicationRecord
	has_many :monsters
	has_many :player_characters
end
