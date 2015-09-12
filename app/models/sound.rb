class Sound < ActiveRecord::Base
	belongs_to :soundable, polymorphic: true
	
	validates :filename, :title, :length, :soundable, presence: true
	validates :filename, uniqueness: true, format: { with: /[\w\/]+\.mp3\z/, message: "must end in .mp3" }
	validates :length, numericality: { only_integer: true }
	
	def url
		"http://metexv2.sblorgh.org/media/audio/#{filename}"
	end
end
