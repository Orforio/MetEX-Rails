class Admin::PlacesController < AdminController
	before_action :set_place, only: [:edit, :update, :destroy]

	# GET /places
	def index
		@places = Place.all
	end

	# GET /places/new
	def new
		@place = Place.new
	end

	# GET /places/1/edit
	def edit
	end

	# POST /places
	def create
		@place = Place.new(place_params)

		if @place.save
			redirect_to @place, notice: 'Place was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /places/1
	def update
		if @place.update(place_params)
			redirect_to @place, notice: 'Place was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /places/1
	def destroy
		@place.destroy
		redirect_to places_url, notice: 'Place was successfully destroyed.'
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_place
			@place = Place.friendly.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def place_params
			params.require(:place).permit(:name, :description, :slug)
		end
end
