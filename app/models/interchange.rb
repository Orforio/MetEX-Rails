class Interchange < ActiveRecord::Base
	has_many :stations
	
	validates :name, presence: true, uniqueness: true
	
	extend FriendlyId
	friendly_id :name, use: :slugged
end
