class Admin::MovementsController < AdminController
	before_action :set_movement, only: [:show, :edit, :update, :destroy]

	# GET /movements
	def index
		@movements = Movement.all
	end

	# GET /movements/1
	def show
	end

	# GET /movements/new
	def new
		@movement = Movement.new
	end

	# GET /movements/1/edit
	def edit
	end

	# POST /movements
	def create
		@movement = Movement.new(movement_params)

		if @movement.save
			redirect_to @movement, notice: 'Movement was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /movements/1
	def update
		if @movement.update(movement_params)
			redirect_to @movement, notice: 'Movement was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /movements/1
	def destroy
		@movement.destroy
		redirect_to movements_url, notice: 'Movement was successfully destroyed.'
	end

	private
		# Use callbacks to share common setup or constraints between actions.		
		def set_movement
			@movement = Movement.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def movement_params
			params.require(:movement).permit(:up_station_id, :down_station_id, :up_allowed, :down_allowed, :length)
		end
end
