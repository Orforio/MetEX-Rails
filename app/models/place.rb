class Place < ActiveRecord::Base
	has_many :images, as: :imageable
	has_and_belongs_to_many :stations
end
