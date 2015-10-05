class Admin::SoundsController < AdminController
	before_action :set_sound, only: [:show, :edit, :update, :destroy]

	# GET /sounds
	def index
		@sounds = Sound.all
	end

	# GET /sounds/1
	def show
	end

	# GET /sounds/new
	def new
		@sound = Sound.new
	end

	# GET /sounds/1/edit
	def edit
	end

	# POST /sounds
	def create
		@sound = Sound.new(sound_params)

		if @sound.save
			redirect_to @sound, notice: 'Sound was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /sounds/1
	def update
		if @sound.update(sound_params)
			redirect_to @sound, notice: 'Sound was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /sounds/1
	def destroy
		@sound.destroy
		redirect_to sounds_url, notice: 'Sound was successfully destroyed.'
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_sound
			@sound = Sound.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def sound_params
			params.require(:sound).permit(:filename, :title, :length, :soundable)
		end
end
