class Line < ActiveRecord::Base
	has_many :stations
	
	validates :name, presence: true, uniqueness: true, length: { maximum: 5 }
	
	default_scope { where(active: true).order(:order) }
	
	extend FriendlyId
	friendly_id :name, use: :slugged
	
	def name_components
		{ number: name[/^(\d+)/, 1], suffix: name[/\d+([a-z]+)$/, 1] }
	end
end
