class Place < ActiveRecord::Base
	has_many :images, as: :imageable
	has_and_belongs_to_many :stations
	
	validates :name, :description, :stations, presence: true
	validates :name, uniqueness: true
end
