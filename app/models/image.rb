class Image < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true
	
	validates :filename, :title, :alt, :imageable, presence: true
	validates :filename, format: { with: /[\w\/-]+\.jpg\z/, message: "must end in .jpg" }
	
	def url
		"#{Rails.application.config.asset_server}/#{Rails.application.config.asset_image_path}/stations/#{filename}"
	end
end
