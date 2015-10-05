class Admin::LinesController < AdminController
	before_action :set_line, only: [:show, :edit, :update, :destroy]
	
	# GET /lines/1
	def show
	end

	# GET /lines/new
	def new
		@line = Line.new
	end

	# GET /lines/1/edit
	def edit
	end

	# POST /lines
	def create
		@line = Line.new(line_params)

		if @line.save
			redirect_to @line, notice: 'Line was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /lines/1
	def update
		if @line.update(line_params)
			redirect_to @line, notice: 'Line was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /lines/1
	def destroy
		@line.destroy
		redirect_to lines_url, notice: 'Line was successfully destroyed.'
	end
	
	private
		# Use callbacks to share common setup or constraints between actions.
		def set_line
			@line = Line.friendly.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def line_params
			params.require(:line).permit(:name, :description, :active, :slug)
		end
end
