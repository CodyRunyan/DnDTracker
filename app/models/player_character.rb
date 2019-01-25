class PlayerCharacter < ApplicationRecord
	has_many :encounter_pcs
	has_many :encounters, through: :encounter_pcs

	validates_presence_of :character_name, :player_name

	before_destroy :ensure_not_referenced_by_any_encounter

	include ImageUploader::Attachment.new(:image)

	private

	def ensure_not_referenced_by_any_encounter
		if encounters.present?
			errors.add(:base, 'Encounter present')
			throw :abort
		end
	end
end
