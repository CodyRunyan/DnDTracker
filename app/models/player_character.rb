class PlayerCharacter < ApplicationRecord
	include ImageUploader::Attachment.new(:image)
end
