class Track < ActiveRecord::Base
  belongs_to :station_id
  belongs_to :movement_id
end
