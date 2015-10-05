class Admin::InterchangesController < AdminController
	before_action :set_interchange, only: [:show, :edit, :update, :destroy]

	# GET /interchanges
	def index
		@interchanges = Interchange.all
	end

	# GET /interchanges/1
	def show
	end

	# GET /interchanges/new
	def new
		@interchange = Interchange.new
	end

	# GET /interchanges/1/edit
	def edit
	end

	# POST /interchanges
	def create
		@interchange = Interchange.new(interchange_params)

		if @interchange.save
			redirect_to @interchange, notice: 'Interchange was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /interchanges/1
	def update
		if @interchange.update(interchange_params)
			redirect_to @interchange, notice: 'Interchange was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /interchanges/1
	def destroy
		@interchange.destroy
		redirect_to interchanges_url, notice: 'Interchange was successfully destroyed.'
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_interchange
			@interchange = Interchange.friendly.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def interchange_params
			params.require(:interchange).permit(:name)
		end
end
