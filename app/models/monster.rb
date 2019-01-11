class Monster < ApplicationRecord
	belongs_to :encounters

	before_destroy :ensure_not_referenced_by_any_encounter

	include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute

	private

	def ensure_not_referenced_by_any_encounter
		if encounters.present?
			errors.add(:base, 'Encounter present')
			throw :abort
		end
	end
end
