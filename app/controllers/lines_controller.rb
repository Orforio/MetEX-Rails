class LinesController < ApplicationController
	# GET /lines
	def index
		@lines = Line.all
	end
end
