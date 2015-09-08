class Line < ActiveRecord::Base
	has_many :stations
	
	default_scope { where(active: true) }
	
	extend FriendlyId
	friendly_id :name, use: :slugged
end
