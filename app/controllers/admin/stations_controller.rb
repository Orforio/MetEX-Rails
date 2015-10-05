class Admin::StationsController < AdminController
	before_action :set_line, except: [:new, :create]
	before_action :set_station, only: [:edit, :update, :destroy]
	
	# GET /stations/new
	def new
		@station = Station.new
	end

	# GET /stations/1/edit
	def edit
	end

	# POST /stations
	def create
		@station = Station.new(station_params)

		if @station.save
			redirect_to @station, notice: 'Station was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /stations/1
	def update
		if @station.update(station_params)
			redirect_to @station, notice: 'Station was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /stations/1
	def destroy
		@station.destroy
		redirect_to stations_url, notice: 'Station was successfully destroyed.'
	end

	private
		# Get Line first due to nested routing
		def set_line
			@line = Line.friendly.find(params[:line_id])
		end

		def set_station
			@station = @line.stations.friendly.find(params[:id])
		end
		
		def set_connections
			@connections = Interchange.find(@station.interchange.id).stations.where.not(id: @station)
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def station_params
			params.require(:station).permit(:name, :line_id, :description, :active, :slug)
		end
end
