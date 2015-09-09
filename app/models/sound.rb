class Sound < ActiveRecord::Base
	belongs_to :soundable, polymorphic: true
end
