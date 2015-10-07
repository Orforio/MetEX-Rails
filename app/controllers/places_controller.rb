class PlacesController < ApplicationController
	before_action :set_place, only: :show

	# GET /places
	def index
		@places = Place.all
	end

	# GET /places/1
	def show
	end

	private
		def set_place
			@place = Place.friendly.find(params[:slug])
		end
end
