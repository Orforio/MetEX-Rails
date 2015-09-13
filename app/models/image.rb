class Image < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true
	
	validates :filename, :title, :alt, :imageable, presence: true
	validates :filename, format: { with: /[\w\/-]+\.jpg\z/, message: "must end in .jpg" }
	
	def url
		"http://metexv2.sblorgh.org/media/images/stations/#{filename}"
	end
end
