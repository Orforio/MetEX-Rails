class Place < ActiveRecord::Base
	has_many :images, as: :imageable
	has_and_belongs_to_many :stations, -> { includes(:line).order('lines.order') }
	
	validates :name, :description, :stations, presence: true
	validates :name, uniqueness: true
	
	default_scope { order(name: :asc) }
	
	extend FriendlyId
	friendly_id :name, use: :slugged
end
