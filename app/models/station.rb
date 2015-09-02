class Station < ActiveRecord::Base
	belongs_to :line
	
	extend FriendlyId
	friendly_id :name, use: :scoped, scope: :line
end
