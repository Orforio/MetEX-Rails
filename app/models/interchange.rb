class Interchange < ActiveRecord::Base
	has_many :stations, -> { includes(:line).order('lines.order') }
	
	validates :name, presence: true, uniqueness: true
	
	extend FriendlyId
	friendly_id :name, use: :slugged
end
