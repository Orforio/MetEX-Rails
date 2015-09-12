class Station < ActiveRecord::Base
	belongs_to :line
	belongs_to :interchange
	has_one :sound, as: :soundable
	has_many :images, as: :imageable
	has_many :up_movements, class_name: 'Movement', foreign_key: 'down_station_id', inverse_of: :down_station
	has_many :down_movements, class_name: 'Movement', foreign_key: 'up_station_id', inverse_of: :up_station
	has_and_belongs_to_many :movements
	has_and_belongs_to_many :places
	
	validates :name, :line, presence: true
	validates :name, uniqueness: { scope: :line }
	
	default_scope { where(active: true) }
	
	extend FriendlyId
	friendly_id :name, use: :scoped, scope: :line
end
