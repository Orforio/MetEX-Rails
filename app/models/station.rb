class Station < ActiveRecord::Base
	belongs_to :line
	has_and_belongs_to_many :movements
	
	extend FriendlyId
	friendly_id :name, use: :scoped, scope: :line
end
