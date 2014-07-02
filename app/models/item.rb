class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	# scope :valid, where ...
	scope :valid, -> { where(image: true)}
	scope :read, ->{ where(flag: "leido")}
	scope :unread, ->{ where('flag != "noleido"')}
end 