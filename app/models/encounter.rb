class Encounter < ApplicationRecord
	has_many :monsters, dependent: :destroy
	has_many :player_characters, dependent: :destroy
end
