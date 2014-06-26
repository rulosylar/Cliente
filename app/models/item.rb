class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	# scope :valid, where ...
end