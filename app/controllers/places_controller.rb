class PlacesController < ApplicationController
	before_action :set_place, only: :show

	# GET /places/1
	# GET /places/1.json
	def show
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_place
			@place = Place.friendly.find(params[:slug])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def place_params
			params.require(:place).permit(:name, :description)
		end
end
