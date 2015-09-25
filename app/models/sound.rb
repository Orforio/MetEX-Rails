class Sound < ActiveRecord::Base
	belongs_to :soundable, polymorphic: true
	
	validates :filename, :title, :length, :soundable, presence: true
	validates :filename, uniqueness: true, format: { with: /[\w\/]+\.mp3\z/, message: "must end in .mp3" }
	validates :length, numericality: { only_integer: true }
	
	def url
		"#{Rails.application.config.asset_server}/#{Rails.application.config.asset_sound_path}/#{filename}"
	end
end
